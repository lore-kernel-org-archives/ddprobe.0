Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB7D1A8C00
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722417354; cv=none; b=uYfLyKdOU2UVuDbbVnHAZtSyCsv7b67oGxXBIM5IDxXt1Ceyzc4xVLXCyLxbkuAPznu+QY4owbyKXuHwYa4wYQHhdk15HiEUS1pXqijWQHJWcJRq6HhlnZZrePrFRZ3Z7vJ/uDsRvmdH8FabrxpjTUTM4+kJf8OKI6E+h7uRz+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722417354; c=relaxed/simple;
	bh=z3Qx5r2fSZp7vrHElvFhk1oDtPs+4ikqunVRr8iPh9Y=;
	h=To:Subject:From:Message-Id:Date; b=ljk+hgXD1R1+L2OSi0XfSs3wryM789yyS3AMN0H4rSH/hX+yRr/hd1/mia+woRCdUPxBMRAhnIfKqoaPxozbJNdkd+eRcP1KopYIkkpuXxDhUqPPnQToS0ZiIPYjtdNwT9sPF7gYw+7a34Qyktz4b/YaO+aRyvUKeMOxXaUKke0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b05j7pIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b05j7pIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5970C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722417353;
	bh=z3Qx5r2fSZp7vrHElvFhk1oDtPs+4ikqunVRr8iPh9Y=;
	h=To:Subject:From:Date:From;
	b=b05j7pIRSBG3D5m374Jkaqt0UDdiuXrEuAdf29mr8k6Sg7SZPmT0Cap9PBTeTQdCe
	 IhWftXzaQ25iZcBKECqWehyB7V3kShpubbQgeuXvMvxFiC53yom+cm22foWI6k7V86
	 n5O2k+e9JHbsmGpw9dxxIGIN9bS/lcJQ526XhrIGS1gg2zRki/0P2MPqcrBrfh924P
	 23k3yFKUIbvOWBbhgf1MN8QzJbfGmFyy9xzYIr9TgWIsgpiyxjeU4F5ZngxsWPaa2t
	 tiwuYYCiQf06pwmxKggW3xfJpANZE74mlhJP6UD7ZlUiCyaeUL7KzFtRkbJazn902P
	 ZfiQmEufjaY1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F29C3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172241735360.23273.18280022183075981681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9991571be857dc56ad72927ed90c4d5987417075bf41ad44e60f3b5cfd1960
Date: Wed, 31 Jul 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722417353
