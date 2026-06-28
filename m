Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353E7C14A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782622714; cv=none; b=GoGvUNfaoWVI+SBvNQzGPJSBNNGeGW+CHddsQ0Se5GAiXB6Hzo/2A8604G9n5nzj6i321Wq5bmmBWL0ErFOjk2lPvRR4IArLmG/8RlQ/2esmD4JTuOhpRDkxU/G0qSiqi/ZqlOcCuIr4s/D5+9f6OwV5Cs7tlpSjpUuqH7JeHs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782622714; c=relaxed/simple;
	bh=dEHFNST8VAtBAhk7Juw4vTjIm7FHP/EwBFAnkeR+ams=;
	h=To:Subject:From:Message-Id:Date; b=ivQDOJEPqzETNZWnG3zZ1UoaOR9vTrl9YN6wd1zEyXypA8sMyaUYq51/4uVHchgMIRDCrlzFeNHG6AZX+Sjs/xZ43Imf5/w46hS3Y9aXoLbVS7bD6wU+7BfMzyVZbZUGqa4ABsARktHIQHAl8wSOX1qdaSeOcH26uQngJ52Cing=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ix5qCskA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ix5qCskA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC7DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782622713;
	bh=dEHFNST8VAtBAhk7Juw4vTjIm7FHP/EwBFAnkeR+ams=;
	h=To:Subject:From:Date:From;
	b=Ix5qCskAYBkyIhLeiIvsNs2Mir5t1H66pjOGUs+tDDOYS+zTPcQmkawu4M5O2JEB7
	 Xg72vYfLBxz4NTZPBIbkL/yiQ9pqHTmy4t+EfFG8FBc13z5TjuyGo89i+LHa5WnERR
	 K1+rIIcKubLwMtGIRXy6TId/AsiVRCi85jWvU3ZIh1QBBNbrr41SDhsq3t0TDexCWi
	 xKFF7af4vJzwq37BHJXgqeOhtLHl4WVgzdG95jz0AxLCo5sBInmjUHRGsxBLNgycWW
	 3XxS9ejF2vPIGkDPJ+9500cOBk7lX6AZPk/y0TlQK5B/O05gmzRRGDUo1CPlls2GjL
	 rgQ7RwUegQkyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFBAC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262271368.6523.8930947780134198531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccc2232a20da1cc70aea757dd6157e1aaadc75f02196fc91b51d87a00d32ce58
Date: Sun, 28 Jun 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782622713
