Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D22B40DFA8
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777767454; cv=none; b=NJ16K1GL8m3ob1RmvPnGlxJXbVCAksOOwZIVKkoMoVryR900Q8pjSvNGG3KOLWDlbmdowZM9Y1+zm8c7ba46egfUigRjSoViJPp4E0lLtJf6sWI73NvZw7KTw4u8ndreQJ/IWxBeO3KE/b3b1TpGL7Ls2dagVINUTjwhRELsyTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777767454; c=relaxed/simple;
	bh=6pnGa6UfXvIz9ZNXp9KTNikTAZzxv0Z+NmESJzG0Wao=;
	h=To:Subject:From:Message-Id:Date; b=b4RJOPZ/YjsUfLGnQ49gDeupspYT0zaxh01TdN/lUpDQAsIuos5s7Q1gst6oFb32+p2nyPHj3RKE7WlFuvdF/PBPrNOuCAXZ7HEzyIOQVh8QFgErzOOnGQenNix/Yal86Ge5ZHaAL4ziRn9duKq5CrbyTq9HKfb/J38eLQ16+a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZ6saHGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZ6saHGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F69C19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777767453;
	bh=6pnGa6UfXvIz9ZNXp9KTNikTAZzxv0Z+NmESJzG0Wao=;
	h=To:Subject:From:Date:From;
	b=ZZ6saHGzANwEXuIqZ+zPAZqIfmNIXQ4OrtbxGXaAZ54u149T7Y1ZsIPqhXVVeAmmG
	 SiOQAVGS1o6ShQQBsubui7QBkwbC7anRJvU55xunbkOVI1oGc4QRPkrmSkzB8CVXSt
	 pJN1OAadRtR/JDi2ngwdssLiuXhE50hXegtJE9Z/+zBxJENuFT+wf9hXAzXcGAxXg7
	 6KSE53VPoGCawJqoat2cMlZLaD/wTnXDP/nNLsCOX5nHJho/ZW/CbScravBDc9tAYv
	 lInRkaXtaKixweOijvGCKNYT65Hk2FcYU49xTZJn6ihiCMZwi8+WWSzQ8uchu/6+e4
	 dUhMTjQAITbFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDD7CD13DA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776745368.12969.17674577325443105747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9770ca45abdd99b821b049e229a5248fdb131e7e1b653073cef679f9739e5833
Date: Sun, 03 May 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777767453
