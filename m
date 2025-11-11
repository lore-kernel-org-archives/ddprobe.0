Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F4533BBA1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762823993; cv=none; b=G2KsiUSWLhZvvHKOdF9J+kX4v8qMHdB02lFGMnpI3m8LO5p43LOX/EZhDeqby5KPrUzJnSx3cHS5U3/xaZghoqXo97tLQCu9QcXGnVLdnJ+e0ef9ywRIGlw+lKw8bor5RZaO5h/k3fwg9RvqC2T/7oQ/+t8wqqrAmhrjppCBDPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762823993; c=relaxed/simple;
	bh=3rbRE2Hw9QLn4Py95ZagluVsz6L6ONZQnmCboLyvJRU=;
	h=To:Subject:From:Message-Id:Date; b=iMiT7mbtXJiIk3SsLhn+PxAMDu7m0HMppcUh5SxL81AgM3bHX9aP3iNeAJBZvKEubMuRZWRIUU/PTdrK0yrRbQDKuZhMiPbBKB1qC4h8Lpq+Bw5wPxrALpxIvPwalMn3z0+8nEVoxYZSWuGG16y3SaFerHfZh679KcEqiFdEp8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caUuDmi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caUuDmi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77B1C19422
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762823993;
	bh=3rbRE2Hw9QLn4Py95ZagluVsz6L6ONZQnmCboLyvJRU=;
	h=To:Subject:From:Date:From;
	b=caUuDmi/HHg/bcz0WzUFK0W1qaHfMlqTDYJ5gSPYJbxFeO1kbX26o1y0W4HNc5F+P
	 6kn9++Mq8E+tbxEq9vAvGv476FUWiIult96BV7h5eNtqNHhh8jTCLSRFWia02KA1I0
	 dxfWOrGM9LgEV/pnRGfv+FxviTgwAGrckH6FncznCAeqe9BAgHybF1/HTeY6lEOUyA
	 BX0z3sijxuMIMmLXRoQrbK5X49CWDvPKAEFzMIy9NqKWtmP+ka3wCOSZGq5Nt2uCiq
	 De/srEwYV5bONJ9h8jZ3uN4GuAt230lsinm4gBLCPMfMW8zstNA78/8nP33fhw9goO
	 EGTTzJCk8ho3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989ECCCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282399358.22689.1240386241694398919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bdbb304b3844e7104174cea0332a00b99fe8b3b63b2ac75757cb644129ea5c5
Date: Tue, 11 Nov 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762823993
