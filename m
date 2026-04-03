Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38944311963
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775259934; cv=none; b=Py2Og3d2UhneYgwJITKfc91L2hrEqRNdpVOGrvNqv/Ct8mfYzXIPHNICKsXpum3HM237BXkT6o6ASiitvd1SmSEKhRvZZ8977uk3OO90K4CU3t5JAMjGJnuXC0r5zOs4Uy63Ax5gF4w+qtge3k0yOBgwJY4MScuzWiynDBrRcXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775259934; c=relaxed/simple;
	bh=acJckRPj1D/onYChVkjia3JIYNdQi3X310Qf+bkDGRI=;
	h=To:Subject:From:Message-Id:Date; b=DP+qlDtSlixhBsEbrogSOt5rxk2Tb7zSjLeTUjkyM/iJ5tmrV77/hTPpccB+d7qOcYBBhYts3XMlTaHq4dj5iX5SgQ8aXBqkualKa76OiblzlEgO1X2sEva9fu3e0Z6Ooe8vDy1t49HwczyW3zzy66NtVMBJAhouClAg3ZrEY58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTsY0hY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTsY0hY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30E4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775259933;
	bh=acJckRPj1D/onYChVkjia3JIYNdQi3X310Qf+bkDGRI=;
	h=To:Subject:From:Date:From;
	b=eTsY0hY0GwicnJXU5jk4Aoy1D8YHaT0b70bE0TwfgM/GbiBlHzz9IIPhehx07hBLh
	 yxSSvR1RMFemJFjR4Vr1bpyi0XbJGYAHEorSDVR7yhDz5LUzMiQZbo2YLeY6R0WaGs
	 eQx6iXshHNhsE6xRCp/T4sxqQYZtniuSCeF7vL103/y4cFDNssNYfCLymQFNnRVbBh
	 hpfeQcibpgC4dcISX7m7E8/nwANkN5dVX3LMTLPU2DbOYgM68CzMDiDvcPs1wUY2aB
	 /Gd4Gaausohb1aK/kgRCCm42PIdBOCicDBK3a4pEscNQzM3KbyTfCJJLuvXzp2vwlg
	 h0GTbBYojmhRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7A0E88D6D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525993368.22766.13887575219740845548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f9c0444b08c582925a99f84edc55cdfdcae959afb5ad838b792b82a070a997
Date: Fri, 03 Apr 2026 23:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775259933
