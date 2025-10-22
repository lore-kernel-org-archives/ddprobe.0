Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2862626ED47
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761139194; cv=none; b=O95bCc2EeyxqpLnTtDPlaG6UwGqJ6urOImq7a6B3hDzBshhMI8MVyqOgsOdoG3YJGEbl9o4ahst6BhXHDeMk+aiM/9FozPZZACvhhZeMn+brW+wG1EoIGM7Vi8c3Qo0322586DF52Z+1lThIW1HYCiFbH4Wk456PB5cahggGrAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761139194; c=relaxed/simple;
	bh=WPD3GQqG4tmRkaNwHoZ1zqXCI4Kzr9Y8GaLP7tLi4QQ=;
	h=To:Subject:From:Message-Id:Date; b=nj3bt+mXEvqpcDXzIUUGx2vEEgDvlNboIAaaOrhhEp1gLUXbXLAkFv1prcixAzTiUK5zRjFgzDl/RuwG7fY1eqMf3EhnVWqP8wYHE2U1Krf0Nee1wsylCPU48N/Y0MbiSnnh3JG6q/Iyyms2LwST2AVNPz3CF6swALO1GpIscu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLeEn4tP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLeEn4tP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F2DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761139193;
	bh=WPD3GQqG4tmRkaNwHoZ1zqXCI4Kzr9Y8GaLP7tLi4QQ=;
	h=To:Subject:From:Date:From;
	b=dLeEn4tPuhzhQLFUR4yPIWZ+/gg7yYaaXHA96GcxK7W4MjZaem0B/0ZZamVGf92rj
	 KvZQLLU+ugfcuJGLwyO4j67WBrtLeI5jXYT/I0iqCL+T7nsRa8ztIx0RF8WI08wATv
	 3hruAPRHXMYEx3Qz4OqO5qgXNuycYAw/GIrmvKKiYsOcTpWxsgGAMDodeWzUuZg5mx
	 0Pm3+E3GO5aDDVmggrjaPK/1uEZtGfOlcB/H7A0fD4+UlvLiNWOxlZdLeh8dXMpSGu
	 rdUOTnrYD1x9aaDnFogQbA2a9gsAoJMyL2CTm7yX6JhncofaNZ4WRkQArIw2nen5Er
	 32svSLyXVIlcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907BACCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113919358.19142.1531208004315160833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29caf1a9953d3f9ff81fa8096b789d1ec2477d64f063ccf1e264f845cb85337
Date: Wed, 22 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761139193
