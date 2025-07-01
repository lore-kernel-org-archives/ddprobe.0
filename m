Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B96C1F239B
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751345994; cv=none; b=YnFOJf5xCa6jkRPz5ohW6qYHBuysRkaSwmlg6rXN23pujNa9Z4vqGHDPGdnJW8JOCgqHli174Ov1bzfLfn7oSQNiD5B4Q0BCNiTHPHWMsoAwyVkcIRsBaHfZpxHW/tRt9nUsYLYquLqBKao/RFVbYvmqNrFmRn4BQSViBZ3W8/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751345994; c=relaxed/simple;
	bh=UjN0rq9K85bJyrDoJMquUA8isba4ZxMQmqnWkY1XgqM=;
	h=To:Subject:From:Message-Id:Date; b=OxA6rt9N2ySjRGMGJJ7VfY7v/ZinpdGgxVgUgTBMmCyaL4Y21WWjbK/IrZVH7ZT5S6TBYZLJuvEdIxxwK1geMdo60IR6DAKXitO4K/3W2D6rMnyGW7qR3z2mOOgIENL4JzdAAkiV87dNHVEsxUeDoFBk1P4ZoTjI5V+1zKdDZQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4AC3ixS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4AC3ixS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32A4C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751345993;
	bh=UjN0rq9K85bJyrDoJMquUA8isba4ZxMQmqnWkY1XgqM=;
	h=To:Subject:From:Date:From;
	b=u4AC3ixSM5poIt9zBSksHkuAr538/GL7/RQA9xAolfGokX52N7/f/UIyrm2eaSDyo
	 /v+GDRulOB5EiMw9CoWFbf1/8IfPMiUL+yqjeIs22o20Hey8yEdZD6zH3KnSajYyJu
	 XvCo+w0IdR8Tkbgmi2GLTsjFiTm9l/R0DSg3xrEGGjpO0W1LJjXeE311hxE0JXur32
	 EIiI2nc6f8JMiXR/C9QPkxsrZlz23okNP+B5R8FdMr4prWr+0CRIh+sdNCetnyIPf5
	 HrI59+iofpbxfaQGu7tLOKTS7MapRMXG3wgH1L11KtP2nR5Tp3jyhVjzHw46ARZStp
	 KQJgqH/XhSULw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F4BC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175134599357.22284.13908340155939270425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b464dfcb09bdcca1b9fd4436d33c39268fe6de38dd8e7d624bd1ca5e78b8e0
Date: Tue, 01 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751345993
