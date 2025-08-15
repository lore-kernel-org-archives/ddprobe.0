Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160D1317701
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755289194; cv=none; b=QIeW/RMpydG3vyrcdPuuI1O53nKenaK1piOETsA7DYSNNXl5rNgFhVeOLCtcwox/0YsUwgLOHiIHhtZLYjnZ7vOuGDphwdiwl1roNLYnQeMmL/j0NB6ARtbf0WmAOLgequEM5Snju96cUUZfTOHBLTHr0paRXFvprBk28OeqSjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755289194; c=relaxed/simple;
	bh=IEPw4gvjdK7azTctYIzkD6bN38DoPbvfud8loqa9DZI=;
	h=To:Subject:From:Message-Id:Date; b=Axp4eBCYgd9YfJ4adGFvewcpiNWH3WImy8EdyN+7EK5vOcv+34KoxcMkyWOmYCAe225eQCPpWyVZ+bXEBYR9t3E1+oCkRtqiLCixNGhTzEFUhMSbr5zCiMb65NEUmcqieW4noQFKaXWG5JoLN4K4J+4d1shDziKenHTqaO/fo0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkgQvIVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkgQvIVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1461C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755289193;
	bh=IEPw4gvjdK7azTctYIzkD6bN38DoPbvfud8loqa9DZI=;
	h=To:Subject:From:Date:From;
	b=YkgQvIVVrNKsjI/PshXS3M+pguzljhAgF4IbvaJsU9Ga6WIr1cRwmMRbzlqbzsRlE
	 ccvUTJJ8c7wL7LD8S23rhNQ5IVnp8NjFOPqLMCQiUZ+mhDiNmyAvmYJ9V9gESIYCvE
	 gzPGQNdthiVPB46lv6+3NF7dnYvhdTDEaffuN8fILBHYk1tDJPBU9R5ZrF9gBeOYsg
	 kiMtT9SDPPdhRhoP9LXHbWUz3vhKqGDuvWMY/votqFK0ff1kjVpgGLPXM6fOBCsNS9
	 KUFPMuYvd98DAhhuXZQ96LKjenL6J5rOMQRj1R8oZNg+Wdk/LCurvWdf7NUvFLM7XC
	 n8+D/u0OzSqBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF8BCA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528919357.25217.14858045456874261990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e2651b8d332648f6098547f8ea35c6f910ebee53047440bc0695a415579349
Date: Fri, 15 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755289193
