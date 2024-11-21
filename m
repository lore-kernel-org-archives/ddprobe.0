Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53371D0E20
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732233353; cv=none; b=LjpqdmTfyPriLd4GyHG46OzDNqW/QZ3/C+fAFHG/rHVvoFEgtOnWbdKjwA1Gs+kDWXWrA7QS08yFvmQwOYDk8impS8jGXc2gloPHHWliECHRsvpP0YW9n6yhdY0ETARIrcZuyUbAYkdmH9uvNkrMJCLBECx5NOaYIquSNN24GuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732233353; c=relaxed/simple;
	bh=Er8ptAWPlZEv/Y6btcOO7gyxJTPA8j/hnN5Xnmm+C6w=;
	h=To:Subject:From:Message-Id:Date; b=bCm6gVPUCSjSSJrt6pyKIlvg4enjec9SHOO8VlzVcB4+bvamoB9MMJcqyBBBQkBW/jmaXlANru4TW/SCwrPshzerGhp7E9AHfpAMfINauISwcRd88m1oqVrwi95+hAAw99rsMEqBD63W5HY/RX+KSV36morhr/CCfnHtUFyYcS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9AISdWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9AISdWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A939DC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732233353;
	bh=Er8ptAWPlZEv/Y6btcOO7gyxJTPA8j/hnN5Xnmm+C6w=;
	h=To:Subject:From:Date:From;
	b=C9AISdWwVXNEaBHyyvOfNQvRN5alzNRR8V9W2CoHA8h26LHZx4H8IB1+v7vcioCg0
	 6RuQYcq3gwD2sfFhAbeeo7HKKSDF9cW8xB/Suuno7yTErEZFheYWSeMn+PRA5fvPWw
	 C+Ns0b7adfM90IC5BUkunM1mfvfhUIsw1Hm3kb8f59eD3Xp9TSlRAPlM6HuqXp/EgZ
	 rixaR2uRwiwJw8DDbe9dYah0Zx8cGLk/Z/FPNy/Xa3tLeL4Dhxa6PfVuqX23ochviV
	 oxw/DOQ/XscoornsfsTwrF4YtbjlihozAqT0db94RKHnLgAGrrEpee3WPSCxsM5vEU
	 I94p4lU7typDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975D7E65D0A
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173223335360.27795.8614761271878113123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c73d50f2ff57d09f3b727b0f99a6e3caf58cfa7ff7705fe978789524cb5c198
Date: Thu, 21 Nov 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732233353
