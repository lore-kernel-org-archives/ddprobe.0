Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEFA2AE68
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784428714; cv=none; b=PEjZolNkYrR4nxqwfefn1F+fGvySukFp0wnDvANjJi20SxcHI9taqDkDCmxTs9svuUYKnqIONyeU4GBfaVdNSkk13Bzs0YSMycpc+o9QHIZrpnxIsCalNnKqyFW93uW1wgq/s2ZKFMKiYcOZFunpBqiGjjllwX50c+/Yd/9E5MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784428714; c=relaxed/simple;
	bh=HXEsT0KqBFMzWLPqRSUyxUh0F+XPsTjTlGZh2XPHTgE=;
	h=To:Subject:From:Message-Id:Date; b=IOBJycW4OnljyI+uOMb9B7nzmvzgEWwj+MXpWqknB/XdEi8zshCpLnqkW51To1T4cSZfAHflNUZy6yo0M0kUxDb4bZZWL7OT8RPTimsy17hND//8hmWz0Qcf7xu4efs2JZ49dt5kKIQud7d2na0tb9hs7xeLbpFO9hXi+kro/Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDcMoj78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDcMoj78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9951C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784428713;
	bh=HXEsT0KqBFMzWLPqRSUyxUh0F+XPsTjTlGZh2XPHTgE=;
	h=To:Subject:From:Date:From;
	b=sDcMoj78WL3gkwilAPjthm8dm8WnFzQpXpbrcVTjTI5XqDWSWqNsOz2xhkOxiKlho
	 ps98Qw50iLjUcOXJnMCeTeVIjgxC4Qe3d5Z+FN9z7V4LMHuOUm7SNxH8mUS3rbuqIy
	 v2nPXDNeOM5WygGlUbRReQ7jkBilpATcwGboVByEntAyc4eKg+z4J2UPP5QkE2HTHy
	 xBNTpdeMAIZBkwlyCM3SwxXcRrlBNHDzBWj2AX4CIk8wExW6XmsDfcoTPxTiuDhozR
	 T7YFNf3ErKF0BaJ9gRKDcW+26ZMLszL0z6VWUdw47OOwZeo8pvKLnuwVeL05QgY9Ms
	 BAemWIm8+d2GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C57C44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442871369.10120.470090537869198242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932a01206b4355263a4dd78dcd0f89d1b215f061c4d08808868f8e562553d681
Date: Sun, 19 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784428713
