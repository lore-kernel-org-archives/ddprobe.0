Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F124BA1D0
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790276435; cv=none; b=YcX2yCRq71XwiKoiSDeb/dSC46l4Ge1V8JqOSe2dmYiNuyHYVm7A6CMQAax/lqMhmR9+KQetg4Smu8gqnLIW3fqXe5pE15tnB1fWgYp27maaoALbz/+/QDdU0yba5HiHTrqaI3x53iSeXYiiWBjGC4QGQra8yuL0FJhyfBFUjmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790276435; c=relaxed/simple;
	bh=dbLuGBSm+LtS7jz7CYca/zsiWaTzDPuScXahC4P7vw8=;
	h=To:Subject:From:Message-Id:Date; b=H/vFp/hkxVjb1fsVTL6LSfNQr0UjmpgF0cuLUqpErGDyweMmP7F9DsENTxFpoDm8EizBQ6gNe649hQa3oZBsVwRwA++Yeu9sYUet4v2UZG202qH/FLz8RPeNIyabh+FJBIgPvdbFhTBSszltZsVhvitEMqRD4rVMmB3iaNBLYBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0/bnPdl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0/bnPdl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE2AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790276433;
	bh=dbLuGBSm+LtS7jz7CYca/zsiWaTzDPuScXahC4P7vw8=;
	h=To:Subject:From:Date:From;
	b=p0/bnPdlqaoFv/689NJKbwKKuADO5EmEuphHOnt5N1VQw/otMrk0NQDrAVfTv7jiZ
	 a4t3eotDgkmnKfdV+Zkxg8QZyEsvPUFaNLYRLWGwt0PsY4xnTfJrhUTKKv41Y/sFwh
	 ex5I41o6GNBEi9W325GZ4qM8pRFtx5d6RN/BXzuvO6CnOCufEWh2gz6iTE9tD1Sj20
	 ba88RwMcgRoOTMZITtyklB48Kad71dhEMAaLEg6oL4gC4zRAS5lshQrCNqW49ATHQ/
	 46+uzSeUW4jUkI06ARugp3a7K86FQWHYT/EugzbDq6oSE5+PRWDZRCjqgM7/Sr6kEW
	 7FgXRMxWiztaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B3AC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179027643372.19679.11279323403497418560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f382426924dc9508c876b824fdb5a8c4bcb04847c31faaf8572d3aa57536d8
Date: Thu, 24 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790276433
