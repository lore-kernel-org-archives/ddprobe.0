Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD5224E4C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770705234; cv=none; b=MrR5fzayUrPtTQhGmACWuN4Qs3pqCciUW8WLygk5k+NIyogEGrSoG1ET5q6jQnNtuzWfPSDtfj5mrc+CNGJd7xsWZUaXQUsTVDfu4eJdiYoPPCy4ksvPfJKX9DtIerMUWW+NuifBIwZoGLQFphvXOpKaVBmRCtbelWnEoN/O5Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770705234; c=relaxed/simple;
	bh=kyeTgLLgRY6q0sCoN/lJ2CNfP7ZGW+mnhxcnvkSjRpI=;
	h=To:Subject:From:Message-Id:Date; b=BcBjzdaAwNhts9YKpYFYoE098Bdwixqiv92weMRJaUgC9G/Z8Y0opBasaAiqUAuAV1IsZVswEnJ3tOLfFeWXeJBsJ/l2NC0hpcTt8zUE5dgjk82y0ZHOxf9s9cPLJmxvFO5fJy+5EulIRb9W1lfVfC8sDD216PBmPdmuUOR1CMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bdo763gT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bdo763gT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B036EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770705233;
	bh=kyeTgLLgRY6q0sCoN/lJ2CNfP7ZGW+mnhxcnvkSjRpI=;
	h=To:Subject:From:Date:From;
	b=Bdo763gTbNkcd9tUDdiAEJ45HRiT4eezOxLqLQCZzvt73UT549SDcQyNurNAFP8jE
	 r4k2DjHjF/RNy22D8pmpDj1u5sMWX5LnVDtgU2AlMWHyidVC3vFdX6DNfXs1v5+yqH
	 sLtxmFozneypcIrirD0AS632idIX4i0x7+J6W4aRrn3CDgGZWVqq/e2PfE90Tf50gt
	 RIH0feC9w0ZtAl22ePxecjr6eK82oJS2bebKsTUyLMeptrHDWC1ntIUnWluOIIHf1J
	 cmv160a/eBEoBZE0E7/DaAlJXNuXckP2wlZTmC6xGFhC9BnLTRkwGENT5lChFBFOBP
	 j/fAeuHFg1D/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA5AEA3F0D
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177070523363.22939.4935170713303803233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcea376b671526906009c05b395fca7c37effec8259ec2eb036a811abbf95fe3
Date: Tue, 10 Feb 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770705233
