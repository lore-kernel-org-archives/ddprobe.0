Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CFB2DE6E3
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782944314; cv=none; b=L8UqFlz9i5W52slG7YnhT/ZhOfhGJOtQ/C1AxqqTh5RUw8s8lpveVkJXofNcFPv+12Q3xN9xn6urUnZJ+WiCGPg8iO3RapgiEEmBZsEiNlIxVpK0MMHzTdVG4OPqKQQ+o9cOvqLNsidjFaA0RE2BTLAKevBc17D41/R05PUyNEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782944314; c=relaxed/simple;
	bh=03f0WZ2eU/7qpOHF7gIPg8dEIzkqLBqcTAKlF/2QktI=;
	h=To:Subject:From:Message-Id:Date; b=CjCiCkrE7b6qf8Gwf6u+uHKlENCbkMYZLcGrHkMmJq0KgFxP2274n/Re7y1EZiUYlKgmJctj7e8tP5whgYLj/O2pawtRsonX5Zam1p8CwMjKnP5vlGlUVnQL2ZEJdWzjma5icczcJmQMZeVHcPZ8mmq6VjM2uBEk6OyzX9bXX0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tsg5mbWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tsg5mbWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD55CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782944313;
	bh=03f0WZ2eU/7qpOHF7gIPg8dEIzkqLBqcTAKlF/2QktI=;
	h=To:Subject:From:Date:From;
	b=Tsg5mbWnwaENbwaN+DvVcqJfxs5Ba+f1h3p1u9zud30JScknlMIfnDe10AAspnThs
	 qzkR5tijwhPpFa6ijuERc3bOB48Vfgws8xZFGpXkrELa6lxjKegGLT/ANhFx0HVtE+
	 iZGZaK/c9wmMGSQZ52Uee5omMv4KOA+1IAQVbCzks8pXBFiIMYpV7kX6rL9DDgDNNC
	 qP24yiy6k4Uv/T7fHQlM/eJNFueEenpT7//O5Gs5aOSMMF4lNWp6YGJAA6+e8lvwmS
	 LjIf6MUw2xaBKWGXRNGHsI76P+m9iL+Jo11a8wnkgc3gdKGFgxoppMfPcD9SRYkFvQ
	 h+YS3TAnE61Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAE7C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294431368.7916.9823866969978998940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef15ef78652f67528088e5f1d56751f0871c67d15b0c80a8ae830b0bd7762b69
Date: Wed, 01 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782944313
