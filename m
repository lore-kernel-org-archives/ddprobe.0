Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0917A2D061C
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772157894; cv=none; b=D8lzZPomGa84vED5x2n6O6dYSRzRp6pWadvPQfgT6dF+hWOeGhVMawqFZlk9CmL1KGxqPjP7+UtCKTogCo5d9BCmj1L5b4+tHENg522JiS+7Vgv1fqT46mcsBP+6zN812hkEeUufPNVO/Fbfw34IoyBurceqpqUKWyTMu4roksM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772157894; c=relaxed/simple;
	bh=nhjPO7HIzOob6bqxp9ywjD44NRbICAqvSTnt1WRAIq4=;
	h=To:Subject:From:Message-Id:Date; b=UAHkD+RjCcCQ86m8rJqLE27QVYfZuUnmKsi0YN4j/BYPuUC9QbanYeoTSwgw4pYD80GDpu7mQ9jMa07x6gZN3MbpIycmFuHHIBEKuV40zqnp7sWfbQDm2YrbgL6+1g6Ytc/LxDVsEoVmyLfoUzVonv/Uiio8mJ87SRNm1iEfnxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUeb/4Y/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUeb/4Y/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3257C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772157893;
	bh=nhjPO7HIzOob6bqxp9ywjD44NRbICAqvSTnt1WRAIq4=;
	h=To:Subject:From:Date:From;
	b=NUeb/4Y/KXpta57kywhDehPAH8B5EHpZAjnAnUvMFskjM3jzbEXQusZKGrGTyITL8
	 Tv2piV5HFP59oK8CH9+ajJNs2IqEyYE476/1HpRB4ot0RVpDzretHWgjqmuitZY33C
	 BjrARY+oaRZx28FkiSIQtaPObrZNQZqXb9qPsInd3YrJqG9Z9OpKL7oJxo3GYs0k/G
	 dRooVaNh8zr5nFVxApt703d954IyP9XKy5NvvktDMNtnejDUbQhszqCVMSxGMfMg9J
	 tCh3HRu0XrXrEWVlfIscODBvQuK+3leXHVTjy7lxt6pHAxNj28+1ybmHO+Hfh+I2al
	 /W9deYpWH5TAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B24FD9E29
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215789365.13194.2736101562686611891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c3c26d5fb6755d7bdcdf4717516036584e08b5f1e132e491783695d35c9ad0
Date: Fri, 27 Feb 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772157893
