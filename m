Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2086135F61E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776074254; cv=none; b=Mtnowx51EOoEUW/i0vZHqEpuVYZM7wGDOHTdABpxgu4x3dnndstJQ2j40v2GHDw9CzvIGFhjFSNnfYYpele8bac+H8iqb066weKLArkyQziI4imF/5WoXdUwDRUoOlXGGyyr6wRIxm+1ttsjm/N4x3B3Gw0p+kV/U1+1TVSqFG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776074254; c=relaxed/simple;
	bh=ZxMpWYbfT1MoLqXgXTn4dTsRj0Ks9In4kFXe7BLK5SY=;
	h=To:Subject:From:Message-Id:Date; b=K8zN7qwpYU7zrfEueiFT6SWm0GxwFQ29uX/R6+BWRE7AmNWG6hspBDWLhAxjri7hSanVtwGWbIYEsZ10YQvkE0D5kHhJbx5Q5sBLrOAmos0ZVWptWpFH1Q4dvyzOXDLCetqIkojoVqelLFGQn3Y6m0NSiblrRnJb9+v1FKkE/qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XT6aOvZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XT6aOvZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB71FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776074253;
	bh=ZxMpWYbfT1MoLqXgXTn4dTsRj0Ks9In4kFXe7BLK5SY=;
	h=To:Subject:From:Date:From;
	b=XT6aOvZTaGGnm/TVrR6lBrsJI5WoJiLiUyIRAS0oeABnS1Aka31qVe/FJfYeRfnoe
	 MdcSUXGWJ7u3CIRfT/gi/c/s7btPKBj7CbbYM1G8HUzlgMhmAMsd78embja3vHxd2a
	 QDKQfd9pr7tmMF2G+1fFbYBpI3rbM65kCnz9qvvJrjy4TH/Ylm4bmKq3GGi++9ggqX
	 oAwnLJPUv9Lzwf54w+1fuYJcqvSNO5uEoMM52VdDfwXpxkpRZ7dySNx3YsB0uHrhfO
	 ew6z+fq+mMphszSzyUX+PjPOqxmU9Z6Ix6r3sfY3RAsFMqX5aPj5fTdFwzHMApZmFR
	 iUwLYUlQ/YJPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BADEBFD2E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607425368.10067.13710539380033420021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51b5497ce4e9da747a6baa48d51b4afe3b732dee66a54d71a6974b896a800532
Date: Mon, 13 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776074253
