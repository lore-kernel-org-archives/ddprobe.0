Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414B3212564
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780738474; cv=none; b=BKMQSh6PJbrwFSYEU73+vDBFMO5SFGN9B4DMWoq5HQSs4OOSrJkXEbzU750ao5M/cIHZBHyTKpA/vLK/pgbMaUguG1Nt7V/c9CjKZP/GFGuSjTocNuhVQyuVi6qWO48vvuQN4gC8Tnv6zfoTYsrX93iOMCOZGLUw2OsuAYZk8nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780738474; c=relaxed/simple;
	bh=hSM+86I+AgylP1b9JadF8/CrAxOxU18N5EN4VHWuPk4=;
	h=To:Subject:From:Message-Id:Date; b=FSK+CZLX8SNqd0R902rvDPLv6TE44A5fNBph3EKCSDvz/2Lscg81yZ9qpwNQ+OcvCEnm0CYEmghnpcUQfp6YJnnGyuDJh5q/UYCa1hVyHdRJ0QsWOPsj9DVVaQ5fILny9ZQMSGSDnBGMJqm7KYn3ofrWJGe8EHSdU+1nCYbsgjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4Uw4vfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4Uw4vfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5057C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780738473;
	bh=hSM+86I+AgylP1b9JadF8/CrAxOxU18N5EN4VHWuPk4=;
	h=To:Subject:From:Date:From;
	b=Z4Uw4vfV9yl9cJ2/JsmP74jJCibPJsHbCxNe/Fa5B4Sivv0ntwkQmy7m+jv6opt15
	 WqqAHpYV65ILHeJvUSVbhTai/as5/eQVMdaDlu5QgVevrwtfjy4B9rWVyaY46MiyZD
	 KOS5GnyY9pYvFqEhMrnhVpvtUlkcVFYxDrjQRHO9UTl264PFqqxpEP20Ycu/v/Kl6L
	 /whZ4Sh5MV8skOmH5AQV/pdy53LZmGNQjUr1BT398TKGDNHxcbJ9IQLtB+jeGgLAw6
	 OXSH15fCStbWorSXiWf9mvEJIkrWi6rdtH1oYH4mjvQ88m7s59V4xxi+43El9gfMHm
	 4PLw0Y9q+Dt6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B645BCD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073847371.26171.8940771570783421206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0d12b9aaa6446166d4f9b557ac936d6370dda2ec029c9d9566f845c4505dd59
Date: Sat, 06 Jun 2026 09:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780738473
