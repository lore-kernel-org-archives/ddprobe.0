Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BB422579E
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791859234; cv=none; b=DSXKK/24aaMbmthFrucfLoSPh1xC3DUZdIQWkt/71f9Fdt/fDpH4KeC+vxd439asBIdipZcPi8BjK4VSy9VBQFk2Ex2sk+mrK4lUdUA/7I6kSV/DC3BXxVyX77zoBBjvyibmi5pRpKPNE0OrKYDxThV7P7947atH4KAOOgPGE0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791859234; c=relaxed/simple;
	bh=S3O+ftq6APGDF1uUyVo1iYTFI6jJYtzNkXbO+pDAHpU=;
	h=To:Subject:From:Message-Id:Date; b=D2y+XqTa08fc3NrYK9KBLBNU1CWUw60sczq+k2raO7QaEb1JubjXYon9gsA6UQXlnbV60H5vMjSOqvDyHkCZEhjRt7Z4YqkoTK+c2jTYdDq+hfzvR46sXbKh+extxhsHlmylfe7Z23/VgKOoXSJYuQj8oWF3Uy/+u2lriOeBA14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiaA9B9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiaA9B9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC911C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791859233;
	bh=S3O+ftq6APGDF1uUyVo1iYTFI6jJYtzNkXbO+pDAHpU=;
	h=To:Subject:From:Date:From;
	b=JiaA9B9OT+Smo64gy8AHi0IZcF8Lo2QqJ5FSvXBtTfeky9z8Nd6+5ELvZ3ONG/qid
	 51BRmdxTNyOXmEZfLgQWb0RtscYRH1+vMJO5U+dSkaa85aMspO0wB2m+9Hn+EwGkWu
	 swpfBw+sa/ueLsunLOfQiAPN0tbrGzq4ifaLqUNPEfh2N4PqAC63cZAAWzygzXOEGO
	 2zHHy1h9CB7Pt4rT7HblHqaaGMfSs5b6fwxCsqBOdiHjYPj3pEB6i9DtLLG6myC0Q+
	 uS1SOpA3jiDer1UIyR30E/EdZj7Ng5JrbsMtrec3MM6EFb2oYOzyJU8u2a6eIS2MiJ
	 SNv0utnxMHPIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA10BCA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185923368.2778.15394659352380332906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fad0148a7dc0f12b33492b18cf708002b81601e021618624bfec75554ba8559
Date: Tue, 13 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791859233
