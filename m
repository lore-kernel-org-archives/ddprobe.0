Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339E818859B
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748103595; cv=none; b=g7zJUJ63AMb4ChXWNA+x4rBiPn7nQ2oeu2PHLN9RGbRZn4cqU7soBPoumDiLn12mtAnnZaMEuC/glTTCbtCfAdx+g7sXIvJzAJwTQqVdbbmbJN9XiL1B7xuSwsUCnvFgnWMBO4rH0367dB8rPwinRCFtM+EWiHLkHtGD7em14Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748103595; c=relaxed/simple;
	bh=jp+uYp/4JlH8/V05UwgfNR2nx3Yy+mM6YRfA7C74JNw=;
	h=To:Subject:From:Message-Id:Date; b=P/3d2jY1cXiP8llLNoYI9CVCc1kfOm7TURdEpW77Q1Dwqd3P2yzn9R1PxMlc3TSetXwPUS7UU9K0KnYRjUUJXqWOGyzAS2IZYDb+Iqo7kL5ziVlPTLuwyGlUfGu/1cotIs7Ct7eXJr6KAOzRXum86hukgwOQtHpZhJgI4Ww+qtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rb7zUCiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rb7zUCiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52E0C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748103593;
	bh=jp+uYp/4JlH8/V05UwgfNR2nx3Yy+mM6YRfA7C74JNw=;
	h=To:Subject:From:Date:From;
	b=rb7zUCiFQIuAdAShbVZ2HDKXhXVihgWAERBYkCEmDur5wBpTVQaKOl9EbKrNUujD3
	 2IRTKVrCXoEUa26r0UYNDTZmsRLMwFTWOwS35WlWjIpJ0pdRHdfXOhtWlIKXx4lhza
	 YQll3m2UhZ6qBr13Ga5qAbBJMqVobGtRkxr7FHPyC6RhRarN+QxAQhpl/kd/iJXdU/
	 r7UwuUIvykYnWGRXvm+/23PNNZV/daKS1tSXcUZDRr6z/r0j60dRbfrSw34HG3WuU+
	 PRmGj1BTm8WMiSrWAw/07kFVVAcrT/Vd0UfqesBLUm4biwY8xswAV2gUMCZhgfmZjM
	 UPiFqGYKDAVAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F4C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174810359357.10343.16396348606364439108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b43728aaf050b186869a3e7ee91a22a244192f7f8b5b4e86768560867406c24
Date: Sat, 24 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748103593
