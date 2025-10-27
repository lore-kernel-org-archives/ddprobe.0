Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1606E23507C
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761595194; cv=none; b=rGloGzlIu6ji0mXBSQIiLwK2h5xL6Ax9N/VrQ/yx7BVy6toOiI9D3eEU6f1L1bkivygtAd4t2d9wgR8w1GHQHhvKu9gW14FaEPNE1GrrU9CFbxPqaJrEkNE/aiUFsdeHgFxgBgsDhv1zT2yiIUCXMx/iFirKu58dW2gciBLn6rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761595194; c=relaxed/simple;
	bh=9zs8wpaQ9Yg5XfKxSlowkafrGPCjBErVTl0EMlaquPs=;
	h=To:Subject:From:Message-Id:Date; b=o6Q+0ZWPuIHD+4S5g0fMizPH0KhZEJO7OmHDs1drRJTjBGOyH8OTCnrwrad5QrshktHJo2+KHBxY2LyXo6lXyALwoPtGgCkvgUZ5uO525mN6Aeln+sle3EYRXpCuLrhArnnIb6roNBFIT/XsM8KlhrK/mYWRHakuYHPbaO7x6iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7O6f90y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7O6f90y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BE9C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761595193;
	bh=9zs8wpaQ9Yg5XfKxSlowkafrGPCjBErVTl0EMlaquPs=;
	h=To:Subject:From:Date:From;
	b=h7O6f90yglZUKiyXZpE1LOL9z9+vuXtF+CWYUgUhf1IWKDstHM4kdq5M18R62rGvO
	 7b7xiYlPFBu/gRsZKEsP4fkusgo2f8sZ45gzi5KvhE4VlDrvGfGRPuI/1ra/fVj+7V
	 +gmks++M5muCdyuUniNsI62On5hV65Wxb8HiI70PgnhB8eS1I5gWl7k8QMHqSg8uME
	 FwMAs/d8XfMyxjkWP55SGobrfJXC1PKptH296XzR3rj3ecmskkKuidMhdMGY0mnlNS
	 CU6SaVVC105MAwwLI6EEUqInRsGCUKt+GLOcZlOJfDyKl1eLJHg/d2EqPKPdF/FXJO
	 1rcktRUVjpeNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9588CCCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159519360.23312.2034093709959057919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 625b1d7cefc2df784d5a7da63c87c3ed8c8aee953a181971552abd4ddb0a3de9
Date: Mon, 27 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761595193
