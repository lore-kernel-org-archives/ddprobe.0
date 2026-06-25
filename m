Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABA21CAA78
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782359254; cv=none; b=o6teZl+U/lohX4s25dXVYNMaG3rOZ6n/WEfdC5Y2JK1i8SOR3v6CZ9OByqbr9RyWUBXGq8ZDpqO+70zFpP3o0PhZ/rLEc050R1c4JqxwcdjlusiP3xlcRbTlPetNWlgCw8KB7Ye7W+HdwDMJvElXKbAHhPwlnt6IJ18a6bd9hh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782359254; c=relaxed/simple;
	bh=7l40YUFgHv0JDkxmnSXgKUHpzrSYoRzq9AI3rZBZXQI=;
	h=To:Subject:From:Message-Id:Date; b=ju6VjjgcWpxSCEtz6AsZdctNBMY3uSOlZbaWQnIjcceuwbwXMo6sivol0qepXPDGHSucp0N2W2T4RsJSVmJMEx6ev7i7yvU0DWYwLG7GHOzNPMcasce/2FWr0/tGnpoo1SJjsa+BpkFBRMRh6gRvWw9D7efLjDlKMi7FK+4JIUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fg2veo9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fg2veo9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB19CC2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782359253;
	bh=7l40YUFgHv0JDkxmnSXgKUHpzrSYoRzq9AI3rZBZXQI=;
	h=To:Subject:From:Date:From;
	b=Fg2veo9Wloxt+F22Bufj8g7h4vU31DG6fOHqgvfu5Gvxb91yGLE/BMkr3AJDfDOxG
	 ePI77/sZldBnJUiKWWsIgS3fIPtJJFg65Qdl0qNB/qOhGH83t5E5270kYgQuURnOeD
	 iFhIAuDs3ksdcIhHV8hitE8LFMFPaZeCQEbUF7r0GzMC2as7UYo3V1AvwVVAQRuGLQ
	 H12gGw8MiT7NlPjMrYCDEvmqrtAJuzTe86+Res5AW/tqQSoP60o6vo1zNJMGOggb24
	 Z8HlPmA+T1K1SY4jrehPV7YVrbgqYSsL745VgBGnod2wfGuRkSC0gKrrYTYEbg9rlk
	 ZbBiBzlyBiFEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE41CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235925370.31371.5160271592380068511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f81be3c45688129d4c5bfeced0c31a18947134b73be4d93c2db776fd4e5f899
Date: Thu, 25 Jun 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782359253
