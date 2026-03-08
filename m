Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF302D02D
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772987694; cv=none; b=hxFdlGNJh16F9Frk3EFGHgVXjb2NV+I6UFZ83dMOqJJNoQcfeZ20K1uwmMwA5L5nBgtJnJVyah+r5JBYtgPrZb+TUp+sVwGavvpMqcSPTTt/PX09ctnS1P1rK4moXPH5ZgdM8mgnTWWoCKsv3UVoez1l+hQyyKul9XSjkHYn1U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772987694; c=relaxed/simple;
	bh=EtNOs8G4tZCdvg54U+Nsv88/hf0lfBjBZ50xqCHb+EU=;
	h=To:Subject:From:Message-Id:Date; b=hrCQJFz7uT89DNb+wA9v87DCC5SPKohkThogm/6piBFV664eZMpJvpRN659NApa/LhameBChcyZX983ZSsKfYwe4CdbGFgebXJW9PDqXkl+d1qmL98uvVwa6me8WILqWRyjDz3TxY3mO4q6ZV9++hJziif4uzN5klxP7529P+pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hxff95AS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hxff95AS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2F5C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772987693;
	bh=EtNOs8G4tZCdvg54U+Nsv88/hf0lfBjBZ50xqCHb+EU=;
	h=To:Subject:From:Date:From;
	b=Hxff95ASb9guhsgiOtJxgREQ9cRW00iNYS6x0sh95f7qbPeax3EOaIjP/psfn34Iu
	 zh/ZjWOutO15fH8AQme1kDdP5jLzMgMWYLJ4qR301uQZpCPoSh8ErcqpWgA3xqvlHD
	 Wm8F04zUjshIkhIdeyIgP4nUljnoAwQ008BAykIV5l/V16w7ZbwJLUOLfDoGov9+fX
	 vN8dDdds3TKJ9Lp6BTkifATZVVoi1ZwgSF6+c1gOrnVqPb1QuFZxodDZsRpgwSkCFe
	 Nkslqgqgne07dPbPLdSDOtFJP3EtzQ2LYrWTmoKbgZByiN7R9m7lETgKEfWKq59LJC
	 Ncrnu4YI97T4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96490EA8534
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177298769359.16419.6480520336947615810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca4fc58616878112ca26a82faaaeaec1ec26b9e6622699896d03d6bc353c8ef
Date: Sun, 08 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772987693
