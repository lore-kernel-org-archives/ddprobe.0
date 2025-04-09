Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375E4172767
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744206594; cv=none; b=eF7g/984wxRIHYbpqT86vFqqgauP8SEfKxwvaYr7Jkq05tuZ+IwmDqz3GiJOxliNWwSVQa4+odIk9rIQZ37kVJpANQyCFyOJ5eikLWCvjSjA53PrvIP9UHbmknZ9fdVwiqqx7MK97Q4ZuRBoqu8bI+pOY1LmGhDfk3C1XD5SYEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744206594; c=relaxed/simple;
	bh=dvVQ6DbGB3Hct/oGu+2cPDHkhPoKvf+Y686vDDDzPh8=;
	h=To:Subject:From:Message-Id:Date; b=IlGgPeQUSTx7SYLQmphFQOeXaNocFqdRhdvbpvimy6DF6HxwNMZviFz4cC/SQDYFqP98OXrALekCS6ZB5eLInH2+uVTyZK4lcWL15w73KmTWNR93B4aOoEsk9DjCvWtV1MAFirUXmxAKrAeElLvCYoekoOTG42onJzzKnJXM318=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLDJSXEU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLDJSXEU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8817C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744206593;
	bh=dvVQ6DbGB3Hct/oGu+2cPDHkhPoKvf+Y686vDDDzPh8=;
	h=To:Subject:From:Date:From;
	b=fLDJSXEUkqMm1OK3GhLpAB+7lUWKBGCVAnhteRzhe8b8UjrTbDm3YDTtypL9QGFhH
	 7/xUz6AOm5w3T59SKeXm7FIIWftYsZw/hj4gNtq6yu+SqnvBTe8h0QUDObYno/u8xS
	 i23FpXVRwA63QfBYHTZVwPvHXZr4cXS61CDAHeXxnwo3Lt4EjU19OPo7Jp52LW6GcX
	 8PTrqdlFoJuw3qVeZUno2nR1P7NpZnVTir8uBifrvKnte+Ffjzgi+8IJnSOIxZi1ip
	 /ihtL5MIjmHfpZiCJaMFlB4+qNOecNZEHARvWyAFiVfIgwb2EEzTeg4J68Eh+QfE9d
	 ZSxsiA6C9dc0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B4CC369A1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174420659362.8046.14389629771273472154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39eb89e64026fc68a8d9e10b338b5ebf6013114026e9ab0bca108ba65985246b
Date: Wed, 09 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744206593
