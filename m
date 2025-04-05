Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581AF1119A
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743859194; cv=none; b=ZEEm7QPapSSUD/sVPVTKknKzDAFvjp5qSc+Xzo+VYkeAlHQEcL01r52LZcPQ/gvx0/n4QS1GNHb9Xc34Fo4ZeI0nFLIJ4n4OinwflB0FweUwZtzKqXMnUl5SFmiM1QCcBB0HzPI5cHYOoR+Yle5gMqOAzvUgYSFqR73SDpRDFLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743859194; c=relaxed/simple;
	bh=FuWqxHOLQjwnIzVJR1nJzuQEIQneiDGDWsAKdoKIp5M=;
	h=To:Subject:From:Message-Id:Date; b=YOoHE5mH5Nn0TMtDewdXj6St8qPIqA178z/OCI1rSaFiV44f+wDLU0bfluxc6Jjz/SP4m+e2oSmnG6tRQ1YbXJ84yaA648vO8YxLrX5Lkg2K8JkUsw+qmURC/IVHXAXw0aaK5Mtlxp0RVsf4DNvjqgRYL/NJuYw9g04N2w+wNlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jdakv3rT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jdakv3rT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDAAC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743859193;
	bh=FuWqxHOLQjwnIzVJR1nJzuQEIQneiDGDWsAKdoKIp5M=;
	h=To:Subject:From:Date:From;
	b=Jdakv3rTeixCTvLci9X6vxYmS3fEbMqkHKg0EuCfjWrIj/HCrTXEU+tJTHVBe3N24
	 ahn7xFL4s0IsjKWtOqyxl7D7xxks1IydsfKuPOP0zCiICg4o64wVhS6VfMpFsEaJIm
	 GxmDC3ZQPv2kbQYmWBooIOuv+DKYO4xGErfggdJ1xYpZmuyg7k66RLtf7TsNBYSWJ3
	 P+dHdbmRZNlaYlhoY+4gbtgezC6B12xOYUSVE5WZ5NenitUCZEGrn6dlRIFG4qh4SV
	 HEYg9fR5slp4a59uM/qSY67P13IR5hYy7hDf6WP4aqZjL58FZxJFDQyGfDmxEMGrBK
	 /Hgi9WzI2fv0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ED8C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174385919358.5829.4844241496762813831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d9866eb7ed40bf46e03326d8bf42fbe0cab6593dae2fd0690096756b43691bb
Date: Sat, 05 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743859193
