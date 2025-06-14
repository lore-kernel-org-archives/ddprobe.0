Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31910F50F
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749893395; cv=none; b=CyDFLUdmEhSNRzVghb+WSGCzXEQZqtXcLBhzs6W3yn+mEgoihXMFVmzFiAHDcQ/LOd8109udZWDMgOPeMm03xIaH25m/R9a+LNzjQT5SeNrS6162/QHmedcLHeW4RjTE6ZsHv+gUCq9LCn5xd/P8miyKaotUisN7f8eVNiw97ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749893395; c=relaxed/simple;
	bh=6XR8umISefv1fbsHkUwS300IfrGDu3Wtxe8EC5aszPY=;
	h=To:Subject:From:Message-Id:Date; b=V7LnIJ86WupNLGmKjEORVhI05Fo2vueDgQ5WXeRc2Bw7WMB3jO6jC7PTkXiiYXJ6gnq3L6YGNHdoW+4PFo5BTDdNek5OmonXzazrqAHoY4kI3kTRRcaO0+YBvvZ0qRT2lmm90Un8hpo7mes06eD+W03MqdhAfUNuqqDXZ+xKj2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBIAx8IH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBIAx8IH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D64C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749893394;
	bh=6XR8umISefv1fbsHkUwS300IfrGDu3Wtxe8EC5aszPY=;
	h=To:Subject:From:Date:From;
	b=gBIAx8IHyWZvkTPwFIRVrHVVaph83952dhrcXntkBnQ948znNSIQyiS0Yfa37Fi68
	 PKynfC3NOwZ8xmCX+OgTwygkY2OECpZgm9COH7GNjf7og5PxNrbvozWprRKESL8z5Q
	 lTXEHVHhNP1PTftUl+c7aVI53sbFm6uJaIIRhKrOe7awR35sDRBO/NRAhVInsNAsiQ
	 dK5hEjzDmEnsblUQrnaM7C/aLFBL5l1Vi7zqGtm8RiV19khzQTpamEnQovuSO7FBa6
	 nxd9y9URQUrQseCTmnjFqG7yL201+yLsp491D8S1fwcnXuJpJbir0cwElmuBRnjmUv
	 0CWguGLijtp4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93085C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989339357.2404.2174799418582856108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb84a0a89045d97b6f05fc754ea4f0517bb17a4354e1ba479b238e1e4776a39a
Date: Sat, 14 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749893393
