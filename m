Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01CCB175A6D
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777806454; cv=none; b=XMwyhmjjdIpOvi9DxHOyAwp9SdU3NOl894ijFUPASMYT94hy84Z9pCg0DtqFiUbTalf9oIq0Ep8Tmr2zBQ0iJA1G52kYB53p3OkpKFIrdQD56v8p61edqEV8hWPZZU5IBFQqX/R2HIAx3kgT2G7CaIi13v1AEurVA4/aSx2W5W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777806454; c=relaxed/simple;
	bh=Yj8g4+jonPsmu/2aBR0WmARX1oDw3YbwS5cN9KgVK78=;
	h=To:Subject:From:Message-Id:Date; b=dUxHjejLGeP+5sv2w11+9kbqbWeRbrh+oGmzhsNtw4+L/VTLezp8VxOP1v3JQt3FB6yZkWa6/FwQUEJnnMPFE9dn8ULlN/Z24ZG+AN05HrlGMQYHE23iBli/YAFUmvi97K3sqs03yaevClwLovsahKhbRbPHFcXLoB+eCdvCHQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPYwv/+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPYwv/+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7953C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777806453;
	bh=Yj8g4+jonPsmu/2aBR0WmARX1oDw3YbwS5cN9KgVK78=;
	h=To:Subject:From:Date:From;
	b=sPYwv/+ZcKkJDqmYbQtgGH+aMp3VjGBi4Nm09F7/m1eoVHbk97f4wmUO1jzIYGE28
	 kl2z0617BvVEyNLDzbzRoRYAyMfga1B6Zf7btvZrmh1We4RHyjAfSZoa3F8MHjMt/h
	 KlswrRKRA+acifqJg50oEFroTR6C9+CSyAQav98X+DJfcziSZkvAlWQqaYS5cibpeA
	 bhpBZ1WBO0WneiRRiZAZJTpAcsQfuQTUmBJ11C3OQ0D8/nAaSDri/nxmj3ZlJXVoeX
	 E1DK/UH42AJg69JIcGveCJdPy0M5O5iazaT16scmH0x751CtgCn9TkwD73lEvl/5Ng
	 nKDizDHLCh4mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98BDFF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177780645368.30596.18170194174574526120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa26e9f56d3de60f536cc407b5a91a688286779bc8c1c58f6a76be514b21571c
Date: Sun, 03 May 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777806453
