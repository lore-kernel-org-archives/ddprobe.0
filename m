Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237DF19E7E2
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761492594; cv=none; b=YkYm9ZLvDcnHUWCYNcVikTppnHO9258jaNWUptLk7GThH4KqyzUneZQ+jco8QGqtm5V0aDD2pcafTKt8KzYIxGf1vzgnP1VWaXlYlWYQZJ4AzfdwT1crXyLpfjvrFx6URXYtVgXbBsIILskzhC49F+3A3bZVPhUEYu+xpc32Q60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761492594; c=relaxed/simple;
	bh=JMVqNbA7Lj0IEWizEFXIYz1aHGpHqT4pOSsTGMrAkVk=;
	h=To:Subject:From:Message-Id:Date; b=FuvR+ZEFSqNh4K0C+vl3IqGsHrnN/5vdxSOLr5r3Nqx6eSxNU61IscSlXMs/niYKE236b2TuZrRbD0sQNaVWcfMNGNonNjim6zaCKnIH4ByKXE8y7qaRgN8VTJ4USKNAs6k5W9obGGjbAOgon7bHdncB7i02ucAd3ZA/F9oWcrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkGvtxuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkGvtxuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FF1C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761492593;
	bh=JMVqNbA7Lj0IEWizEFXIYz1aHGpHqT4pOSsTGMrAkVk=;
	h=To:Subject:From:Date:From;
	b=XkGvtxuLdm42ygu0ObLkD3WLKaayP27mbQ6oVRksAlf1vQhX1/1Ssr71tyltVyVEm
	 EH5F6YQJtCjeyfM0mzdeWdV4+pLlIGNBcF0X79nsRKoujaE4mIrWK23x1STngXtgzT
	 qXj3z7xfaNlav6faRGCntqZ4OmpmY3WWsvPq7agoRJAfWPxZRUueFYWz8KCRi8CYbk
	 I8ihXnq9zqbaGDQ/tIMxHDRUy57NQtsloeeulxKXuLtrfBJivUtvQK8RwOF8Nc0Sp2
	 t2I1QOiEgQxWmGO3sRsXIVb8ux1iy8h2agWxRfTn8JoU7O/bay/Pi8xwIhc0bLSMS6
	 Z+HAUJqxi2ZsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D1DCCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149259358.24475.13154852475609172895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7556c3d04041ed722dda718165b52d82274e0e2fead6ad41309a2b10efd1226
Date: Sun, 26 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761492593
