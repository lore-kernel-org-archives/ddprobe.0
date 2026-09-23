Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5944A4990
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790164235; cv=none; b=Xjs/ukMmqPQBgPf2oJsDAkItUSApbAMsNtCk3N8o/ghaCxfFgS4gR5zO2aLVsjakhBp0vk8iX7hqyGcGT1vIgtH3DWZqawsEqDD2IbRvfWzgYBPaXyGyrIoGwbhMQZQSSvf5LGBJoQCmESN3mRIpu9X4/vuHKSSauBrxWvv9UxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790164235; c=relaxed/simple;
	bh=0+t/6LnwjTBKmMKtzHLQMCZT2cBfgXzeFQDL8HWDbbI=;
	h=To:Subject:From:Message-Id:Date; b=bl+qSAJMg8JUFIMcUVaOnzSyOD6iK0NX3nki3WmKTwn8n8JtlhCAXzHJmkLiYC3kuKq/Bv43IkcbRhvV+YOnonVResljCZvJOBaxAwJ7pm8EcvXNTg649CTKQgrCHM5Y0xaFJFHRLub4EKZnkO9SQBAAx34lGQYiaIlmWF567SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bj29qNtM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bj29qNtM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E64C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790164233;
	bh=0+t/6LnwjTBKmMKtzHLQMCZT2cBfgXzeFQDL8HWDbbI=;
	h=To:Subject:From:Date:From;
	b=Bj29qNtMJHPmRf8AlixrNdqw4mUAE6ob7Kwzoi5h7O3r4uaRJ7pk2ZkZsRB7jePQc
	 nLfuXZmUmwaHvIkX5BFL6yzSHhzf3W/dPkNel6vbX2brZ/ufpkGx2jqaTzHA6SW/M4
	 GMlBC0ew1NXIksrGr5OSDoFO6v8QkXNI/lgOc12p9jmzw0l9PBK3i3teqaC1vRXf8b
	 6tIKjqxdqK71iQ3OgvtSwt+N2Ca5uQNWAptRfWh9dO1OG7ud7oDMD5/GiuSmZ9lPM2
	 pWrYHevKkuOk8bkp5J94ciZzIRzVey+etBWrFlKpZ3vg/qT08Uyp2QNpL9KibiBhuw
	 Gb11n7eQPFfug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE02C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016423370.19557.12830483442113433545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9790c6498bec0021102854fd5f2e023f20eb5eaaa800dd8ef071e477dbce965
Date: Wed, 23 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790164233
