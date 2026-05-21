Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D1328FFF6
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779379954; cv=none; b=Rayk7dtzVNaietqyvo/k37KVndBWu2goKIKUuGP4WBjLBnNO0+1fxjVdqczg787QJqMtuiPNVZp6Tvw8GGKs44yEsXDccdLb3Ov3Di9zkaEc+ldo+hqtcbl+1bcqqvrv7zIhHehcuVdUDFq0wQYQRh9CZ9V9ihs3SF5gjY7kEjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779379954; c=relaxed/simple;
	bh=qdR21BWEjndsJjwGyR2llhl7l9P3XT9F6USK4eLMolg=;
	h=To:Subject:From:Message-Id:Date; b=jE+GkH0K1ZGLA4eEsxV3GjiSCgvzPCqgX0W331SroP1rujVbkcvvksPL6ANhL5Dkpaqp37YvLHKsJJt3AwV+FUrYAfZX1VdzDxQ9CISMrfgurcZb5yfZq8UtWJBdaYMgyY8908Gi++74aZEwcqTFegJD2s7+lXGVKG5UFGGhVuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBa/PZsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBa/PZsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63DBC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779379953;
	bh=qdR21BWEjndsJjwGyR2llhl7l9P3XT9F6USK4eLMolg=;
	h=To:Subject:From:Date:From;
	b=bBa/PZsKSZqALRBnlKW1OvI0ApYOC2VAPK3NjO9APQDn0TG+4c5xLsVb9msCIBjIi
	 joXwKQkIr7WLsq4/uOKHfEtEgff4cJYRVLOZUBxe9f35m3chqjETO74kcaGmi2471P
	 iZ/Osri0crMOO4nPsfuYgouxyytoNT6qexCmlkvgkzbsWOw6wBbXzv1KEcci4zP8Cu
	 O3EdefVvz1RoB2W854nxwDomjzrhtCrPt24Dl2aKw6P3aYvwrGXWVeK3/LXGuNIN1n
	 9d38xCa/1Xe95KijbySIdvv0H/E8IiWbZ4VmaDzsUJluOoft39eNOL1V8m7O+NiaAh
	 PK5nqBlzH9Txw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC178CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937995368.11818.9286728937395510566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde56dcc46afc42e50d1ee5c189174376ff7c63fd112faa4cc928ac10aca5cdb
Date: Thu, 21 May 2026 16:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779379953
