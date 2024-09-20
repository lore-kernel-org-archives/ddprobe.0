Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFB279C2
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726806954; cv=none; b=dZBI7HeHrDJwwZZ8ZJzxq7JN0pT1LG/DJlGrPHte7ny90lD5+I1ZOFpew81Tx1prDyLM0LMUWMNPldc0UNnmNGFANOkDcZb83mJZ3qk1ZcIfDC1+6+cTBSNoaT2GPIiVeKvP45fJI8DUbMnul7986DkcahzvULLR6cXiIOnCNAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726806954; c=relaxed/simple;
	bh=5fQ7S8F8siD0czTn4fXilR0kaJY3B/5+B69OWUmSJPY=;
	h=To:Subject:From:Message-Id:Date; b=B+w9E954TC1BHKPhXhZw63UtXShZwAo3xu5z18S2wwDZ3s34INqdvYrFIBE4F6AdeRzVCKNP8w9h/vthK9qFNAy34hpw+2u83gXS7WaS07w3aqVBPwG+LLTz+7vpQzO4qRPjG5/nLZM9mM8b8WOiWexVI3Aohrmt9Lktco+ldcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpyLz0oo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpyLz0oo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C29C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726806953;
	bh=5fQ7S8F8siD0czTn4fXilR0kaJY3B/5+B69OWUmSJPY=;
	h=To:Subject:From:Date:From;
	b=mpyLz0ooaF1DIosP5Uq2doltoW29yIg/67CA/8R3X1EmFeAwuwHvtndwEp6uQiUId
	 z8BXs3jpvZPdVxiSKZXY3a7GJ9+gGs//zOsS86WAqoQGKEUadDf3dNY2rSsW6nJm4k
	 T2i/nx4hJF/7BEawJ9zZ7RiRndllE7vBHa8oWlfK07twfMCl/F19MFDroSmdGdpVPO
	 xx2BiJ5o1sZgecwAr0ZVfKSPV9geQ/91zUvN3saDrcaYA2gJjUZm85ayk6VlfzOkXl
	 FSRoKjxoROMDj8U1Ew2AfYES8sIuZaLIcM+WENMYP18Rki0KX+A/3dhAH28bkYbij1
	 tAC2IbgLkYGfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939BFCF58CC
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172680695359.19084.7772975675709767130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357197128d63a5ba0b05ffd5a03699b35ab737a044cd2089439107d60446cd62
Date: Fri, 20 Sep 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726806953
