Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2B023E32D
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758542994; cv=none; b=iVB02XnkjX3NxySJDEjPMIUuB4ckXXEoRluv0oOgYFDxmGgcVA5K6cALmeB5dcTHaODqxrDLTK5eHB66JyY1VpRLUEziXN5mNNBs/9D+mE9r0gUZZpXD6+0ugrsCkg4519o9yZzmxXc/Pr/bUgOVIsYg3tSuaWAvJucNaO0Tgfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758542994; c=relaxed/simple;
	bh=8Xgl6SdIbslBF6aN/wXwEf/H47NjpQTtcdtOE+CNSK8=;
	h=To:Subject:From:Message-Id:Date; b=OQ1nBBFGxryl+aoPBVnownrEqut1UHvTNNMymfON89kHN3r5Jb9+hMp7ARf2NL09gOHYgqlrC2JyDNUTBOIapQ5rfTdtRXPvzatobB1IJtUNa73FhElJ6fxB4J1GB5QPvQ3V74EdLwMXCxDozMEcvBeMDGjscH9N/LnYT30ssVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5Luu2YI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5Luu2YI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01BDC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758542993;
	bh=8Xgl6SdIbslBF6aN/wXwEf/H47NjpQTtcdtOE+CNSK8=;
	h=To:Subject:From:Date:From;
	b=J5Luu2YIbN4t0oaj9fCHEXvZSc/STnf5hfI2Y0hzBLMpUzBa7kOZrX3arbce1dmCw
	 HEzdks8muQRen+J/WlGGC1+gkjz0yKNooadqb2FyJ0vX0fFBkhOpTwKug6fgCeO/A+
	 11Vgp/ZWDcbqTJPjfJfLFcYnRtCVmKWf8LbMy1LZnD5777m1ly5IYOHWC3NVSaOOkI
	 Ro6SXgpk59dBllz27P+0bHVIOn0zqUCc4dS3JKTNy8IWfGUdWa9c+Yq4qmDeGkhxNs
	 7r2ZxD/Q3yGN0SdXd2EjdAAhKMV5hUVUV8k2Oekc9bjkzNk3HALER6I1MnDcitnpiX
	 GvKtTGQ8rbqLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908F3CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175854299358.32150.8753598283785762048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52afee6daf356df8dc96e18c26189be8d8b6019a6a47b651444fee6a526cb1f
Date: Mon, 22 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758542993
