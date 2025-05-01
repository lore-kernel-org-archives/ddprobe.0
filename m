Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285BA2AE7F
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746094794; cv=none; b=cpyZaCobhfNLMpcALgH8ZL/Ttb6k2S1ZvO1RM/n+yryZ5IZvR82Bx75uDvY+kiI+m7nJGmtfU/rwWiCLQMG+r5LSEY/f+oQPEMkqKgBcFeU/8B9MxsuUfH31LliGGANUCVnK7wWY0ET0yQi4O2P99R3MY6PgcDqi2RT9iP0pN8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746094794; c=relaxed/simple;
	bh=uWedjtQ34JuEUNt4wjMTgUb1or1Uut+oDDn3CMFBih8=;
	h=To:Subject:From:Message-Id:Date; b=qtnoJtNjSIsaElk5rzT1GyzK0TN12mY0fr0R9Qpx81jlhccpK8KoHepn7j9xCis8bqqEjDfNdO7jtUFUnI8zS5aQCgXhTlz6vX4zvhaWRHD74riefdNFBGoA0htgP39CNLtpitL3B1Xk3LPdMZlUXqY24Q79pCKD2o7nKwz7eKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2R6ylzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2R6ylzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F5EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746094793;
	bh=uWedjtQ34JuEUNt4wjMTgUb1or1Uut+oDDn3CMFBih8=;
	h=To:Subject:From:Date:From;
	b=Z2R6ylzhtPt7rShJFpy+M1xC00fXS0VcsRGDqQOg9zn3s9XB7vYRwqoGqrzqVVQu3
	 hlmZzAV50ua+iMx14poWmWM1da2RbvR4ZSs3L7EWWdV91aS36vplndqzO5XfnGBtRX
	 t95j7CPeHwuEzkiVTZ2UADwrn+IqkY+A77GbSmu2w+/2f8bUZWTUHsBZ/2MoLlkDFf
	 tuWACs1QemzNjHq/CIO0RiGFWCa9YYAv4nVky0FaFN1MRLEmtwv51rb05pl+JeF9iN
	 uI8xpoYbaswDMQ9j37xiRtfcZlVqlldgV37xXjXRc6YGND824I1xaWl1/ojct3hoGz
	 AMaK8N4MN6ljw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D33C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174609479357.15590.16286524187430555936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90947ad6f5b95e364b3d58baeceeb23bd5373c044e9a9b8b613f51248d3b5baa
Date: Thu, 01 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746094793
