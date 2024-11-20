Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB0CE545
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732082154; cv=none; b=cpzMnW5VuE89vZe5f5zUnsDvSSfU8+praecXOeeK/X6EqfJC4D29XI/f7uCiDpbWQL8ZuQzvhihyXscMYikHPg29crxLthPkyQ3wXLcSefY6CM10/8IUuKR91beC/nulGiP5C/j2tlLk1uPIcy+W23w/4mRz2FdS2J9sVQFG2Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732082154; c=relaxed/simple;
	bh=RgQdDMLPEok6s6lbNIVddseZInhmFkkSe6GUKr8N4Oc=;
	h=To:Subject:From:Message-Id:Date; b=AjaUc5XcyF3CYJ1K8J7IpESfHooAjbvaAhaYVf8v0Pv05l7ZF2uRePGdBiMEUMbdT+puT0zyVDEp0dhhUygs71cB9Wg4gmTKx7teTsOTIUO+rvLlPcrpA0gipcHo/uBtt4AAQ3VgxootkdvpOcRpVYJneC7YHscJq4Szb64Op4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvGtErGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvGtErGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EAFC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732082153;
	bh=RgQdDMLPEok6s6lbNIVddseZInhmFkkSe6GUKr8N4Oc=;
	h=To:Subject:From:Date:From;
	b=jvGtErGDsl2kb9MmaAfCuG538Gp6DjYEMIv4TIZ86OedV4KijSLL6zFNK0LbvcDla
	 lzTSRry4kbBhoWghPE+Jv6fzn+VNNeJFny1RvemSeeOyrhHlZVXCGR6Do1LVcFLVnU
	 FoXJK6S/fRUwU6ly+YbpPEyTZaVXpN1arO69edP08UAeMmuJ0C/uraXmFkeMcO+wHJ
	 nYoU+03T4DVrLDV7jiz6N2t+fyx3fo+TNp9qFnoVjpY6/X1fs2dilvisoVXnmSgfva
	 g4+5wJvlX/DSikeDs9CONoM8kPsHI9M0dn3JPf51chpRtwl8aO09yIJL7nH7Ok4WU2
	 2KVlXAaJ46K2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9532CD6E2BE
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173208215360.25805.14025228312329310656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a3969f1e5eea91daff63c0ff784add194940e76c71ba9b374ff0d7786aa53d6
Date: Wed, 20 Nov 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732082153
