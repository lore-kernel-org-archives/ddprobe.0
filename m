Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6323584DE0
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 23:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719618263; cv=none; b=CNFPMXjsRKaMIJpkOhdYtbWVzqDkh+ABDzMe04gkm1pUV4vMxWGFDU6ZnPiL0XzaMQc+osyqk9l7q6LaGimga++XoTFAaGV2kedwFNJptVVtJxjijkJ1QFOs+i4zqB+H55PsHaQzAMVkS1yK+grh5PnbsVsGMMJe95TjX+QEa10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719618263; c=relaxed/simple;
	bh=5TNBQzmdiXrP/ILkxbY4SXlcuf/QKjm/7n2HBqQqAuw=;
	h=To:Subject:From:Message-Id:Date; b=VyPLsstCc+hcIp+F7fQkwVJGUuTDAIWAqu+nHnGcdu1ZYCSAamC0YYLRSMxxX1atnBXZb6OfSgjtmNSI16n2a4cHlIJfwg9eHDweiLOLOypjO1/sJk24uqHK9XZJMneISLB4Fim649l4pWSKHZSpJyfTopRSi0p74ul/LMyM56Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNr/Q4o+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNr/Q4o+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EAAC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 23:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719618262;
	bh=5TNBQzmdiXrP/ILkxbY4SXlcuf/QKjm/7n2HBqQqAuw=;
	h=To:Subject:From:Date:From;
	b=QNr/Q4o+uOVIFNBil2EQQG66FDq8PuKFb0bGjVQdHKGL2/EhWHD9wW7TGBum65kxV
	 XUkrZ06FCThYAFPQEsHxuBFkJ6ocgEtPGP4YqElNraP9vno1wahGCFYG7RTK6vLSLa
	 cREBAvd0j6wWNDKb0i0xyMIfl897nGhWWj+yvBfuYWFu2zPIjUu8cPZ8GyhutE82cz
	 gRlLFMUmpVf/btY7PuaTWjdE1MphLbGujbbG8UpmYGremUoGbKvzAbfGpdw2GhrIt8
	 03wLJD/lf3YG7QOGAs36uXbQIxAX567iIHVuvzRgG5IlzZgEhO/ou1Z76Xn5Bs4UM8
	 Jun9HT9lZcgQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C26C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 23:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171961826277.31207.66589096144429885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06fd5e56a1cb05a00ccb1e9d21fa5ec483c7494cdc090dcaf57bf8c6098c6952
Date: Fri, 28 Jun 2024 23:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719618262
