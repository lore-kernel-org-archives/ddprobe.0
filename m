Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D408337BAE
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761819594; cv=none; b=b/pSAlkYoWJuNPiG/aR84lotQYjhbJ+Tr2cqz0gtW7Tj2wRb70c2/W5gDPN29ICeMfmKbf6z32vMlO65HGGPj3BWMkGHWghM3fC2fml3La7M0t9fjCTXJI6oUPwLX3wIx5U2TLJ3b+dnT63tr9aNZkdA93ZpGYibdRIT6orzL+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761819594; c=relaxed/simple;
	bh=uB3D/op52GCm1jxw4GsSCmtemSxrPkRNmECuxp3/cuE=;
	h=To:Subject:From:Message-Id:Date; b=Z6qkQGokGIijpsCaJnAemaLYxE5snjfWn0G85fltuhzpt0/JgDfb7RQHnYNAbMfhXM1I170M17XR1UzV7urcWLyYgstYoNa2aEm4I37p0+Y9Zy7nPUrULN78DInZLAsw47kckpCEOiyfo1NlD7s2xUn6tqxer/FuMoMtKPfMaLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuiqVj6r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuiqVj6r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CACC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761819593;
	bh=uB3D/op52GCm1jxw4GsSCmtemSxrPkRNmECuxp3/cuE=;
	h=To:Subject:From:Date:From;
	b=ZuiqVj6rS8mtdsZApNUavJYzisWYwK8FDoFTIOZDXlyfrJ3XjhDC5K75FlAlVdz/g
	 toG5wOuc6TiaiDInSVYLM0U7Sm9pF5NHDs3zJUJSDJ2XX/n5xPI+mO9AwjTpZWGe6B
	 0VXaC1Lqq2hOtkUhkIFc/XnQdwJ/uNoDlzJYi5GEz85SMX4kRrNEOe42FwCpwHDag8
	 D+zMIYozQw6d1DC8v5QWY3VqMRst2Wu5k5IP6R7xjqGhdNPw6wHcXFXVXF8w429AYq
	 gVFq956VLSgiPB1lDcc+t2sbTNjU6JF8wpXW3HG9oT4wBQ2VfkRPP6M5z7wCummiXA
	 Z2e+VyrhCpa4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B5ACCF9F1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176181959359.4205.11788708334652935961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc639b1043b63568785691dd86f9e91854d29b8897079b87fa24b6c38ba615c
Date: Thu, 30 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761819593
