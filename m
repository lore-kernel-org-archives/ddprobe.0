Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A00E944F
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756222194; cv=none; b=luRnt05E8B41dcEySPZ2mDkvpUBV+KFvSvf+uOMusirwgwBNkjuCTwKL27Kpp5uOL25MAcXZqXj4rmCa9Hnafzdgu99WlfZ1W+hMX377mZ7A12Y3MA/P/hA3jT3L5T07FssZ95mfEsncfmCJcU4shZwS/x2OuvNLjNC6pOerdRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756222194; c=relaxed/simple;
	bh=iiXEMVMQjET4ImaIQHx5llWEydZsxeyAmR4gBTaYIF0=;
	h=To:Subject:From:Message-Id:Date; b=HhkJ1HbqeHKRsvJYvgqaSoTWjVgX4loXe8OuXNL4H66f9wyoMfpINHTUwFAk3H+27L3Fl9ZErZcvB4TY43yI3Mtu4HgngAAIkjoXeTDHKbFjJK/HDgqKemzYRzY02b+h+Rql84Esn/VLosMsGNZA0Za69wOP1V9hpUqY/AM+jMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0cAUTLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0cAUTLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C83C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756222193;
	bh=iiXEMVMQjET4ImaIQHx5llWEydZsxeyAmR4gBTaYIF0=;
	h=To:Subject:From:Date:From;
	b=r0cAUTLFkJE07F/ucTTXFoD43v2mi0BKLxRlzeLlkQBQSc+Wvi+KT1CC6N6sCpP2m
	 Slbts2uKipvt2vpktFJAwqZy1wQ6U0yNWZM2map5nrm5tDdkApuna9tlgV56jLEutp
	 666r3G8xe5ZD+Oi9yOBIo6FaEAU0RMn9FTACzT+1MGSOyzr8jJGLKqm92RJmDccr6Q
	 zVFXysFQgnnGQHL62nCVp5RUAcaL/+LWpPgzr/WSSk+ICCye9uqH8dO7dE7bLkVN96
	 eaMI/6YahChnP7IaEso8uSHTt0QoUdIUZO4hs7LyKldbubCpQJD2C9RFkbGj3Qyb3v
	 O8tLPkZYQ7WRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A3CA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622219357.2170.5216819678078893447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120a72febe1e5b571820996c557a9ce25ff6a2593007423ef1204621a7b960a5
Date: Tue, 26 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756222193
