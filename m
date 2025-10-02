Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E343FB31
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759378794; cv=none; b=h54Ia/GJsgzCGdm6Sx9niSrxO/vD7ovIW3/Vb2Q7UHL1Thk/uEVizj+6XCoKY224JyWsfMjcgZzsOnH9z9Dnlvv8Sk8Qeo48mbMrAG5gJMWTisvAOGAeCrl0NS96IxVEjHzUMojtG0RlCv58qMmr4MRZZfBWvge1uZ1NYJj+3bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759378794; c=relaxed/simple;
	bh=uhBxtguVSwjzSBnNtCX2VcEIxrDTANB37paKsdcA5V0=;
	h=To:Subject:From:Message-Id:Date; b=t8fEZmHlnmQwRCz5DPmv+sfw6egk7EsgVnRCmoDre1ZR/HgsWZ+kGgLqsROwovTWb5VGrc5fFBTwrkVGojmjGezBq63TR3maSgqWlDed2l3CIC+r7sww+5A2LHWEMK7GnW73fdmKiIH3h2ChiIijav+Qf12f+dDk//hDJDOSY4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqE6tcsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqE6tcsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C047BC4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759378793;
	bh=uhBxtguVSwjzSBnNtCX2VcEIxrDTANB37paKsdcA5V0=;
	h=To:Subject:From:Date:From;
	b=PqE6tcsBE1k3bLjGOw+gHP389LrA9HF0PP/Js5dj3UL7c9RPT8Xvh2rYUQhI6sb9h
	 bPZCIEFepOXfpSW3KD1c+6ULkcbwGtYyi6GTeN/DHKce2KqtvzE6oAUFWbArXtxJXf
	 JaWYqFtJyRE8UrY6+2LXhQE+uMzpHc6etmxHkfsOa/Qp9dQyGttI2U0V56+ZMKi0wV
	 aeW7iPD7ElAYdjOlKmR+1z7jYoFFT4EnqUYmxYGuyPII124/k1AnkSkNqIHT34+e+B
	 MaoaLuXqA55EtOKWsYq8G5ScXhnYqO+NlC77+jR/mx+3nK+xZHbRBj5M3QIsuS01m6
	 CTyKD+QokrKdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DB7CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937879362.2309.11677649173519413015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d88fc28ba78853adcf1572ff8b75f5e645846833f8c6ba40e97497e0427b6c38
Date: Thu, 02 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759378793
