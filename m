Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3C53128B2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776914854; cv=none; b=fR0w4nA+bEe+GD8tZYjhe6B+UxGGfbzKj4Vhve1qAFGmIIZh11Be5rNJycOGkfUBPL3E6nLsui0QvwB8N2DiJpjkM9ExprmOqIjZwS4dBYOo015ILB3ymAv5j+R1tloTDZfxmsbJsomoEKCfLFwgPRPKK5JGNpkO0JHdlQYb01c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776914854; c=relaxed/simple;
	bh=BolwkOKqTnP5Nlgzzf8nZNogpsADqgxg2jpBaJpGvl8=;
	h=To:Subject:From:Message-Id:Date; b=tuAFPQaAZIAUBlZynIxTo1gLL23vRq5lNDRuFwt1EaPymC+IWYF7dm4g4Drb7rx2oZOH5W1ALU0++0/2pyu0RA2fZHFtgMjsL5vC9VB8k5LkoDWd/2No6LnexrghYiGF2Ct9caK5Wh88NaUP1WM/YHVQ+huaj5F9UuYyASp7ZyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wqzljnir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wqzljnir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE62FC2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776914853;
	bh=BolwkOKqTnP5Nlgzzf8nZNogpsADqgxg2jpBaJpGvl8=;
	h=To:Subject:From:Date:From;
	b=Wqzljnir9b0/F2d08WFVvN27gyYG6B1nGRPbwOrN7DGkM0wvKug0mdj+OlnmVYY09
	 jjAR1Bjy1zksGApzmUy3Pzntk68MUs7naFSsdAxm25G9KBZ7tl+dWBCAIE/yuxiptn
	 +mboldl+B4zJOlLQCmcbwm+P9nlMsSd9shu0C/F7u1bWODYAUwZo5V9YJZcP0kHe91
	 iFWuJqtGvqhxlwHq8ZvOmpblpZsk1envXomySe7E94ADvuSlpWh/quCQa1Ckke0N7a
	 6bX0bh8aeiv1n9NMOlP/rfTOuT900JE83IdhI6zpAS46imgGPEfY3eo2eeRoWLU+NC
	 mzFxjRv8frfdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0311FAD3F2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177691485368.5849.4693458303622837764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e354cf7977a271e09d9ed552f2307f15117791a75383756ebf652b51a33d1b7
Date: Thu, 23 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776914853
