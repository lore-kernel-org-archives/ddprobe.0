Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4971FBA38
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 03:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741924134; cv=none; b=TfK45BXOtqR7osfthr7dP4PpJjPeR3pV3V0yYDEXC8RqR6hvTVM9qvf6VT3CZz/39UYhnNmc74H1372UVfrJcObzttaq4Hsch/i4NZ+76u5LZoaBmPD1KHcvp7dhVVSaAYA3IXKmNdbxO9dCMppSCVOeM6x+XdpOOcR5CHO0odw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741924134; c=relaxed/simple;
	bh=FqeMhHYT6Qo7oNuRf8+fsTn0teGNEDQITLgyCaO+ino=;
	h=To:Subject:From:Message-Id:Date; b=Bdu8ne0V39u+ED8I0Vx760O4HSWiLPL9wB2T0YrpGxcJEJa1v4nsM7kWzHDClJJmjvUwYKbkvbuLU1otB7JKpDdiacIYpOavfAsBGOhXUUeYAl+HvCirR1bVaguuakc8U9BFbMgT2PMwfrnHeCcviKx8i8sB+cpz1I3NHGbH/3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8ucqeeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8ucqeeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF26FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 03:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741924133;
	bh=FqeMhHYT6Qo7oNuRf8+fsTn0teGNEDQITLgyCaO+ino=;
	h=To:Subject:From:Date:From;
	b=J8ucqeeYzWLTkIYTCtI//+2d3FticMFUW4iMxBbfi1WN7fA44mZgJ2GFI79OTbqN4
	 /YP0qeRpISnKevHjgDNI+jFw8/ltHGY9lnfHhEd21ijjcTrlJgbhlJtw7OwGHk7B58
	 Di5lFYLuQAy/FFPtKzZdRWW8gbfBVVWQ+8Y+jAPQ8NiViBT+SAmIP676iGZsf3x+mf
	 OL0J0SOw+HZHPoCusGypRht2P4ezV1LDRq4nfcdzxfa3PDefk/NmJrps2W6ItCZYiG
	 HB7Spt5PTCKp3BZgmvGs4I0yAz63InOzi416+F4wxDxSdShho4sAJ+Lmsy0+zXPLen
	 A91kEJ6l0kCew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D78C28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 03:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174192413360.19900.12067738041901497375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c1a2de1f0694065720a735fda13e0dab6b4b2ec7ea5da254346942c989575a8
Date: Fri, 14 Mar 2025 03:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741924133
