Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB412848A8
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775289934; cv=none; b=V/GHcmml20SYSk33ZUVH6Rii62Nz6QbjuIIgGrjAeFtsf5DYcMwYuy+Jn/MTrV2fgl2SHUpCyr4ZDfVtRxZeQ3f3siD6So0yTdzjuTeDZvYUA3PqBhQWOMpDYy4K21QkSxI4cfI3mGinIsaWsV7nEon68XFUaOsMTPmU8a2lkCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775289934; c=relaxed/simple;
	bh=GnDm7kphpAg6XJgMB3eLilF4rcd/ui58di77qCLL97E=;
	h=To:Subject:From:Message-Id:Date; b=L01OgMwAGiP/eUDVgp1N6apFDblM1TMAJCfAiOH/ptGObVV05MNoIWMuuYuxJgUP4odMFe1x+x/0wL9ONpxBGOIOlNiASktK3Bg5BzdlWVZ2ohybZ7Rgc20UdGSTI43wFjeGLJXFG07imYghiizOYgcda+jnNT7pMeMg02U5M4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNlLTKOk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNlLTKOk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1050C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775289933;
	bh=GnDm7kphpAg6XJgMB3eLilF4rcd/ui58di77qCLL97E=;
	h=To:Subject:From:Date:From;
	b=KNlLTKOkhtig7tJIoUzbt0G6SjgUzwjk1Rjb45WumIYzvYVunzCK3m7S6s84FsKYa
	 4NxUiMibcvp6uQv42mmdvmJIyhGYOQGeUNPDbo2XPtK41u3N5xz0PkU2iEbw4uV7BT
	 l18pmrtd7GRm10Kd0Bqhw7BlyoQAppVbrouw9mdZYmJvPyNSxt2eG2FRQYLmN7GtX0
	 v76W7aJ3SLTMJytpHmiqfayiRkS/PaApA9lyy7trfBU3hNylSGomUmtkbjSdN1cNir
	 MvqlexOAQhovM2T+TgH7xO/Tw6/4WJ5FiYwwvca26bKYyNxuvDGctUOhefhHQ0cY1Y
	 gNn6QrZ0/XwpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0271E88D8C
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528993369.9385.12990418398085433526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921622e1b145a168c6398c8608a893838d41c5636d1f573b94412f0b20a10eb8
Date: Sat, 04 Apr 2026 08:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775289933
