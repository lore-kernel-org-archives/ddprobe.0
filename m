Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5884879B87
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717196063; cv=none; b=YfXaJ9OzH+n8Wmij1qVuBViXfGEFDe2wQypvYONBN33I3ZY4tJchkUAK7oIpsO0NQ3BV+iFOgpl6mgzNycxlrH2utNf09v0thmhpGtMmw3cg5VqJDImWHmpzGpUOetp7GjaQTrR2tP4IMaIk6S6HX//do2IrkMHb+meRjWES7hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717196063; c=relaxed/simple;
	bh=4mp3fPwzTi4sfmWeiCzhcTRx3FeIaM3Pym9vBkpOCdA=;
	h=To:Subject:From:Message-Id:Date; b=JeNzMWgHg+KlCy6cRIlStvLrXvOj1QYQgM1eSFAX3EfxntkAWQXfwbwaHhIWQxS1QJQCCeyH/OzYhJZSAoZ2xQz74Zx7vcp4DR1nEDbCxrrF459B11dP1MZSDC737EEtPsTXYGqB+Gf9xkfO+PTfrGLYonnYIscztF45LrHPykM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxvVAlEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxvVAlEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2160C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717196062;
	bh=4mp3fPwzTi4sfmWeiCzhcTRx3FeIaM3Pym9vBkpOCdA=;
	h=To:Subject:From:Date:From;
	b=fxvVAlEYlrBqiEKvDcAin15hPoT/gIb2mGkhGp3C6HvlXETZRM5nqa0DquXReAAvN
	 XjB8T7AOpFhFqmhiyUOPrc6+ouhWi04NyRLRbvQGcXq6FhzIuIiVXgTglUHYBq+fNI
	 Vz1VFT4DpxnNbJD0RZ5sBZO1bZhZ/oVSpB4nEm09f5jWKL5ruxDumlcSMctWDhX6Yk
	 PCO+lLTiA6dr4SF92ucKDnc+tWkkEvRDFCuxGFLUN3lbKDVMQZvQlawTLOrp731Lkt
	 ASCCALQa1z2KYG2uKjkafrjz20dyE1++yhUzqzwloGUo6BHRcXltuAzWin529f7Zh7
	 aYEKF8PSTvCbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE218C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719606277.4789.6146009974376092479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d49a223a3101acb94bfe86f2c5a4dc35fd2231476e539b402f1be7811c4fbb8
Date: Fri, 31 May 2024 22:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717196062
