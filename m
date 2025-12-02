Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA1E136351
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764641574; cv=none; b=eKeaobSgyE2mhbNcEagWSvQL/m0OXGZJt/zqXIdsvPgn6VYcD17XpDdBmgzwrUVgcJw11VguBZjR5ZN4HvotKIHOmxGKCrjvlEZn8znGlFjW/nbkYyijvLuBQIj2FjHwjZluiZ6zbak4pjCfYjVOgsIqmAXJPn9/EshSTEdWKFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764641574; c=relaxed/simple;
	bh=INsCeGFXU3CkwrflYPkJs+x66F1kgM5PgdNuw+2CzXQ=;
	h=To:Subject:From:Message-Id:Date; b=Gsttk3TDkIjrqs5fdPVbExAfQXOvx39C6DGcM3KTBkRd7AG9djuxrNaEnfHmxEnQ25MrqCgNcySvBcR2PxB+PcX1sygwC6WI0x+iKR/SqjQE18mTj2Xvjlo+Mn3KxhLV4nZNNjOcxEVp8Vu5Sb4BPyGO/3bZwliB7ngmQbCe6Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bo/32xZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bo/32xZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ED6C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764641573;
	bh=INsCeGFXU3CkwrflYPkJs+x66F1kgM5PgdNuw+2CzXQ=;
	h=To:Subject:From:Date:From;
	b=Bo/32xZiTFcwEHfiK525VRCH9K9738fJo7neo7JfdfV2R0pNwrIYKxeLMNUCYVB1i
	 kBvOixZ2Fmb3myU9j4cJIWzWHdqw9nN2EDnvouWygWQd3bxa8uYAfd63ZU7zGaT+ht
	 wTrCeDgz0xhaJRJGbLHPiaY1dltd9uEyTqXnKMtYvHczJaVu6VHDIlV+MKefqgxSqv
	 hGbMqjVco9dUIBxX7CMVQyz08eFJlROruO9VQW1LJ8S3WThUrqHSCfz/j9wE4kMmRg
	 irb9OrZ0v3y5a5LKLvde/k8+piqa1CnHJwwhDomzY+qmvXZ2QGHUB3CM1zKk6nihhh
	 +xF7NgKhG35Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91971D116F3
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464157358.16861.15537948381419512490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ed367038cb4814101a72364f1a327b38df3150a93b0ca55c10de1ebb2d7e38
Date: Tue, 02 Dec 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764641573
