Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6815817C77
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 08:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719129743; cv=none; b=gUZKql599fo3eVMCtep1reVEhuYXOucEDdyZTG89Zb9uW6/bRuvKKa13KV1D77inE7/WbEpNIUMiUGv9+zfm3SkscbZynpFAzaVU7gRoW5NySC4qbZs2h3ujDjPRmfJg/OAstirRGoa/DEB8XsgFbBm78oVXOYoA6nlOcFtXsVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719129743; c=relaxed/simple;
	bh=VXEIioD8btEyb1OBjWbYvjd+hNf5G7kWPWb0GJlvRwI=;
	h=To:Subject:From:Message-Id:Date; b=NDaDaVYHr0LSIkSJRH6xJSCt4SDTH8KfN5mkRo0P/rSqseegXrnrN/iYXNVKcXdRxNqUxKXAbfaIa0hmy3tbO2j+qqUMEkufsZkQ1j9S7L6cnfh6ggn50LEpkVZQWS6980jDnpDRy+8Oxuiux389qvm4mZ1/vDe6aU3TVCVnMCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYLfQ0jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYLfQ0jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BBBC32786
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719129742;
	bh=VXEIioD8btEyb1OBjWbYvjd+hNf5G7kWPWb0GJlvRwI=;
	h=To:Subject:From:Date:From;
	b=oYLfQ0jpK++YVZ2ObOPy7FeXnmCuaIq7Nt4D06+vljT8ho88phja6xNXDkrtgqRbP
	 HAtyHzhZFSGkFkKGyPAmbY9RNFLBn3qgTRavfuwapmSlgBzQrg73850USlYcmDqcT/
	 HPO3StK8UREE7zRPTRaMmdMRd4vLcvLnyvcV7Dr5D1so+R0S+WUbJXhNT+VqfGiQOk
	 vWvNMi4SeP6qafpbce77ECJ8lBEbhhqXgNGik3pRPBkRSeavvKRxddpl8OHRze9Q6J
	 GHFq85aRst13bE5gnc+OcDLP9p4tIcOPTlF/ViW0K298tDmIzycKNlyZvfLOrjO/8i
	 NtvqQlTSyNUyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4807C2BA18
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 08:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171912974279.15784.14660218919970063062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868157f25e3ec20ec30bef76e9e250c537bf048ec105793781db172dca7d4d3c
Date: Sun, 23 Jun 2024 08:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719129742
