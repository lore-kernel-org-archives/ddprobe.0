Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3139930EF89
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776200854; cv=none; b=RM0L+MPTt9LKHfhukSoK5HePk1atsRufKwbEy+qnz+waHlQoIDazgKPKRQ0NGPAc8quYkX7DTn9OfubkoptxaPdvthrf7KLHszS5E2nVQS5WkkBwLz/jaFAewHbBAzHEeJn2pUPumXN1eeXubEXQ5wKrDk1MpSe6u8gWijeSvGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776200854; c=relaxed/simple;
	bh=AzRyMJ2WAkKQDKSflOBYIfhj3DJWEPdKZ3CMMEYfnB8=;
	h=To:Subject:From:Message-Id:Date; b=eJiqdJbCGIHAUeZKr+VMRo89+MJoSZ0De56WcFXBWGt2hPHtZ1YYqnxaFtgfPyaRe9A2uzTJS3ZM4gNAwa4mTlAYBGkRa1thN3fRmutQ2OuYSQ+xEHW9unc/bQwnSQUCg3xaa59JcVrsnXYMjITTNHvsnOvwcEAng+fyTA8DJvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVT9SmAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVT9SmAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0945C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776200853;
	bh=AzRyMJ2WAkKQDKSflOBYIfhj3DJWEPdKZ3CMMEYfnB8=;
	h=To:Subject:From:Date:From;
	b=aVT9SmAQrGhnbTCueOE8ccG4cteH4rI6HsN3CmLh8VKjQusZPIdEItBYnVCVWUpK+
	 jy7fkHD11kEcavAZXD5QdN6viK2pcYMnnUwCsTyKYTk+6TRSrDr+VfKCFM1PJnAiRs
	 KDyX0fraPWbNQR2c+cWojWdFHAJLELx3Ht8wxzyGkUNW7vt9FfTEE6Cr0qB0fVsEhI
	 IAbaWmH9+BSVWaS9rpVQ+kjikcB08DnKm8zaBDJ//72CNSJkGU8Ejwz5lN/SKD8zU9
	 MDmCAD3cU9McUk+QckCqqqzG1S+UaXnwz+jRxCotrTAZk/f0OWOWQm5wLCwq9UlQg1
	 wxo8xnOnzksUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B40F9D0F6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620085373.480.2821546691570940921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f34023cdd0634ffb1b784a98cf657a148b8069ffb5da7e4cf9aa6b8dc1a499
Date: Tue, 14 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776200853
