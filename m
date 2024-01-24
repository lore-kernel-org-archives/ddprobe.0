Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2EE132C17
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706127497; cv=none; b=a4RrKFKv33C7PkAMrb2b7JdCAVjwPL6mrQiaHw+QJTSiae5OvJzG+W8C4/7i7AkojaIAqbJ2C0zBaoL+rmOKRjrRUQFPaVcu2d14LvLilb+NYhTi6ZVdz480h57j5t4qYKkUN/PFayIxyJF4PsFvPGICWuA3rSH02wqH70viEPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706127497; c=relaxed/simple;
	bh=cKYkT5Z5NvqTfwUnpi8uZRIZts/bugJtxrnF12vBJkM=;
	h=To:Subject:From:Message-Id:Date; b=TuCqFkU+SnTZuqrPiSs8aQcTMNfI92jvVhFAyQGIrOqm7MSFgml3XkR50949/n3ScRMFeAJh4NmSVprdKcBLHT+CFJAzrJN5XuQI+CS0aFKqppNQvBlN9Ltzxo/kbx3ESCmadyMafhpJa5pEuVifhDP1Jg9Dvraoq2hjsMaXXWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jExR9aYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jExR9aYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3CCC433F1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706127496;
	bh=cKYkT5Z5NvqTfwUnpi8uZRIZts/bugJtxrnF12vBJkM=;
	h=To:Subject:From:Date:From;
	b=jExR9aYCzCLKNYPqRem7J2q3jlVMINqYyqOrgtwberFPpRQHN6Gb+X7QJ1XOrdeif
	 QCBuxnabXFG2L2tOUTaIXaTJ/y52//g73VO7Z1O96pZaZIxRnX8sqeUFbM/0i7Z+MV
	 u+2YJ+tasQPMjwVOja1Y9diIOzpgKNjFyjq1zXt+IW9Wdc9XZNWzxDMLlyxJHDTjsF
	 OT+X+YkKEV94L9bgcJFvqw35GPiCmqvehoTF1g2Cum7BKlia0xth5qAH1vOpy8AN13
	 Vk99qX/fEu9vn4BXBb3FoaZZTDnKFnPvZ6ZRqouBsxavojeTtqNEbJF/jB/sjvWnAE
	 jl2j00eRS4GlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F2AC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170612749637.31579.3893916494102691188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f3d741fd02cc7de79b97f38eb00683f8d1b830406bb471e61743fb14979a87
Date: Wed, 24 Jan 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706127496
