Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6F5320CAD
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788649834; cv=none; b=QwIuwXw+13VmtOfRTnjf4AR8FiaOBTeInNV0n5VTLFm/BEqwfRD/JhdQzMDE+tqjXiJhayNO4Et5ZaiYEQKMGkzxX8byKcapofJMduHOiXWfXVe7Nn5ZnQoQxzsgAAHGIAXsxTsxlIgzEpZ2v9lN0zzhwrdMBkgWvnyNqPZsB+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788649834; c=relaxed/simple;
	bh=hl5dKrs67I7iDe9wygOuoNrSjdSU+qDjBl3QdOaZGXE=;
	h=To:Subject:From:Message-Id:Date; b=BJmuDgrJYbxPkN8U1vB9uc4TkXtb1S1ikbfzeQONQcqsu3JeqSxpGeFKsYiW1ylBMj/rlQugT+gnYqITofcsC5TsTTCkk/Bjv89ZTm2gxf90v3FLnNn78G9kr2IghxnTVnN6sajn/nNey/mUTZ2Nv6yZxfaEUHIMpt2U3XOP0R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxpEN//A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxpEN//A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC35CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788649833;
	bh=hl5dKrs67I7iDe9wygOuoNrSjdSU+qDjBl3QdOaZGXE=;
	h=To:Subject:From:Date:From;
	b=CxpEN//AIdZ/yeiQm3JzxhTEzlvv11B3yxYY1mcgn59wyC5cD4idTKWFP+CxFBJQd
	 TJYiOB0+/gTfXlT1dg6IgmDkFAH/9Enxwuq/G9Zma/CPVxGrGpAlYOcxbLQm67RQCJ
	 vuhxSC2uv2le6wZtOXD/cPVtIBq92YigmDKjkXL7e4NWd2OtZKqeCUXhBrG07lal86
	 7107q0buL56tfoO7N3FNKnyuBuBP/HXjPWFoTt8SCxTLOOQQGWCmLB12VJqcGK5edL
	 nPfSiYYkAZCqWL1Iluuc78PfkmT2g7L7/Oq4fX8AjN7SG42rs98DZnfGfs+wljwpTj
	 wmGXLZTPRh9kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ED2C79F85
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864983368.13509.13374786863990132455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe1d3cc737ddd8de090d68b777e5d4059431d91315e772664ac451a39d65e372
Date: Sat, 05 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788649833
