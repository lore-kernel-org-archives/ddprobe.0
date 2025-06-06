Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A8623D290
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749252593; cv=none; b=PL1J9gJJ4zQkHsfD3zs9Fc4WfTyIJaErwVcRpE5CP+947gPqoULR/7IhfRCi9vrHrn70sgBPWLTEISAMGLi2s7yWtGNpk4IZ/vhPDBRbnAfLU9L2rvX/Uore0F4bXf/4DjB11eA5NnSt8JF0aP35U3c6zeDL8KY9DrQwMTLZ5aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749252593; c=relaxed/simple;
	bh=95/cFE62pl+9L94GmtX9jP01eW1lrnRLbxIt6r3DyFg=;
	h=To:Subject:From:Message-Id:Date; b=cq3PgWHYS+PQajfLCuRaj6CwP+aaOOIbf72nzqIamnX0ZbIZFvAd7zDv35Le7nnMrj4dqRcqEZAqDQkRzGFQ1gyRDHISVE20/3JhOqCOSvpNxOy6nlz2/R/PIx1FhB/41opcmLFagSk/BZZJytC9j+5+9pAWMvFPkJba3h2ob5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/s4DOz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/s4DOz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B9AC4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749252593;
	bh=95/cFE62pl+9L94GmtX9jP01eW1lrnRLbxIt6r3DyFg=;
	h=To:Subject:From:Date:From;
	b=d/s4DOz/H/WvOdpFhkTaiuc3rS53zn+osgEWZSDDYJ5k6KJLmyaFy6+WoLVbPA78t
	 gOzIwr07DYGKSWhfCB5t/bJ6ilXfppYObuBnDNeo+QRKSdTSUo8vizZqhHyWDC0B1v
	 nJ+QQ7egGR4kUA1v+Cd6K7vWQj3fwxibbLQ0ovmR/a/1LWi8jzxfA4+Ul3KkMOT3/P
	 SY1F+29lSi19PC7zszbNS+vtn/kGgNdPhydZ9tGjzpkmPe/5jf4eIC6Ti7MYvafDWg
	 1rWynkZ+3c3qm62O0/n5tk3VJpJdRhAaqvcq5PpZrATt8w0b3m6ycQmg1LISV7A54x
	 iet6erTgit9mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9296EC61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925259358.16036.1359727018033737387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ca07be3d6e7b581daf502c90beb7323cf78df7b4eb4cf5db546dcbcea5d513
Date: Fri, 06 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749252593
