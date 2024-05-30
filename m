Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467AF47A5D
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717103663; cv=none; b=jjmfc3fvvm9b3n6mynXLZ5vSduD295L7xt1CtGuzukqFUv9rzDg+VZd8DKczhFz6gXCdamhlw7DoOfJ+Ipm9iM691n4VUOhzTCXZ7w7RtHSpN7H8O4fFrLl6lzcLdlSuZ5N3qEssB4pAvxiit+32rwImsUfLV2m5tF/dN6rGYWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717103663; c=relaxed/simple;
	bh=GD9O+SYE/TKaWZn/LCvv6l350x6H2/rY2BY//kCUkiM=;
	h=To:Subject:From:Message-Id:Date; b=uzNTaAAl7cAjq0bQI3OXlgrfAhhIPYqC0dpktRn7jQPA8HpteFURJt3DTcVQaa8m6wBXe34nJsdJYqagiCbz7BVHtZBqNFnewICAAxnIHpibJe93Y/8wjpA6CtDnDaEbB/BI0a8b/VMxNMLjKhD+KAjT254HGCBHGgYd+bkQyug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RINL0Eiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RINL0Eiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC8FC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717103662;
	bh=GD9O+SYE/TKaWZn/LCvv6l350x6H2/rY2BY//kCUkiM=;
	h=To:Subject:From:Date:From;
	b=RINL0Eiz27x9NhffVXKIwUE+tNlHNIwRZh4t8SYRFUZ1SDlfHJw7A3jkshiYSLPHw
	 VOXAzTQ8eOD8vv29HOhcea1T85bjpBwRCWka4eemKEIO+a6BA/iz+QghNMvAe4RR66
	 xvv6KWbi+9HAtsfRiVzVZYG0hCGbRkiRg0+65m30T9iuAOm3ifTpN3tlBNFPJbzPWb
	 Wq5sw0IeT7rG6yZnJ/EG3anSuFl6Hidgi0oqU8csxLejnB9dVCp1pmeemO9em3StLd
	 lwFiIPCSYdBA9Hi6jHoRK/R0OF5fd3MJ0JHhuEoMBE3tg1qq9JtNe9sH2Gv8+uefFV
	 0o2jCaEspD9mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC7F0C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171710366276.20021.13478305114190215166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ed74277c2d8e3f1c216b77737d2b01923d39b0eaf8b9a8c7685453ebacd379
Date: Thu, 30 May 2024 21:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717103662
