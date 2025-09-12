Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C2C301481
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757677794; cv=none; b=UYRCu8ajBEXV49JzVNi0FJ3Mh9tYIwEH5T6fSyx7k9lajifV0zd7UkEcaHnswZrtIb0SKIldxU7e7RXXub4g4F2v9YaiB9orUSTsbRv5IiPN604tRDZLdw86QQVoXeKfLdjwmbwyMLwcF0+y5JcZBosXUKrmT3sPFzMLADw/6i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757677794; c=relaxed/simple;
	bh=IlMjmxuG5Uj6ACpl1OHlPlBW0PniXnq2xIec9V6ylrY=;
	h=To:Subject:From:Message-Id:Date; b=UnpLfx1qlMvCj+RuAqfeyzb+ykWRuX96nYa/nTyTbhvan8KLdPpQpadvHl8W21NDVN0c4pQ2QmmLdqqNm10tVl3v7vdqFt6KJuBlXIio+CPu47qg8K/8CGYzwpqQoj5Cffzea5xQoeTQjS6hGS+33li6jlVThTJgoD7dXPw6Da4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtNbaMzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtNbaMzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02F8C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757677793;
	bh=IlMjmxuG5Uj6ACpl1OHlPlBW0PniXnq2xIec9V6ylrY=;
	h=To:Subject:From:Date:From;
	b=gtNbaMzltYMjKMREP5w7dSJdw8mdGLshCFsbXFZhPysYw9lz+jD3Ldc0fgykGYrCr
	 pYwioho2iooDVnR+buQmhslNV1SsbsYNktXk8+IFj3Eh3E5B2iWXCq+boFRzkNxS6d
	 fg6dIfjqKjZFuzin9UMEZMErOEwjXly8og3MPqSWmiaJ4RSmKdBYqK5xtW0ssEycDp
	 ERtTsK6YSaAo897L0240qXjRmfWK4Z2dLi9CuOHxEzIu0Kkz5Z04yL2cSbnAl+iTg1
	 4BqjRz+jOsdHtnDDnC2sdU8pjYbMW1r7/SXevFGrFKIUDQ7F9hnnD05Gq94YYLHiiA
	 EIMHG3gftnoWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB44CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175767779357.3321.3146808367153200781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68011573292d312d00a3bec795bead7a45cd3b12fda176736f668d8dc137a2bc
Date: Fri, 12 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757677793
