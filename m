Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131152E06DC
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750942194; cv=none; b=aAaM7noXqCZok7OMZurOPkLZe0ShLAEAAltpTS5H8+aCdkmCNrc4AOF6cqB0mf3aWvMkpg/YbaXt51kvDaUtUxcMNbOqfvBZ9bGfYqPX/YYxaFBdifEOvIjHcjy2BFSuktbdArgUr9V5YsMlF7/BxH37iAHl/gBMICssEkvvesY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750942194; c=relaxed/simple;
	bh=QCe4NHPYne/RwP4BnBuZS9dLQijZlweTfIVTwVJIsqk=;
	h=To:Subject:From:Message-Id:Date; b=GpGl6mdzfrVq+kVOMY7wOhOJe6/T4B+Mp1dSKG3t795bTHSFUQvzt3ZPNUI//OgRWZDRZ3jS3farUKwWFohMIMH76OOqmYGOOt84hgOMcZ6efamISua6oVlvymzWT6pQVxuwwNF77R63Eiw6BUPrciRzzKWH2hZQOseM1Vhm7g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5dcqtc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5dcqtc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0659C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750942193;
	bh=QCe4NHPYne/RwP4BnBuZS9dLQijZlweTfIVTwVJIsqk=;
	h=To:Subject:From:Date:From;
	b=d5dcqtc8AdUlQY1kRY4q+VvEysWO/347PbTKDfBOOo5ZM9faIbJn2/CbZLcrLZlB3
	 5nPKVVDI9980uGRvkNM7gHEOw8UnCiFNrDbCOS3qnKKfe+eaCGO/kVLNka/Vsi1KJX
	 kgDNeLstbz0G5o6tRckxr/kwSnYfiZ50kJQ2068QZuq4eUvVMUMx7jINl8QOMK6vZw
	 UDtK2IDOs5Q+jKNH2BaCPqWk7EuTBLdDyOkLK2bfWP40fhOJn4vy46BZVfhF+4W9Tb
	 oqYWRSgxyJlQXwMjC0roZ9pw34eE3Xzt+MqaYXrFs9Qd9+NuZGjZGC+fhKMhDN8/pg
	 VSHz7LfVv1Qgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90734C7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094219358.23794.1141532013391480627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62854a78e374e0ceaef8df6244d7e9038869a3a73828717f749a6cfbb22c109f
Date: Thu, 26 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750942193
