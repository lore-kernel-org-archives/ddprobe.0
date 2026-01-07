Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088EC1F1534
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767746034; cv=none; b=Al+6DWkWggntrNIwALGqeQ7fBoAu+wzCUggSvWXZl9c65DGbBvn6ShxSdhfu+33lbJbHUnHgv3kWVUE/ejHK5Y87P0MCCsplw3itOyZ5RoNaEs7CEu20sd4qNdzQJPKHcavTDVzAiU6sCZlg7DfAQKmk24rDoxw5HW4RuPfqHPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767746034; c=relaxed/simple;
	bh=dHgh+0aNpt0dSnxdP9nz1/G7xL4S/gEpz0hOjl3k+vM=;
	h=To:Subject:From:Message-Id:Date; b=YirOtHXBDoPriR3DJcLxo2v72/L64yIyytteUz2SH9rC0V5TijFdA/1cRhz55YQSDrjGf1gMXTTK3BlXQ5f5VAd+QRyjsb0M+zAAAFAmQVwMOnWObsLrsAYdJT/4B+4mNrQ+b4EXZ7mX15xamfWBOZpp2zO8S/ArtlMWYIkTExA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXc1wZSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXc1wZSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AECC116C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767746033;
	bh=dHgh+0aNpt0dSnxdP9nz1/G7xL4S/gEpz0hOjl3k+vM=;
	h=To:Subject:From:Date:From;
	b=ZXc1wZSvkl1Nz7ogr14rH23xVc6GKT5FNC+yCdQCPFNfZJ75EEPZtkeJtP5WfA5em
	 OiLn0M4/dmu7EvU9hCG1CUQQCN7TPW+FqR1q3BYPCAKH5Aps+tafFM1OMrN3QtXYwS
	 pZtil2KAEnHVNXUseWF3wXpgXKESybJ+bhekuDYBF/qebyq7swAcKac/4WhMUIcuUX
	 F7FBqguvvPcVq3kklKM6GVGrZwk9RfGs8kzrKdtnyeAhLRc5sP/OQ0rjp6/PMOBEzA
	 fo8bPY2SBs3j9aEVGpl3rJfVRzYs2wAXOabcWSEftpOYQYfeOmQKxZZSiotFnGDecn
	 i9863G7LayAzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC0CF6BE1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774603357.13751.8612921614725970659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68bdcfdbd8cb5f7c5343bccebd85d7cc56420ca8a26115f392f8e0e8f212504a
Date: Wed, 07 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767746033
