Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF70FC19
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722768354; cv=none; b=LMKz8XSiLoKfdSWKSyHraz1ALklkIV4x48jJqd9tbIwKHLjQ7eo4GkfE1MXchHyjyi9XnK0uE8nxXGNPA5ewSbAwquAT2FK44JU1wkckQrvAKfJ3WhXJQpYqTDsVp44omfSOSqXIFJ3r+okHRocL+QN9xYhu6ywZZdDHdxHIT/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722768354; c=relaxed/simple;
	bh=APbbPntUkqk9sONJSOva3Nvh4nhl4e5jazX+9myHxYg=;
	h=To:Subject:From:Message-Id:Date; b=Oka0wRc1Cmni3EmIjyBN8PyWX3ZKS1jWST9obSCdUPamS/daG093ykOHGvuAR7p8R53ZGPRDTDhbhU0f/rPugK48z5mA0HhUDajXlf7imU7g6KphdDY2oNZP7LQoQrXBOcGZicIJYQSBrmhuzFy11rQGsAUi4ZMWncIZZIt1xBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIqE8swi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIqE8swi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA377C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722768353;
	bh=APbbPntUkqk9sONJSOva3Nvh4nhl4e5jazX+9myHxYg=;
	h=To:Subject:From:Date:From;
	b=bIqE8swihjmAH0f4f7wA3k+peAA8njLRETHN3XKgNy0CIULmKGpyknY5HLGGVYSQP
	 slBiQtmlkwOmHrNAdeMI2WWPuuUIhFJIlBl4x1UEOf7AoOGbkwNwKaB/d6xm7uRduQ
	 hTFwAwP35J4N1LqSY/s2SFvD7tjCx9mQLGfgLWM5PsXaXmPBg8KiXoxVh2BADpJ6+q
	 DvSd6FqjF2MPekIsbqTVwkQJLjBI4joxqd6WiZgfSTbK75+VeQe9RiN1WoNCpDgEV3
	 Nbc3b2TEZyyuD9DJCWgt8tBv0+ntKsSIF4hcjSyrwCM8RQV0DAxFyIy5+2kX/ncqLT
	 SPvOpMertMzag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99956C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172276835359.22131.15231788265121809000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1391298ca5b1bc660805f79ecdffbb35798206b42aced211c77ce648cbf8f1
Date: Sun, 04 Aug 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722768353
