Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15693D6486
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788019235; cv=none; b=X1X1bB4nsozUnxwfBfsGe4lEjZxSQrructl98wVzFkw1zot4vqh5w/2AKm2hSN2QXQzipYkVQVPHZf02gEJ75cQ+op9xX92G/93r9JR59tXS/JGWAsgwm9mDaYBhZI2+fKVSBkOHkRbY2s+wu57vNmcCUAksj0KifD5FTawQ79Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788019235; c=relaxed/simple;
	bh=+n1kM91d2Drzf9xbmZrBMy/PzkYQwkvdm99dfM/Ncn4=;
	h=To:Subject:From:Message-Id:Date; b=mpAeb1XaTMHDA5Mg2rVjXNAOhOt/YvKqA5HDFIlWIbjnR23fd4gvelqUA/PYqBve6/U/1/x8TH5l5ZCgXt3jQMBnc+cWzUdMsb/FgEWQoX4veCjiI+qQEGGmOtF2v3+PPIx+NDO1YDBy1twt4cVUKHT/FVPr52YVQAzWfxM7CO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoPHhNAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoPHhNAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D50C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788019233;
	bh=+n1kM91d2Drzf9xbmZrBMy/PzkYQwkvdm99dfM/Ncn4=;
	h=To:Subject:From:Date:From;
	b=QoPHhNAe80RojDFIYkzyNeHckXFBmqiBn9MmXeNlRELNzyLjxpNkYxo1PubjhUqEv
	 nR6Kdi60ReZpEltRAB43Cl3Rgx7d5plxbRRBCshHdZsOa5c9bOWqAEbWW+sRtLDaT7
	 kdOFbju4+jBSL03kiR41ypGGBU1wi5AH1OVFcv9SB4/gT835pIOhVDwc47VOSENEJB
	 BZfR3xAxWKMpFdJDkT6wbsDVBFxJAbxExVpOJBOXliC9y7yyq9G2SdBewF4YMAWIyh
	 aU6eOmyTLnGEtnoz+QVXOiJ71B06Gb7JCKztuFtYtx1h8KT3jwsznwE+CxGMWAW8qR
	 IpnD6kjCKa+EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF562C61DD9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801923368.5407.13999163643430236307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38fb5ef7bd3a633af55e711e5437ba566301bcc02db0914401b0866c1559bc60
Date: Sat, 29 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788019233
