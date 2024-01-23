Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E288612D9
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706024897; cv=none; b=fYtgQ5eIkr4tlhPXJY4lduvMMgKbj5lU1wWhQe5k313b5fxW1MIFId4aJPxaYd/sMmk3YvUMymd3T7lzMKyUbxZ+FASO6I9yQBX2QlTAKVKiPCGYYvABMOPK4RIoFiIxrEvMolKz7GpAMyzJNNx4YwqT3gQmf8xUEvEJztAsRYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706024897; c=relaxed/simple;
	bh=jZpjekHPk7Uf5Gvj/INy+isgNeHkjwhTsX7jxJNN3Co=;
	h=To:Subject:From:Message-Id:Date; b=poNMi76RBJPjZXQxGPbJsy/oKZKroPgnoERo4hB4KeoYHMvv25dF9d4Hs231qXm/ZtgCw0++yR1mNYcklUzdWHpWNjBiZ5fR2eOOazil55wzANSQSM6NV8R+EHQ2/NqBOkzOimqiXFdmSaZX7kBPD5bVX0acOywPOs1PrImlwUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNWv4521; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNWv4521"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78621C433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706024896;
	bh=jZpjekHPk7Uf5Gvj/INy+isgNeHkjwhTsX7jxJNN3Co=;
	h=To:Subject:From:Date:From;
	b=YNWv4521hranIoXu7xQEm6D8m/AxgOl5dfgc6B80BsVImTdknlZ7RRW/zof88J8eT
	 vj/Xrap01sqd31O/9GYOc8kFM9TgyMF1Jv50ZFjt3Kh93TvF/fl4Erb7IWSENwVoQE
	 gUfm6YzilH5UGQ6mDoat1b7kgmTD467/wHMKhRUvRwCuAUVSekLr1PkV/lSMg25weW
	 OLDL8HKbOolgMWZYra1YSQl5NzSOLMM5VN+l/Pj/1CRAHRqMWFf1dGWoBW35Gt0or2
	 LREBtr18lhXYn5QTP00iO13uEK1sURDkysVO0jjTdhwqDVI16XKy55NhwNk2R3vceG
	 Uho3eH580wB+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2A6C47DDB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170602489637.16785.12707818960074857992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 065c2da0ff8b6b5629259e65f746f69dbd5e0d4bb91daf13e5890e864f0b8c6a
Date: Tue, 23 Jan 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706024896
