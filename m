Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461204655D
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 07:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712906363; cv=none; b=lL7XiP1ygLFHByha9JsrQAlhT3iKck5PI/jhI+UTWX3xbqwrF8ATbC1PsCUy7MKMs7ELjkTh4V/mcUfANM0hL4mkws3MbQ0Db2J/d/vFGV2Z5jpzM34Vqpk1bsbRzfNYFPQPGx6/rHdEDyYlkQZKKrSrpf4jDnLL+gbfdhegIFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712906363; c=relaxed/simple;
	bh=+Ln6Ii0BuxGBjTiXKf74rBW5aE/ZdDSJrdHafMhlook=;
	h=To:Subject:From:Message-Id:Date; b=Npo9/Do//TJ8YvkRrcFHjKZlllqPlOLUXFhbgk5tPQLS7imYJoZPHjMJ+VBOzftVHsQIAO1N6KZItT9Yw7HbJFtmKPdbDQ8cynOihWmf2SKftrP/Go4rWuwtoVB327BVg2rHeW25tvevThIDK3QpcT+Y/pqv7NWmieMUdNqP2QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zx+agSPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zx+agSPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5167C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 07:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712906362;
	bh=+Ln6Ii0BuxGBjTiXKf74rBW5aE/ZdDSJrdHafMhlook=;
	h=To:Subject:From:Date:From;
	b=Zx+agSPWMLpRFzUv98yUjR9WwyLfC1xyuRp7v41OCebQZnE3QQ8xMrMq91v/OlNuf
	 KoyayfV5f5Fv6MQvUzWBktqlPIQJwqX8InP04mN8Hntf9oSae8H9TqHNhSEon2eOB5
	 1OaC4tKqmNIxKjWo+9m2L/uaLQIdE5el/MEiBv8lVf2wgdJIPpYnffSy7R83MBBJHq
	 uW3kSIYSG1KYR590+jtXmL7uLmqeyKwAv1oul5hNF7lMRmRtvi87emRNNm+jnb5nln
	 8Q7FDgJWGj94+BL+qneu+omrZVHs3tFoWbqt6Ra+qVNzyQQtjZsn2DgdRbFlNfAeEX
	 98dNbekwMiA2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1907C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 07:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171290636278.27937.10675096629012945125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4be6259d514c03f21e89806ac2939473bcae9a05a0048cef8808f92bab055a1
Date: Fri, 12 Apr 2024 07:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712906362
