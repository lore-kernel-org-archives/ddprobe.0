Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470492C21FF
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785597634; cv=none; b=gPLIdhSTGdIm8AytBq3D8vxBvUC6mV8ncS3JhIYuuse608yf2FIVkq/dGXFqgeYIrY5KBM3AT7ki3hyn702kyOTG3/CwOXh6G2JAcWqKKAkckaZx4W5SV0Wp7NOka3ydqk84IOMvi6fSmni5JTkdFx5cMd7WfIKSTb0c2+YQFds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785597634; c=relaxed/simple;
	bh=fNFPnbQLQU46a4CoeAqxgoR+px6JYrkzkoxwriZibNM=;
	h=To:Subject:From:Message-Id:Date; b=Yyq0SJYxiD2Djzrv3q3100bBjBi6PYK3gCtBj9STIYGK/RcSJ+4TZpgKNaW/zAAYv6AwErcrjvNbe75ac50lEqjtFRpbdk2jJWM+cDHavTyVhfAccqHbleOzGV9rfLOtRAbuiH+h1bRrVu8Py0Hdx4FwQeaQKMG4DvlMdZYvXo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRKdxCk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRKdxCk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2142C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785597633;
	bh=fNFPnbQLQU46a4CoeAqxgoR+px6JYrkzkoxwriZibNM=;
	h=To:Subject:From:Date:From;
	b=PRKdxCk7Ue7362UDxjD7DQYu0yOF9WZPJoWzslOmarFTLrNZhCERdBZ7ln6vLVN3W
	 qFDVXoUQf9Yapj80ECz/qQFlGOTFmhCUl9qX3mpOEyTETGh5SepGrz0zGjXzr50CJj
	 kVQ0C/J8lMkGirXlvTdAXIhvKylCpjDu1wMxfyHDZ0w3N3EAtO8SSQTvAzAXTMju9l
	 XcJJaccCLrkgQcNGelDVYlPTGzGKbv8prCPVEhJg4s57lxFdXsuqg8neUiIfAVs/Hn
	 nggEgs7DO9OpEyUiX5gdIxo1V223D1kwfc6joFWC1LAfUpVJ/MaM+T3rkXE/Qs/DdN
	 HEC3WD9GPFwcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFD1C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178559763368.2628.7078988179768158507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dad3e270b6ba8b43865314f280cd5fa7c60212eee026909a4ac14f27d31e7fc
Date: Sat, 01 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785597633
