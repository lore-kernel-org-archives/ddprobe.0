Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A7628F4
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758504594; cv=none; b=Tfzgn/GDhSUJUoVP4Yqgt/rX02LXwbMi1lyGojzQ1kOFsyhZVIelo3Rby05ehjcSL5yKKmtwDWh1utKmZ6tsICHba93pHfKEVVqZk/IJ/yKsJu1Gt8nt8Nyzm/ZR7IiLWWc8GYUL2eltOJqcMt+doZ/NsD+mxzLTVD2X7mAbtCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758504594; c=relaxed/simple;
	bh=WzAkWPNuCDg9skVv4xS90XjYpzh3dJmuEkOj14QUdIo=;
	h=To:Subject:From:Message-Id:Date; b=g9HCQfQcHPsYhSRpZxsSwC1Q1dN2VJ+eMZNcRUSMmcDHndmL4LUu9TtMeuHeYWySgxE5DoJk8FHcFrjrb70mDXHO2FES9/ats3Tmg23Dxsm2Lea2ntfUK3NNdIUGi6S4rYXRYHj9oNcqF9X8Q8dsyeWPuL0TKYFKpxgT9Foucy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCSJ03aO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCSJ03aO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2310C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758504593;
	bh=WzAkWPNuCDg9skVv4xS90XjYpzh3dJmuEkOj14QUdIo=;
	h=To:Subject:From:Date:From;
	b=cCSJ03aOp6GRX8PbdfgXCwhB7QEMwXFVT1T2v+EKVQJM078pAODrp1eL6vilyuYAP
	 06laSS4f1JmVxIjUmxB4Q3dnvOMoXz4TnKwpnHgHykZUWV6plBtwKMgmB8dRHcLf8X
	 k2j6OYlCI8nlPJVPZvrew0p2lWont5dPu01As+d+1EvY6NQ6YwGIY+X+B8+ftmG9kx
	 nMaf7nGeE875RgGBsGjwSwpY/Qo6RrEh4BYxugDfJ9lTUNVMINuV9qQWqhldVH3IJR
	 tug7go8tDGnRXVHJnXhhgFAVp7ax42DElYi7b5+AQnT/n+jCPqAKZiSSyrl/WNy/Tt
	 1sn1OIiuGQB3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFF9CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850459358.20641.16678089485221495958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d6dbc0be023018318d107704870ae6a48ac716512c1e92fe9bcda87a7c2cee
Date: Mon, 22 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758504593
