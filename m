Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C3218E1F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749049194; cv=none; b=bghnpnnKxwfqpkkzK+TuI7p+0UVxHK6jqIWSyqsIm6j9vvJ5mSfkbagMiSUjts3BiYKx3SI4u/B/F0d+crnnSWkZC+FPQIotwe7T2a5KZrkmgX0Ibd4CwNPxA0FfOksgAJlg9TPIyl15/HPRKcSi0TIFSf9uIoi1sAB0zwqHZdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749049194; c=relaxed/simple;
	bh=tztmJhbC+I9Ws4eqz54aP2TyZTE66NQkT8hKV0zKdkY=;
	h=To:Subject:From:Message-Id:Date; b=Shz5RvACJQPoWSy58QpBpaKmwjx4+bO87MIQnse+uaqxdbX9ozmzuq9v9kpHBIeQt2v+sYK+U+ltGKo86gSci6BLiqCobE2vNRqrSUSisulMIHwOtiR+Uzek+5ctTcO/B7+SD8mdc1/mQ8rk0qdkMJ1GUwBj116yQMApN4QVRcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mvn7xqLC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mvn7xqLC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A371BC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749049193;
	bh=tztmJhbC+I9Ws4eqz54aP2TyZTE66NQkT8hKV0zKdkY=;
	h=To:Subject:From:Date:From;
	b=Mvn7xqLC8oXKTeYusX2ACLasKdLLeTWSXxqFN2WFoJFOseSiO+J9cAcE7iDDUxd4F
	 yaBo2cyofyYNsH9N1/w6BEd8P/m0PgEfGZkc+fi2IhCSg/wQSxdBLkYUbcyyNhPw+p
	 AsabEszIHzcKApoixnbcYqIrJEcureq6gidKe6YIpGsJyrlmw1Kpsafg7nN6gp9yKW
	 Sb2DMpwjUNGrlN2xP9v1kY5SRJiodDolRaELIr/SFGlOltf09kgE76bL63pK0TV9ur
	 KS1oLj7bK05FwOM7/r3LuHa3Jsm03HATwen80sRmJMO63cVjbjOgJ1uZBj5KGLKb3S
	 yih8KbX7cI7UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9256CC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904919358.8633.14574442347371678671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6691540658035bcc2fb43a36a85c094119e77b48103ef52ead6265d02550e89
Date: Wed, 04 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749049193
