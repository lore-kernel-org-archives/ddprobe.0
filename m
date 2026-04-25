Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B07681724
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777111654; cv=none; b=MZgmiqXxZXNk1ZKwkaFowVqA7YHUPn9RsYJSlA1hDYiIZ+wKYH3wPUEt1Ap9cJr5/s8Bc9jdWSWLIyTZbcr6ZKFZO/97hkBwaVF33CepUqz/ZeqiyuIDc0LrPXCA6gi7QgRlSAQM2HECiKqUYiyJnanxzkKBrBGinflUGAtPaHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777111654; c=relaxed/simple;
	bh=NsuzoeN8unFmSzcZ5h0JiWcsNG3io4TLUT6BwUCCi3Q=;
	h=To:Subject:From:Message-Id:Date; b=K5rYH9HKs4R3AN63eN9gpALtyLGZb7eQ3w6h7NPb+RDfCDb7AhQkJ71SsKKO4MR9FsoanBmrnscPLpQ1fG0B7Yqme5Fi1VCJvATUoQmR5iikOOQwtGbnRCi+klGCyRIHQhfSh15V2GAGz/de9TkquqIyjZXGYmSC3WaD4bjOVz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPGlAvdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPGlAvdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE023C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777111653;
	bh=NsuzoeN8unFmSzcZ5h0JiWcsNG3io4TLUT6BwUCCi3Q=;
	h=To:Subject:From:Date:From;
	b=mPGlAvdkg7HORlt8eZT0tB+l7ygCc9cSYV43z9v2RtTkZupW1DMDTCk1qtDIrstEy
	 ZM1GvzNYiTLyXQ2XfyTlV2iSlUprftaJ82ZZ5xqM1uD3yCaEpZFBSBmfj5QNdmT3Js
	 VsEd6TZ5N/iNcc+eoNe+tsRYd2v7I/5rCM3z3XRJZKmB1YeUHsEsQjZ+IKNC8JQ9En
	 ybUoHaEAwgBRpak1QpFTpxDWYIHhzxUlcyx6sLxObMzlOFS5b/mfHLC3fJ0A45v3Id
	 ES+5EbLCjqGPO8KPtiLieX/+5lvZRhs+WBep3L8nFsAQm1yo0hyqO5yUupJIfm3+Hv
	 DB/bntocPbyQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB76FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177711165368.10931.5302034173020063311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb149a5489cd7e03c95aa40f17d116b4435e3f59729348080d2eb5442be7a4e0
Date: Sat, 25 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777111653
