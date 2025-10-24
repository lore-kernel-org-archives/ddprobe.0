Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF05C2F5A27
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761338993; cv=none; b=SC8dv7TYfZrYny7ZIS0yYDyfyAAkIW4pP6xx8E6Q/pnUC20NfLuEJFNBTNfYDJzEOeR1DHnXbPjV+yURTsfzWmces6p8coGZ2sf3SCNSZfyp6uCnVXf5ADxZ2MO4PszRjfgmsBPCKxJqmDEKbALi6giPHkMIKoub8tSoWCR94CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761338993; c=relaxed/simple;
	bh=uMvee6kuxGtleUJDLsmD2gmkUDziC9/+CQ7GBh/OB1o=;
	h=To:Subject:From:Message-Id:Date; b=Pj91tKpwcEDQ1jk5gtooO1/+J2fCONcFmPkrQHkHmPH5EH9UKjWsoCskfzn27X8swrEaqK1DvShdrp37BWAu31CR5/PtywCiVcLkq41VgsUJnzDO6djdyQ8B1d9eB16dZgLLegdYIWRSYJN84Sj7UbR4FXPCzYCYAHY1ogeUAfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khPTOQTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khPTOQTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F10C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761338993;
	bh=uMvee6kuxGtleUJDLsmD2gmkUDziC9/+CQ7GBh/OB1o=;
	h=To:Subject:From:Date:From;
	b=khPTOQTEjGepSRpq1u7Npk4QVTb4lN7JzAjwKaNJXaZfV4txvnl0xKQdv2xVjEWn3
	 wthLyCZpue5G+w+zKRhFsEMHeFeR7lQxslCPK41hae4Z7dutpdvitJPxZJcUW36HcM
	 RtkbZLRAPTgSDRdK0kvuPjDREs0C84Dry0Sm4S+HNjLLCvAUkNh0QMjwJ9pdlBgSnK
	 bQa6Cjlq0U2Hf9cnaLPgFtUSdy3UDLmwQsAofCZyN9GrSm3KwXqU7gpHRaHCEQCU7K
	 oB2W3tQK0a32AoQzKmY5B3oyhIOQYTRuPbIxGzGe7hAzHEZa3qZj8s6opgRjMEKSul
	 qZ3sHflfryIRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939B6CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176133899358.23163.11136954462203920333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2be3e3979ef05d0287a9608018cc36b370f8221445c5f3ef231fcaac9e5859b
Date: Fri, 24 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761338993
