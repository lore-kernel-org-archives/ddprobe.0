Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D0D13DDAE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791640834; cv=none; b=WrMqYJoWV+6cOzZdfM494SGvwsBX/23cc5eViSVl88fSx9LWnUmUPYT7FauyEzvC1cV+g48KcxO8z2EKa8lPrlCeg+Pxp675a9tENNxx1QYbYMtmO/Biy7Z5GEjbBb7sHSn7HpbN9Bfnj0fs5YgJAr57+V/GTIH1sDmErXT13l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791640834; c=relaxed/simple;
	bh=wlpOJTphtptoNJ+uDGw1UbM9pllfrAoMz1nOIgKeOR4=;
	h=To:Subject:From:Message-Id:Date; b=JUSHsaQ1oCCrtx6EH+C3Gm4zYvVfTJykmvcDjdPIAoAjMoL8pN5tPpqdCbDNwMWsVqMOYNU8Pb2cJeV6EPIUnVbe+8VBVWqsD+Soi+uDh0eY9twF6uOF3aM4njE/bEflegEklhmQcks8HqkJ/O99EnWrhisHzG0L/6lL3qY8N6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fr1MA+y7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fr1MA+y7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E0BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791640833;
	bh=wlpOJTphtptoNJ+uDGw1UbM9pllfrAoMz1nOIgKeOR4=;
	h=To:Subject:From:Date:From;
	b=Fr1MA+y7EfsnsQpYoP5jdYIVszM4Q6BzUR68juopxbVk6FdcM5R6AXYyzFTQajABO
	 WzLWBH1NSX9beXQ6lnRnRcRoQLDo/iLC/4ob8zI355igSuw41DFFdWqMUBxrWWzBaq
	 OOgRVJ43Y7rmoOa2OuIIJzXcZNHgwvoYHYOg3W5BPT5pxznifvbUQ9Vbk/PqvIAa4O
	 vJzzStfKHLZB7hlZchj+NT649dXZRPFWuEA9HB29p7JJ+Go8eCDdJWqoXpjESGrIFY
	 8Lf/sWd8aEm9IG6H0TfSxeLbYL6cFTZBnDNci6kbFHToZ/asTeKTxrdMlAMcbjA45p
	 opBgoOr0dNADQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04D2CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164083368.6031.13436685766280029939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813ec288ea42a9055c0713cbfe49aa0fdde205cd74a131dca2e806447ec8a6b9
Date: Sat, 10 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791640833
