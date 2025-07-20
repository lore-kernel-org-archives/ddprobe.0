Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C678F40
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752973794; cv=none; b=OBQIwdm1mlhQVPnjiugfk8JBO5TkvXUGHmSntmzYK7SHdeQQASTuOFd9FJMoCDwJiwqic9AcTiMcUNLxv4iUS39oDHfWKu0Is83VHtA2VRlnxDXGfxw7ASMXbNyOdeY5uxVO2h6rA26g05914+njMHsserlHbtbsnbtFMuKljgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752973794; c=relaxed/simple;
	bh=Q4qmq2NvqYS9rXzrMUSppeYr3kWUBaDwDfStQJBYeVE=;
	h=To:Subject:From:Message-Id:Date; b=DcSAnQQ+uMv3EHRchxKuUocBHaly/4V7f/PnL3N7vtoZI186geF+jbqK/K0bv4JKKyX2TgyonkYA9+njLR+IOu3X1cQTt5HqVNKbJ8H5yW726lSbC1Ni5dRTujroKO/0liysTLWh8RbGr8OrFMscpFjot6X+fqiaUtdx+NvxsiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3tcr1Y/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3tcr1Y/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7804C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752973793;
	bh=Q4qmq2NvqYS9rXzrMUSppeYr3kWUBaDwDfStQJBYeVE=;
	h=To:Subject:From:Date:From;
	b=Z3tcr1Y/F14pt3vGLRbUA5tsSK7yRWnl7g97w/Hgn6iMRKhRwd9x8BTUjk7typkIP
	 8+SZhA+6vRC0UdP7ld9C9LOxV08rxMZiNl0KfIIFmqy8zMBEWb/nsFFtvLGdux2rNa
	 4JLzFUpy59n5g0vqPuyiWhPfraN5ciZhowdohUcvX4kblpsL6lflIaGmhT6kSEGEY/
	 ahX25SSBvlnhM/aMJKhEBIIXGhDvlKP7AvJIlwAEHqgGaW7dUn1kd9I0RlEBDgv8qr
	 dwteLl0PtMXwTHWVeBKI3usCwWAML8hMok6fLW+juDl3JqqhAYO9lAs2/uFWVPtKa8
	 6lAptizg43LRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EA9C83F34
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297379357.18538.9569087050563590382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a87390687a3d19283c1f513af149edae75aceca8cd5863fb0a58bf64f18f2f
Date: Sun, 20 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752973793
