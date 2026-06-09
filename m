Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AAC36C9EE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781019934; cv=none; b=rPdPXPocB98tYgnalmgfr4wUSMqwDBKmQ2oKAsmZXPlY9PDe5UXoE5MTVEsCwN9Fqmr7Quy757a3Kfkf4nGfy/UY57t5JVQ4AW946V053qwtf44HgKF+IhRncurV9h2DZrirKJsTkyivfJRGAdtIK+F94ymE0EwfoiGX/DiUqkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781019934; c=relaxed/simple;
	bh=T/JICEBMC1VMibo9UhQgYvNxnMpWgAw7MDPMkvI1bTU=;
	h=To:Subject:From:Message-Id:Date; b=p8HNqab0hRXhjXSUX14uGPL5MmWyt/4sfo7KbjxyKVB9bH21ONuvRl+mhsGzydPLxbvNgf8A8jiHSo5qjtrMd+Vr/zY4my/SacSHwePDDZGTPKJ+yREAbMtaOYr8fy0mgSZTh/U4erZhQas9drn22vc90yIkZGGOCCrUlPK7d6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQG8ZsaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQG8ZsaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F83C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781019933;
	bh=T/JICEBMC1VMibo9UhQgYvNxnMpWgAw7MDPMkvI1bTU=;
	h=To:Subject:From:Date:From;
	b=VQG8ZsaChgO16BmQETkmOXJNBowBkgymoYlZuwX9NtqQT+QhrcSPq5jkjvWRkyYVZ
	 38AOTACzz/6PmBb11r2eO7QHWP341KOVqvUWMJXtgW0DxZs3KJSpcDXaY3B1r6Gsu0
	 Z28HA42ZqekEt7JeN7QVB1wvHxP7anf1D2T8kRx/Kt4hjVClwjzCRRshZTnHmK+9s6
	 23SX3HKs8SKFPJkVkO5jaUuhkInmVOPtleQBOO3sLPsm4q2gNHOKVJgO3rNRnp94rK
	 EiUYinPj2wtjfvZ+wD96ljEq9LAGZ/0XTOC45Y2zgk/0A3t1V/KHuwsiE2ETD2uh3s
	 AaQinZHdzqXbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10B1CD8CB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101993371.22550.6047892253667571171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e06b52ad87acdbebcb29b9f644384f90b9317ffad87d29a22502d45b6e068f
Date: Tue, 09 Jun 2026 15:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781019933
