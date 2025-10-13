Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C8727144E
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760361594; cv=none; b=WMhi8g88qm6RUbZJ+3DWBB82pbtO4DA0RGEioQjF6QqNcrjdlKXFi2rSVWDrN3zhHvQKU9jsftArN/BQRKF2l+letuYKR/RJ9fT/vXy3uhprpA3H+g0zqbziy5fFFwAJhaOT6anI0osjo/19ET8ct3IoAOkB1xAJsiBhkOd8TzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760361594; c=relaxed/simple;
	bh=BdmP+3YEMkPp9rn5fMAKfgue8hplAQQFH3wFbHQf0q4=;
	h=To:Subject:From:Message-Id:Date; b=G899ZzWB+JEmPaPrxM4JRnjbeV08fpOVpHlXIN8jGKLemoh7Z+Mra9EyVomy2lx4Mq/9ahutfMmj/3JsSiXyGfc23EMbT409Up2f+vEMyaoN9dCTpR+5SSe7Hhi9n4izHlvDKOYHMriol8eGUg2RuOiux9gqBItDeA1zN8KY7P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IiVv/MPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IiVv/MPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F2AC4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760361593;
	bh=BdmP+3YEMkPp9rn5fMAKfgue8hplAQQFH3wFbHQf0q4=;
	h=To:Subject:From:Date:From;
	b=IiVv/MPlxpTBCqqU4B7woUyL/b7BodYielo13tnvqYggHtuxlsIDxLavnrRKUnjrQ
	 pPu9xRq6a5nmOI9pGA82HbR4NKKtUofu7oWJP5W4ib+vSfB1lVq28dl7NHljaxb5Sf
	 lBDrU6uceFB3Ee1xB1vCEqmAJVdpeHbuhRvsSY26ePqvnENkll8VTdVOWf3JpOfxO5
	 SKtK1z91h+ZuZRCx6cPUsm6dVsvMHfO5ZF0yXYlpTz8aevZP2YUkFyvBOIVKopoZhb
	 SsSqSsG89fe4RWBAny5GPWfBn9RIyRVwG7gRxccaLx9pMzA6jc8XtY403diV7PLpR0
	 k0oRYviL8BfdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9DACCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036159357.27526.6604172896063308005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a997e1bf779d18c6fad8f1c6606a89a1aa4389db299591e776590e3be1d78ed
Date: Mon, 13 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760361593
