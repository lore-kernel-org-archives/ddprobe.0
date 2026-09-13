Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61562286D4D
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789314034; cv=none; b=VNlqGzfGU120Gp6SOG2eBDovUxu4USGPvGaJ33KX5cnYZQgRDBRH840sfL1bbzucV0+V5QvmUempA2ASquxOmmEiymu0NHEUlfpZOQEmSxU9gw1qxY+qDRBW8xU4CvrzPWcIHeZfnAPBOrMvdLimyUKU1eMBoYR+ru5OL+TJ/eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789314034; c=relaxed/simple;
	bh=5PPTCi7/lMBE/cfHe6Vsvhhf8FbsL1GytybwHXZi+YI=;
	h=To:Subject:From:Message-Id:Date; b=LjPy+kwq7u1NMgJj8mcXq6EksISVXWPEUjaM2WXgP45kExu5EWjco/vQold92rSeVvyX4fK2c0/BHkOQ5hcl4i8kskOhVTp37YMfyCgXZMzQsN5SD5ORsWghcEiEwXH3r9KiPd48L1nX1bOnyI67nmeLc1qv2q5qM2fUC32Q2hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2X6ZsUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2X6ZsUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84BFC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789314033;
	bh=5PPTCi7/lMBE/cfHe6Vsvhhf8FbsL1GytybwHXZi+YI=;
	h=To:Subject:From:Date:From;
	b=I2X6ZsUS4pSoFamQk2YU6UZGFovB0m4hLHy+cGeRasM0I/HA8npsd1CcjduAzyTQt
	 7nKmC5IKkayt9UPbwYuuxr6UBNYYtY8Gmz4LjQtT1AomufqKdbHXxkbeomfzfzEjAD
	 q++Cv4huHniq97IrNNNDBQJiOWY7L0EPVC+Y2VaL6RY9tM61YduPlZ4pCY4Z8xbyRk
	 R8mICYPgEChRD/55aSlhVuKVWEubPAEs4A+unZe18EYJE0p6hqmIRvGT+rL2h+uKGo
	 QdXhZxznIygUlw2arbNBJjFpvrw4ZU5PkTceDLNAluxnpFI58P8TI1NTnbV2Wex7+4
	 +gK4Pu3E6rTmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB0AC88E65
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178931403368.18036.1414325349839400170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7296f7a6a913455a7f0cf399aa38c96ea3387f8ecd5ab6028f972a8fa17b7b9
Date: Sun, 13 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789314033
