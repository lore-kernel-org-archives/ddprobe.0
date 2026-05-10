Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A15C254B18
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778442034; cv=none; b=rAvIr2eaO2tTjCyQZTadqqpRVKtaoxZee6PQwhptJBj76+mtj/Pw812+VHMAiOOAxfEoDeZm8sZI8Q1iyaNM1p+EdOdNlDdjqahCEs+I41/OPBTeyc6gnaDkmu9z5p/ttie4X2MrVlUdd1ciLd6vSicblQH6CatKQfrSJe/zOJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778442034; c=relaxed/simple;
	bh=6d8QJaZzU4+abKz8NqWHmPXwgTjzDbGW6HfVYBg9MUg=;
	h=To:Subject:From:Message-Id:Date; b=ZJBCHrQfWVrfWqQe7p79kjGbCGZ/StoC9tnXFRpkU68SHIvtssPJUWhWAHEu2iXPF+IW+Tc6FLY8liQ9GQsuyIeKwjUbVomWBKQrTR64rNu64AvWZUf8YsupD//bHD0fmSAYfHNzkne59zUJ+BRulQ08hJ+GUprcMUEufZcsdZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L29qie7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L29qie7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE21C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778442033;
	bh=6d8QJaZzU4+abKz8NqWHmPXwgTjzDbGW6HfVYBg9MUg=;
	h=To:Subject:From:Date:From;
	b=L29qie7kzGezmiB4Se/q+6F1mpB2HlJlew1BJvaE64oHXVaSc2aOhuFn8Jo8wkp0q
	 IW+G6BU5x33i+vxyfdRYljYSWYxHhE2z0COxyiPNACj4PGwZFRkRNAGxf5uvu0dc2T
	 3LrknL/kEYN+kbYqCpq6VcR/1Z2HloATkcb/wszwebyUhq+tBReTm1O37SzXZGYgXM
	 VumadTskVR0rCOZtXOVxE8Ta4far6hY3Cwom+JF6d84jMpwGB/kEAyN01Bvijpvf36
	 gpIhwrf9PGmM/zVALpMNHCHLr7w7avXvGEyP3BexX2kKHq1eDmEsB0xiI7gzT34onG
	 uwUq1FUp3h6JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD6FCD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844203374.16180.8720773515497627746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e407c25bf18187271c79b786a1de34888af0f28ad956fd3830bdaaff8e783cbb
Date: Sun, 10 May 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778442033
