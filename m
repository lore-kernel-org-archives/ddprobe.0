Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F52E1A0BF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766274234; cv=none; b=ktlnTswzRwFtPyx4xlaGNIi+vOcTvWDhYt8WPIVzzKJZosOP87073SrWwB5dOdSLfi4w6unpcUM2mVLimOPv9SzBrChyESjDfUqRbubWPRaG0mNf2q9Uy5ZrZv90I1AcAeQKaI8DtCpYM67biNNR+v18BYn8mH2/wzL7eatF/6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766274234; c=relaxed/simple;
	bh=xawB6NiVTbiuzHNMYT3cCyqUQ8qtuA0ooyDTK0ToBdw=;
	h=To:Subject:From:Message-Id:Date; b=uAmtbX6EFWoCH6LipU++2DUrjty9aks0Z3/wABa2E649LmKEemLBJKwifg6+p8HH8vtlR1WrNI61oAg/ouwfWMG/R6zQp0423ixEsEl+AuDdOUeQ7LlVDnjEMA5qPHBCc0/LvrkCNm7++LGIqC0R7flMzytBiGo+uEoAncH5dUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpf4GURf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpf4GURf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04CDC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766274233;
	bh=xawB6NiVTbiuzHNMYT3cCyqUQ8qtuA0ooyDTK0ToBdw=;
	h=To:Subject:From:Date:From;
	b=tpf4GURfV0NZ1xQr2fzNBJ06LGAGQzQ8AVFu+UeOrQGsrnw6KIpyvfscqk8Ag22r4
	 Cqh5sqLwd8udnc+24UpVqrw9fvFYMQ3ZO/UQlRus8Zdg1BUK+TPFVxvCScTmdG3ozN
	 Un4e7gIUyFXsdCPjbiZ2RSBq1TyPdDrgdRNBl2qtQiQBD+xcNzrPhHQO9c03vZ5GVL
	 EC7WV9ISzVH9l1TIL6NtG5GbT5SzUxmGNYEDmTURSa4NdBaeZXUbCUsZ2TnkC/L1cf
	 XmIqMPe8M7hjcHmoAec8HsjrugBUiCFadh+oEU/gpS1XrXw9DlB7WWQiVbR/3R5ppV
	 Rhk+LYytuhSqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF11E668BB
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627423358.23116.10417278998876192262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d04c872e55a1332dc5b501d08f110df7d954e6761052961eb29ebbf4333798
Date: Sat, 20 Dec 2025 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766274233
