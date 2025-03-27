Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0DC3FC3
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743052194; cv=none; b=INfIuHhFM8PSc67AH35BNMGWu5QIJ0URpNDusyiNFdOErhTVny2+s/gkNTnrpWWKD/e+z5p4wmEcJL77jtK+hM8DaM/gO8ReW4L0Ld/3H88bShfjzIH2/mtYNWUp43T0Lc9TR7v/n5J19sAxrQ9MX/uFzp1eUknsvn92npj2+VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743052194; c=relaxed/simple;
	bh=SMKqrmhRplV9uJWgXyYbQ5W+Xr7AulNH20bIRDJZSfs=;
	h=To:Subject:From:Message-Id:Date; b=X8Dw5YdwgZeLrG12bS046sRaQ0/6znKt2Uz5z/iHZvfFHupBBflYh9/PFxL+FeVXNq21I/EZw695n5tTZEDmiW+j5qrIiRaa0ND8PhgESSEviaTDhq3oNrFOsOSDEic6ojGXJnWKBegu2/4/dRu9Z4VwInkZyHhUVu6yMsNL66k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWx0Pg7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWx0Pg7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45A5C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743052193;
	bh=SMKqrmhRplV9uJWgXyYbQ5W+Xr7AulNH20bIRDJZSfs=;
	h=To:Subject:From:Date:From;
	b=qWx0Pg7KjhPAGvHNd+oR6onamIjchK2TpPPxvJkO5y7N+RILoa1mioFTzOwapdHZY
	 NB0bIhML4YhF/MbyW7ta2/K+4OdITa2tYyT9E+tfd5T1ivjMWVVUb26jGV/sDQUjVr
	 N9CTSe7BKgM1Pqn3HqyAfrOA+8AxceUnUKoMRllDfOlXxHBY+xbt9Ro6mYyzpjQpmV
	 5WIsM/8WHxvKkOHGqYs6/zohbEO5TXKckYQ/T2dJZT5AsOH1EZFmOk9QG5vhYsoQmu
	 ho3YUp6Wnb+1ary9gzZey4CFqfXjGe+F+ETgrcKM7KtHeV5I01R2D7wZo1HgB0bmi3
	 3sovm6ajp5Xfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC697C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174305219364.9099.6902475342104329932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a459df18a5e02a800246c39db22a4f35ca8fae27faf979c6c49cf293e977912
Date: Thu, 27 Mar 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743052193
