Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F11F21CC51
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767544434; cv=none; b=AkEGrni7dgz9UT/Z6z4BnM3qzZ4ImpsQt8z+at51F1FN3MFMNFS9wEiT/KfpBmGbxPXNoW6C23vPynO6aJy+EnZ0dwfasjM66JhNDZG1fYHPXgiYhIAYRPEEUEYw+ZpWqqiLfncnXVuHHvRCJVuvAyYzB1TIJeUj9nX9IdQDGPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767544434; c=relaxed/simple;
	bh=DhZymhIClREKfJm/PuOAaHO9IkVJcbxN6pAK6ve0cgU=;
	h=To:Subject:From:Message-Id:Date; b=BBpN7MfX43LaTZ7Pcc85+ltKkd8CEr0CYJWbufWl5zVyLRItnU5if+clQr7cf/ITATqqd7iL1ikBsjPbD8N1tX+lPJY0VYoE1QWXPNHgOr4ER4zPC/saXAtE4X0QUEa9aEi5NAk3y3eFkHjUr0gkBKTNkubJBT7y91CON3Y7oYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xg83mTuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xg83mTuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D6AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767544433;
	bh=DhZymhIClREKfJm/PuOAaHO9IkVJcbxN6pAK6ve0cgU=;
	h=To:Subject:From:Date:From;
	b=Xg83mTuHtMgqfGkq+K0CnNNKs2PmSphpz6RtT0ozTOjKJq0O6Tc9w3PDFtHhT5ZQu
	 wSO1+v4hF9ocayXY8ZyjsWoMaUsavXBeN5w0hwjcZ7+PV+3BtNDgcI3JY2S4CCOwvh
	 WaBaVOk7si5U4ipTKL+M77VJwGRD0fS7sZ7ckHRoA8A6/Vk/ijOiEAFmpOPYePhgtD
	 9wCU0xzt1yvunXedor+hFPxzpow0zLfKR479unDixV3KRGz5dSCbtMMBSzC+NZe3Sz
	 byQhNzgsBKc1Ppqzths5wlY4yJ7HCVhy9BtDbWrT4RFizpKtWniscE9kh560VRHOfX
	 kRKdA7ZgymDXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F6DC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754443357.21545.95752796546807970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e378671e2f10bfe7bf3ff7348e2208d4e5c578aac2ca245974f1daa0867254
Date: Sun, 04 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767544433
