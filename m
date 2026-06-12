Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEDA25C804
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781242594; cv=none; b=Y3bLdrYC9V5xU2hUlXJY5cYyrL4QsR72OznK20GkfJOX5kTwE4mCO+jCm6D7b8Rnyk7JSTL6d+YekJ1NMDxDNRV7yrsNADmYn8+n4ah6lP+h/TL1CXOYEPeqEh7rsHv8lh1nZ3z/JYl9hJNYBeUcI8+cryyc30iWz9GnD5VtAuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781242594; c=relaxed/simple;
	bh=lfVmrwMdfPBKzA46DY6a2Hv+OSL8vre4vffNm1TkKKQ=;
	h=To:Subject:From:Message-Id:Date; b=nyBxzTl9niDpRtcQ+biuiG2e1GUM7pxsJjrV5eMo9bAM8aQqTBxiLPFyYxWTE5/VVvgd1inyHCqOdIro1GNSaKWnJXQNVJ64dSIyRDFyHOfowVJIk7V0e9yHRsmJUW7qxlm9r+nkXLKTGcUqfxndsaODxtZ7JMWHJgNpaE+E8c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wu9t9gol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wu9t9gol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04BDC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781242593;
	bh=lfVmrwMdfPBKzA46DY6a2Hv+OSL8vre4vffNm1TkKKQ=;
	h=To:Subject:From:Date:From;
	b=Wu9t9golJZ5I+2FyQJJwQIul3cKqed6CJNU2GvKsYXsKW1WYpIZEY3f7Zlus13Smi
	 +C/DoswcAC+yg6WGdovCEK68PFSO9BWoR6kXlDG4tP0vzmW41TQpxK4vhT+dZ+sitp
	 uwIQJVQwx+IbeqXE6oF7nQACb3LFKvo/Qtl8r7z+DJmXMyiUt592FM2slPXDoEUile
	 l9CkAS6QB+uX4FRFKgH4YBcZLJXCNjXUxctmr03sz7JGF0x1RRN2OHhYVg26THMYub
	 d0LPtHM/y2t1wZZWOA3MXA/NnNZS4dSJuMKwf8he/uTofEf4dsM2E+htOn0d3KN5zU
	 emWiDMQRox2lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8961CD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124259368.11715.9448818594334057537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ef10e8b8957da4c771fa841f314d67cb3ace0200f88c9923611760e7dc9b00
Date: Fri, 12 Jun 2026 05:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781242593
