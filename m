Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279F96BFCE
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770850494; cv=none; b=Rs4qHNkXsjiOeonI8DvOzmVowd45OXrmYyboWHST/jwFqcYwCCVNzPqKVv8GC5dZLCDUgt+kYK0i3RMX01p6qd2EBFxtSKYVvLsSSN6BFFcHC1U3DKbTfNe28HXAuh9tfu3CX2xdoSOhETzgy940U8FD7xrAcy4vKg3zt607Syg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770850494; c=relaxed/simple;
	bh=egcPF2cxMuO5HfWIrj6KPs131+EQcXoGHhQLJ3qpEFI=;
	h=To:Subject:From:Message-Id:Date; b=kd/uTC4wzDRYkqm6s3YAkjkHABDZScK/y6S4cvKcUIT6Baj0GmK/1ci3qvuszBlDEG/qc0RaQzDyK4FrSFeNfYmePeW7fQdLPqWMZcBR0zGixi6kF06nlUuEfX3bHL+FpvXXm6rEIkewajNg5/oYTvrSf4IwuQ9fanluEnOBFz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfsVkmdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfsVkmdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB469C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770850493;
	bh=egcPF2cxMuO5HfWIrj6KPs131+EQcXoGHhQLJ3qpEFI=;
	h=To:Subject:From:Date:From;
	b=RfsVkmdk5hAnDcx/65Lr3VWt8kLBJiycLFsXWjie80xU1VYnCCtOisDO18GgYGiI0
	 gQLNQrFSs5jS+FY77gdzq2XH7gxlK0NDxkEzyALxpisnFY8eripP86MB8zQ7HxZ+Wq
	 uEZde2cqn+/O7+Uz9TE4O7zLmeWGCQowMBUxs6pDNMQZfuwgXA+IiChXZHDHqatKMM
	 GwyuU5+LouNBmVcFDzO5GBFNkp6pGXHm3YxFIyAyBmIY50iPd48jij0/Ds1q2npGtl
	 Nxx25b0NoHqVHZOZ0RFAlSt39BdGS5L4Dqs/EhE3sofb6sCpaKklKn6afQbiJuz8O8
	 x/X7AeoW3zttQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94857ECD6F7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177085049359.23959.5681338160066814508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26acf567b4f4b356904f9726163bb1ad929834fc39b1e515799d55ecf216e9e
Date: Wed, 11 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770850493
