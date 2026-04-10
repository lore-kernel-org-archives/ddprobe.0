Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19826388E40
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775825854; cv=none; b=Q9BR1FiSKKItmuwJ/yqbyCEx2TrOhN3fMfxJuCPVPStJ9XNrJHC2EjexOKXpMiJbu1UdZB0d2Z3w7zBajuo8GzZZxqUe9AQ8UwinWPegT/Sz1we4CB+jv8VkU/Vpl6/M+ZngxpW7vEnKMqtdTnZU/8HdEGYwADuzOk1ZKVBqKWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775825854; c=relaxed/simple;
	bh=aA55o6cdKdVlz+VsFJPV+Kv8L/5ZyErKYo85RaDETYg=;
	h=To:Subject:From:Message-Id:Date; b=eGCDQqjJm8NaaG9g1SD0v3K+SrdoIT5avHgL5bJHu9DwMr0m5PgIWl098C5dLkYZMW85oo77blV6X5dmHdmev+yuVorOWcjJB8MiqbQ/yMFhXgTE95On2lwy8AHxz9s277BZcer9J41njI9aKULDPyNzU1vkuU349Se1GbCJuxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhmIMzsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhmIMzsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88A6C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775825853;
	bh=aA55o6cdKdVlz+VsFJPV+Kv8L/5ZyErKYo85RaDETYg=;
	h=To:Subject:From:Date:From;
	b=HhmIMzsqQKnQRqtkMUrcB3o88oEgB0oPTX9NONGkCcXlU/K7gDUPYMl35jvU3D7sa
	 I62peY9lRB7c23j1kF5v7yZyeMznzLWUpOizUz+oo8UAVPbkLO23skBV/VU0F0iXRT
	 LLGRSWL+HBa8oh8BCLdETcGHwO3y8/+OcDm+FUd3CagHJRcIwCy3xm0uAO8+gRWvPr
	 LXpX30s/RzyXjWtvIWP/AlDcoejuBRsxK+vtNTRQSFSOCV1l1ZqIxWS795593KNO04
	 xQMKKbvZYOvlR0zae8JBvnGo/Ia2vMosfvyFlJTmkBCY5IRjdpogXIUDTZPMNbS3rn
	 aGZkpLegSLyNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3BCF44857
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177582585369.29526.15968038069223336008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1bdad93b1bd1e7d2d08ef5bed203720028b8e0f1194e8a2d17ab9768739ee03
Date: Fri, 10 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775825853
