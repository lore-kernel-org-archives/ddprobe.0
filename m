Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B1D22615
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745569794; cv=none; b=ZolCKqe1ve1rli91K8ZXTHPkNX6wC39ElsoNi6L5yK+3iq+MQwuQRwFB0deraqVxN7Vg7rs88DMPuaxe8A2bJeO/axr2jZEpLSMYxYvL7gieCBKM7cQxP/gd2AKTYX+j7UG5JdsAPnq9jBTgpAhPfqRc2Tl995twS7GIV7EsZ1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745569794; c=relaxed/simple;
	bh=fOfsCl9fto7FWHUG7Ns6Be3GieoH6Z12/RKKehTP6YY=;
	h=To:Subject:From:Message-Id:Date; b=i0UxMLJ0vq0HtfoKqtKTOFFp7eQNuWTiDNzCI8gmps8LqI422lftl9Zo5Oj96YJHOg6Zgu3ASUjj4N0KB1+i1sP0LkfVxVdOTgNu1JQClTjG9X5TneoptBmHfr6dzc+i+N486iqoPqRUMXho3v1unHah3kUrOBvOY6ukVeVb9mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PE9RRVDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PE9RRVDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D616C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745569793;
	bh=fOfsCl9fto7FWHUG7Ns6Be3GieoH6Z12/RKKehTP6YY=;
	h=To:Subject:From:Date:From;
	b=PE9RRVDDkLpWb8vePVDi8qglGxWG7P8hxj0/DpMwx1l+9UPBUbvezMZqj81rnaaY0
	 37jt+U3Yvvb6eOw2RAN0V66CL87ElGSkQ8rzDCrZKwflb5VH86+/PMUDz3r679Cder
	 C3Rna29pWg+JzEwVO4Se5Lg0DWAwageTUqv6SfKnEGSu+PYEmzX3sl/Da5m5//+DQu
	 6iDmFKdCUXtzTrskccTmE8gS0M9TCqcbhi5LzyJSb4LsAN6pA9UFcXt86VXEFgIFp3
	 saxdKqQW6JI2jriVa3GyhbaJ+SMvLg2Jy8t2yRkYtN+JqDpdq2iVPmbHZyhvoriin9
	 5egwhPQkXXQdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9AFC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174556979358.26008.17350799666009145433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369c5ab31c23db0c3dcf10b790073e2bea1268bd69ec27dcd7ab9a9e2ac9a701
Date: Fri, 25 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745569793
