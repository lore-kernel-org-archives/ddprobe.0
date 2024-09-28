Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB291D5AD0
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727528154; cv=none; b=jqqYVCZLWtxf/yYVgGzC2QrbbCBadeZs4vnHQPFa4btfO9hazwqPLTO56T0OmbwRPjlxjat+TSOyAheZsRCYxr4XVszC4I7oQTdKQ/pSkmaI90qlZfvznHw+O7keBolzDhAFTQvGjGEQL7RK3Kl0qVRgL/L9VSi820GYYFINwnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727528154; c=relaxed/simple;
	bh=zEXPZsJfLi/hy4YODm2UDYmd6Y5QvPYh6UBREQDLv2o=;
	h=To:Subject:From:Message-Id:Date; b=LlhhwzGbpVHRG16pfT8AtIbLoIpxRRiX1MOJsdvkT2pi/UG6J58OBTqy0lG6NvPTsf+AkOc2bOiVuWhPPSoyq49Do/5fnNFkysRpI+DfiDw1ZYcsVDW0mNomwhILle8dOy05cm8Bauh1RlrF5hVp7JVerZ96YWb280zmvIrwAOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVtF55Jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVtF55Jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37FDC4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727528153;
	bh=zEXPZsJfLi/hy4YODm2UDYmd6Y5QvPYh6UBREQDLv2o=;
	h=To:Subject:From:Date:From;
	b=WVtF55JpHVZ3DANhxkpRuz4sn4vddfOlLNm58IroBzO+trnG6KzUkiSWmfIxsT2pY
	 qJkfzZ20M3FCFNf0ixQ4z9f9a/NUT/7+8Ss/+A4aPVNNJ3YRSxjIkTcyEaKm5Au1hu
	 STSDD4NZaJHIobfqt/3PIDLZmDTBsGuxsewUrFz+hAsCt7mUKXIOCR64c2l+0NF9AW
	 wLZOuoq3wtKYjTFxq6FIXpW6wFs7yC58YHq9JWk/6HmKadkX3om0wQ7cQacU/0XQfy
	 TzFm6tpxSJcDTQRqiWwBWwmZHvSdGJp2VTI/bDoFiDuCqkIvNhbMCY4V5uINv1sMM8
	 w3Kwih2AD39Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FD1CF6495
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172752815358.10722.5238127980295261280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96cb78a1e637d4474416ce322dbfa5c64a27039dd7f28c6ec024415a30a28d5
Date: Sat, 28 Sep 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727528153
