Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F6245948
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 13:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741698534; cv=none; b=YraoQWRAF6ApHx57DABq0RjzRoF271Z/UMQ6PH214WZJ419LLTJKYNLadgIuTWilShhu4tktYeJbqx/CanKfeENOHEOD0jd0i4PYea57vwevjthfEeSerQu3JByNSLcHkts24wANhnNjYQjN7Ju6D3P/t6VAhGAetH1dhDmrhTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741698534; c=relaxed/simple;
	bh=eGkttyl166OGI5uyBxhxJ/YiADWVWoW3Bjj/ru0Wm8I=;
	h=To:Subject:From:Message-Id:Date; b=YaX6t46zjBnnzT2zrzSEfFUtXNWuo8vdGAjYZJgdz0mID/x8JOeXq3S7o9Q3jduihjWZkoNXCYrTEFyN6akNz1VDOVUlPv6eq8cERfcm/Hizw6jFReTcduN6yOgSElKhF4ut5CLajSqgU7tMdo+mVsseid+RizQ2jeZCHlZrxsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cg4ZZOA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cg4ZZOA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7409C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 13:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741698533;
	bh=eGkttyl166OGI5uyBxhxJ/YiADWVWoW3Bjj/ru0Wm8I=;
	h=To:Subject:From:Date:From;
	b=Cg4ZZOA+OyMW2KMlnSpxGxQ3jJ9EuNL21MDo1LDHl9l42oxqi+09qLv3lzIqEJ9FP
	 ajU/O4dMc8Ou9xURF3wYkqi11YI4SJ+GclLTOPmOrkKw6bp8N6bhpIw2U/vgbTZ4rH
	 wMQHIzhfnNembOuOkcZ4QyUsBU0pNnCMhNda1H+w4c1w0lhECgHq49VeQdEacM44sH
	 sL+Jdd40wrNX8dvFz8CyYsUUo+q4R/XhPRGvELjYwgiDF7rPfA9qQ8hYXbzJACdMKm
	 BEWt8rGFV1p2FfST9gSnK1hJGBMOAfzwoy01ID5rbfpzJTtWjn5OTreeP5SQpvmFeq
	 avY2kgIU81ECA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A170BC282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 13:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174169853362.14212.16048862064739924050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4599fe0b7ea0bc23a05c0c8fc47090a63a1b677fcdade5862f878cbf7216072
Date: Tue, 11 Mar 2025 13:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741698533
