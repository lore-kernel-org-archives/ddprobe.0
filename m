Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07B83431E6
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775336733; cv=none; b=eqZ9uyvQ2+HjdFKoxQujyXKP0ni/YubOsmGWndeXxd4/Y7okWIB+q2M9CqQ39ay6R1/FHblOt86Pn/RqGQpZGHaWXZbdmJmU6SgSj7LifUUfTm/x79XssQTfl7xJ83O6yuA6Kfqtel7baOvKNh/fp4hAzOXsWsgtVk5J6e17tso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775336733; c=relaxed/simple;
	bh=Np+R9dHfg/MR5Wv7apluWQIEjmXk1Y6xYdyX+UrvM4k=;
	h=To:Subject:From:Message-Id:Date; b=XxmzV+O7ySAJrf00UebYYB7tQGA80gnC/JHYA+uwe9GDnOuS5y0W8a7qW7NpXJf2JA12MkKZ4Svm6t/xZD2sKy89vFewS1yllrdsUZoE3FefrO0tseUP8s5rJc31a5QMunA22qGx5K3JwjxckUsMg1vG1LHvyBnhU/xH3QhnVZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJxq7tox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJxq7tox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE55C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775336733;
	bh=Np+R9dHfg/MR5Wv7apluWQIEjmXk1Y6xYdyX+UrvM4k=;
	h=To:Subject:From:Date:From;
	b=oJxq7toxZdTrSnqZIB8i82unmsL/ztl2FKgOHWGk4DibhO7mgLQhK2v9RAFtoHTA8
	 uBP1/vzkiQ4LdyEg7lRnCiDqQhnz0Jmm94c7XWcPp8x47X5krOw5/zaBPsMnpjlkKG
	 WbwWOj/lyoUMrKSeQB+JgH3qKDOSttmuq2/0/53RX87pke+OXf3A+E5iicqKCr77oT
	 ntUUzG4BHVYWbPzBbuKGc44QcPt9MPFfv+PPo9aZQ4JS064iwZ5KfA4rvPGBMh6zob
	 OBwmCXrhFe4hJidpOSNGT9jMtxQcDi8GDL4tNTgQSTJiUws+CpaHuw6Bs7a/EMZlp/
	 m8qHxJNB5ssbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC14DE63FF9
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533673369.21555.15577047591303579120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b77041f0184dba964cf9ccba9a15c9825f0fb685f533f238db6672b97fb8de0
Date: Sat, 04 Apr 2026 21:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775336733
