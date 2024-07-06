Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53156D2EE
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720290383; cv=none; b=rb6pmyTttgE5kETOfyS7/tUwFgaRKBeVN7aTO3TEYb1rOpUFWQrItPKhRDblUeEwD/ijOfvbtL8r8ch3BVbE75X6LVGoR8ibROW/+kjH6tfvNVGJfJab+TFQCy9dIqtWStQJM2NQMFTQC0YXaf6cTe9xMEHie2tgVkehKDivYig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720290383; c=relaxed/simple;
	bh=za5wy2Vf8KLhc3nlLvhPiaRf155/bnbSLAhkVvOvnz4=;
	h=To:Subject:From:Message-Id:Date; b=ruex1fETfGG9k40W7vzZpxZBUo0ZtdjtHuXYDGgcheCe305OuHYNi4w7JrDE37JEif6Ii3nLTNwCTlkYgaas6HZLYKSXrHh0aTbozAlW9Z5FbAHzSpvibdhNJaV5F5WocPn5a+kSmIPUUf5zQ2Ur/T2UeGXLMXSeziXnEgcq4H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSbreQ29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSbreQ29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8587C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720290382;
	bh=za5wy2Vf8KLhc3nlLvhPiaRf155/bnbSLAhkVvOvnz4=;
	h=To:Subject:From:Date:From;
	b=iSbreQ29fbcTn7iDbAKY25foqCq4PKgL8r5XFSDmNV0B886DoOHv9bNTWFXhCOAvl
	 E6R7ezHoMkAuvaqiqugy0UrE09uA97iCkAl5FRVOYQ2tIy3TCggXvu+6sub4f1Z6nf
	 +bwHVIejGuCaU7rTIs6uwQozLL38929WlqwJmQwhRoz/hCL9sEwHh0lrar9X1ZyXkk
	 y1nzTi6FgtDVR3jtBGYNlDm00I+uDvUJSxIYQIsXAVO2P+aLTmvkhVwlyocitawe4F
	 WGSyiHwSrHMb9G28m/yCJNdfzQ9P37Hf4yozPhIRthVyK52fNl+Zpicb9W8q/udWnV
	 3wezsqrkfVkzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4ECEC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172029038276.24154.7943024467047819603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a6e5973437fef73a256f46a3bce0e2eb860ab96ec7b437f30653ac77603d8d
Date: Sat, 06 Jul 2024 18:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720290382
