Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0020278298
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710252497; cv=none; b=HEfIPEXP7upPDKPZe/yqYflt7i0T5vIUUIiQfXz77mv7XCS5GDvmTo+Pc5dsesNgtLtWtk/1OuG8fh3pG1FA3ABqJX2jRPPQskfsIZe6GVUZs4KW4Ae7SmgIdQlcsUCkjeCh13d6tHfoBppZRpyS5Lf8O4egdoIDEbOgIm9dBik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710252497; c=relaxed/simple;
	bh=RdW7mtgNGLckYYM1xDwq2mlq7u4eBU3YLJQuGoSfdjg=;
	h=To:Subject:From:Message-Id:Date; b=OmRaVgJtPPjRkM3etzya3lWe4xaIeyR+YrhwT/fD7LFIn+icr/sGuHfK5eqwXH0/jpF8XVtkgmeCi7u+GK8pbi7k5dAUJlzwM12JcdELsyfaU8CCkEDOjlYZqCzWmTGycKUOPM+lP/6qIgpT/hEm/PBQOgKa/kEBvmTeW5Qp6TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCqb4R/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCqb4R/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83540C433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710252496;
	bh=RdW7mtgNGLckYYM1xDwq2mlq7u4eBU3YLJQuGoSfdjg=;
	h=To:Subject:From:Date:From;
	b=WCqb4R/9PXfWAGe2IDAPzFt2Z2HsvQ30T+ziozNHZKJQC2PpbA6u1E6t7cq5H36ac
	 vOOsxvokZ0UJAt7LmpStvGxisURrqQ28EkLbnVzFR8CwJG83T9FL3GIWxqrnrkiDLh
	 1aVthibhias/JVK8TjvjXea09ZjbGvRYPhxfFjpTQgLwZruHD+U6qvBu6aVudz3+Is
	 1wwTkZi4j8TFAGosFd+enNjktzkenNvYXae/+r7/i/TI/yoINcbCXCx0jrr9aNYrD8
	 DjA0p3/CTv2EfIPKGJnQUFSOMkfVkJs7fnvF/brkyrtWAgsQCTDRsYrIjlGRbUtgpy
	 pvMjjR5C76Vqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69940C54E5D
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171025249642.2391.436983937066602338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a298692635b81b287c5b409338665dc9768097dae9224ee1c9d690fc991d73a0
Date: Tue, 12 Mar 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710252496
