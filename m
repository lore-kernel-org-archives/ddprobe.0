Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765DD183098
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 04:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738989355; cv=none; b=XbTkWdy6DNEYB3bVdtYsVvXBgQX9k1HB6PX+am0BTkGh78U1Uhxi1paraWp4z8MBaZg0Q8sIaPfEd5Zc8V2g8A2as6P8KUIe+cmKMj3MqwPX3MeNWB8X6h7hvllTO5Yspn4wiso/1NsCaHTRH/R0sN/q7XNbbwc/j6oHFi8dCBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738989355; c=relaxed/simple;
	bh=OaaSP1YZGOKzv/VYDHDD81OBBGwoEcWy9CVGeemcTi4=;
	h=To:Subject:From:Message-Id:Date; b=FbnA6L5CjsL7H68/P5VVc1YtF9q/N5ZG3pKTkNlVMkvbXfiUp6P7eExyOMKqfoWn5mxnhreiI1fFMmaerH5eXx+NbK7mBcYeCvldW8MwGVjQGNBwtf+mFmq0PkCzldfbTSky6eJNtd3wo6+W3quNjRxCfd0byQG4CDjyfRniYic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ujah4mK1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ujah4mK1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C0BC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738989353;
	bh=OaaSP1YZGOKzv/VYDHDD81OBBGwoEcWy9CVGeemcTi4=;
	h=To:Subject:From:Date:From;
	b=Ujah4mK1xWQP9IPTpP3qAL06W9qBCAF2BG1dDRpYCBmc/Lm46bKqEaWmSWKs2WipY
	 loJ4OAwvQUWqU/d7YjrzXfTWCN0tvedlB6YyaqGOkAHuDUjceWQyHf/XER7B8T+qR8
	 8kt2X5nAJH/tEskDluzuNHZCKUvzi8NFoIQhdsaWVHI+MxPgKj8ksVAR6RG+Bj6eaX
	 yxlE4IkAuor+eX41rmCaCwGWgZqxfKhkofluCzj0DbzAW8iNJxRcrKMvU0tkoH0Akg
	 62BRas6uCdBfNL+y49WB0QO7raX1l4XBny2pvF/6EONQ2pXaHt5b9Ckq4OALDpAPYp
	 OaHHMru1taWZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D90C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173898935365.27192.13712567964765376543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495527b45edb53bba62279930e30526267515989811ae5811fd76adba239c1cf
Date: Sat, 08 Feb 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738989353
