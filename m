Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4576515E97
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740308334; cv=none; b=VZRHhAZcicZNs5ULd/J2bLFmQY3n9JzVTjrboolr6ba5dMCFKZYXM3eqZxpF9eXOz25vkfIbtBOKPj6464vajxpva2G83TA3GE+pSwknS6BRlgVv3JOf6oQizbiOqc8sU4up9kgIeiGDCkRXQ++klz9YA71O1MbVWZkWOR2nY5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740308334; c=relaxed/simple;
	bh=SVGYereqXmuWIRVC2BDRpoRrFISy5wH1rrweWup0aDM=;
	h=To:Subject:From:Message-Id:Date; b=QLM77m77CMHuq4y5BVD04UTMZjUo6Ms+i54F/Gkt5FzHZi0tBT5rBklJG3650L3YsnhAud6FWgqrJexscHkKMy7xIvx7ZB9SWxz4IbmrB508WFC70dHTI0XpZ+KuPuKltgZNAn8S1PNdG3T/VN4JOMnIXuyt1CS1TuSYcJ6uXRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2xRcRd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2xRcRd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6058C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740308333;
	bh=SVGYereqXmuWIRVC2BDRpoRrFISy5wH1rrweWup0aDM=;
	h=To:Subject:From:Date:From;
	b=J2xRcRd7hntVe23Zvifz8KCf8Rjmi1EVeEOvGNVmcPCQyhxtqY4CwvoClX1XyvpcU
	 BI2yrWQUb+ZEO/w6trcGS+r3YOPlqiD7Fjd0YsPMJxfgMdWJanR+gCaPWiCmltZAxJ
	 pkdhgyFL2PJRupCshq6jYNmDc0z76lTzwREyFWVjB59WuMLmP0FYUUB0Wr3hhZHQrl
	 siCyUqH3hGDNI3r7Odbu5xLnD7gH4Y1+eGPAGA+IyjIqRph4bJR8byI29cClqLhl/m
	 J0AVrUd/hOla9PKdqs2vV0sGf7hCJyuwBRn0Rzf2gumwgUoZfiDUXPdVBdCZEmc16p
	 N+ecmKRZ9WsuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E529C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 10:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174030833359.17297.15725400159058444515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39f0404a7a1ce283d72d1a5083d4ec9fd1c141f9a2f6c667378cbd2e39f2d26
Date: Sun, 23 Feb 2025 10:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740308333
