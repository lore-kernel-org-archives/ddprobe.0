Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B29FB39658D
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778143654; cv=none; b=oFVBMqxLRrVJD9KB//3vkdtLD+QnxlyJ1/sewMqjSI0f7oqQx+eztB3asTIh63aeR9rfzk0h5NbQAX9wqlwsy6Z4ugcN55FgiUHoNR0YepSfb4Y0+naZ0WhKg4SSrNvNY5qw0dL2d2m3ac+LlJ7jiy2CXTXI/UPMKbw4XzOWGGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778143654; c=relaxed/simple;
	bh=j7IfgDmdh8LoUSUBWJup3pn3674ESjgKDoQyNZHRJTk=;
	h=To:Subject:From:Message-Id:Date; b=iuDK2Nq2+LHUR2pJJvaC/Hkrhonh3nOKGenUZ1kD1QT+zfainwnxVmQsoKYjrEiQHy4f9tZ3eaNr9+xy99z947suiv5IXfW+goiP1FgC1Srp8CuuNCnG8kAyuucmZncq8dD30I90iDZg51DCOtP9ZVTu4JXOOHo09UkwtQZ98ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aW5nVPfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aW5nVPfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC104C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778143653;
	bh=j7IfgDmdh8LoUSUBWJup3pn3674ESjgKDoQyNZHRJTk=;
	h=To:Subject:From:Date:From;
	b=aW5nVPfzVMCdBtHW9WVjQ9CO0ICa5OQZhGublh42IFqmBC+Z3wsVCDrY7cKwjXXZV
	 XjXpeVzbUmtagpSpuKF4DIsmVxcFcRsAXBQ/xmnNTjt4y2px8OY7j7MC2bFJZ60lod
	 Mqro57owEueCAsCcPobbqCYsVGL2NrvrKfPeifTZ+3Ecy/s1c7bhaqtCcbgFB7DeiR
	 bzgObgg0+PeWjRL/26V9z3rrpPqunoSvLeAuJmLhJ0j5F3ZDZLpfqMBUldPFsvr9rw
	 mgD26YSKHm6D7+3ClLciaka/a47qY9GTFe/f7izopx0K8inimRZlXeDBjgv5qRhxr0
	 fHQG/pF07ZJGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7BDCD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814365369.31087.11689817454101023419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a42366b3f81304f345ece9e4acc91f21fafd679c3e999e8064c8b2ccc772928c
Date: Thu, 07 May 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778143653
