Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDC7146A68
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746217195; cv=none; b=GtkVxrau7sX/Qd+tz/jZ2y+ucbTBTY39L8u/6OvdR/SDLsU+EXl2nYO8uzud2dQGa190cIgOOwcrcp0f62Ad9Pa/wFn2DOpV1qj69tzNLpRcr2erDQqgjSgA3t76DkzOROeLF43OAAdj3HDMNh2lALE4DA9AzxOiPdjDmhXykoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746217195; c=relaxed/simple;
	bh=GoQ/jupRZaibhc2hk4ON67kGf6coKvtw4DJEzwB4aqw=;
	h=To:Subject:From:Message-Id:Date; b=m1AIUCWIX2UgruISM3iJqkY9xbjB4j3gMpNds+nUArx8QGY2UeTkMud+V8vGtacXY7ZSM1+4oR3V4SYlbt1yXW8c8IXBECEjoS7MTYSPpJwJrGwo5KdJpDQVh+vQbppa+oaZoH1Mn+HhwEngN4iAge/ELWkt9nZVpIPm1fa4Tns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRgsO26J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRgsO26J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB5BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746217193;
	bh=GoQ/jupRZaibhc2hk4ON67kGf6coKvtw4DJEzwB4aqw=;
	h=To:Subject:From:Date:From;
	b=aRgsO26JllGmtwS0dc/gv64NigHzpxMHIDmuY0QkR+AeF42HE1g5RDnvfEgbEJBVT
	 wZohFEz+CpPK65JH6h/H+W5TXNDiBloNUC8sgV0xVi3PjwBYrKaXe4vVMl+MMmYgIt
	 ow9ZTXgGHWaJjbzwHxX93u7cRpPVu+Z/UT7qG8jJCKuLoaq7pbKTvbzuV2Zg7pe5i6
	 /PBU0imZfo0OJ05yfybLTnWWYKv+2EiFYBu1EY4x2aIZQoq/edY4GFUbPLX4f4LVi0
	 9uQmqoB/aypEVAqbZPHhGpY0daOXYvza9Vrt/i81PjF7NiWQuF39AGPfSHHHpEFdyC
	 pV6izuullbXzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5D7C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174621719357.16646.3760912766983188292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8626737cab340c302685bd85be9be8fb44b6c48ba6343f3b49c09bec9c9214d9
Date: Fri, 02 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746217193
