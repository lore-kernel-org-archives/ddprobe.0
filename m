Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA7E6AB7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707551897; cv=none; b=B7SOt+Ut/JfhVOWm2IEJTInZBu3J7UUf3K56coaJ3GnxG1IF12gTpj601lUnGC+uLFGf/3veH1oGXYR3cPc1CjFz0m1JxUv97TZEvKBOw06g+ESAWpSuJG5v65ju3uVxpwZKHFhr4IOIpF96fAPisD/xFiWZw8LEadQfgGpcDh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707551897; c=relaxed/simple;
	bh=OFA1USpwbfROyHfyTaYa44DWBofZC2z+eGOrITvgwgQ=;
	h=To:Subject:From:Message-Id:Date; b=HjWADbZfyENmogiXwTzyIcOuonIGw/KGn+dq0cski94dIaJXndMDFIR/LM1SZ/5Mbo+YxA4PYhpOLJa5IBZ1C1tYytmkmfxlRc8LaEdosLfv68w0j/0oQOmB+pLwQYAqFL/yWrzXdhjltxbZ80Xl/6TPNHqaK4zBC3T8InHh1BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBBok6FJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBBok6FJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFECC433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707551896;
	bh=OFA1USpwbfROyHfyTaYa44DWBofZC2z+eGOrITvgwgQ=;
	h=To:Subject:From:Date:From;
	b=dBBok6FJchUn+hAzxOopB5PuSc1uq6HhOTZ5jF5cewglKOgRKbB+RF3uZFzaeQfte
	 v9U5MqBOnFqsz1FsNlliZO0umM97cm4eEKorZrjwRUzS1fyPBNJmXmVQkZeId2IjoO
	 SCSbLRmjbPXfWGs1BSoAU9979/lNOTu1XUQAoSzJAlsa1JLTUoR4aRUlQbaUuTL2SV
	 QF5Q6HQvtHFEnxXLceb+CFeg0yNOC5HglGmQSCVCsJ+mZPkjFJEFeCRlHqlHYHH0qV
	 IVfh38PAoWLMTNtI8D0qr+7Xs5FLQwrprbzSsTlR205MuV7bIGG/ADg8+XQQScvVXQ
	 YttdbFcFWhbQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63089C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170755189637.19071.15266326043498179526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70daaf56dee016dae00f7e39dc8411387ec855f622c1d34781058b9c050a280f
Date: Sat, 10 Feb 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707551896
