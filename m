Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42290DF5C
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738784754; cv=none; b=HGa/1UrOMRyfrzooKJb7XwNAAldmpDXlWcLj5es+UbD80tnR5TTTmfGolDA1DuELwOVOlEwbdK4G4IZsAxj7fHPwf6Dg3diLJqCIbXWGnHcWxB6mG17tIZVjwR/L2Bod8BUdPG0nPjlrfbxCDq6DYpri2JxXYqR7+UJeYp4cCBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738784754; c=relaxed/simple;
	bh=iINnIeheBUoLEa8+MqvZ2cXgUh5xzFJwicCoIm1Ou8U=;
	h=To:Subject:From:Message-Id:Date; b=eQppTXxBDigjOihUmhMWXiwtIRdXg5oRptgIZFzgkyBMLy6R3goAhq54qvQ/3GDnmlficsBR9kZZQre3s+FLPgY7bvMTCDv1O6yTAH+4jxRMGncLv/hDa3uhPaNkRYzoxDcR+ZrtF6zz3gHqLeinGr1/aQURHONU9jye3+yJSGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEuitM3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEuitM3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB106C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738784753;
	bh=iINnIeheBUoLEa8+MqvZ2cXgUh5xzFJwicCoIm1Ou8U=;
	h=To:Subject:From:Date:From;
	b=fEuitM3oSirN/XQTmmHcRpwaGl8ObJ5fo52KDyAlSTaoRgV7e8MO+tcCyR5bMV4+Z
	 tSZYCITjNoq1icVt8UixIvC7wsnSHty/gwfTNQSqiGQNvVDZp49Sa/C9ZNUEfaMYos
	 o1FOo/A068wkH7oFlX2Zerf5NYQSYvFtKPTmX2hIdZuINfjPEzYyZQWO+0r+gKTfHQ
	 YsIqLB3K6Hw9SROmuMA+iki5XZe3Eprk4cnlIpRJFvWAb8INKcCaY1pwlY+70bZGmn
	 zbowuSlbKGSiH6rgbhyESckFbuDGoNym3MZN0Q8mtvOCE9jNv5Yn8XavM+Ohk/X8B5
	 +gHaVVvlk+T3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945E8C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173878475359.1908.13541837033381872330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e03f02375609bcfdcb222e9d09cd4aa3a91680ca98e9008472d1005b2f039280
Date: Wed, 05 Feb 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738784753
