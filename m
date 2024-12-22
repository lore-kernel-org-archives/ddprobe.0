Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A5D18A924
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734879954; cv=none; b=N6d7dDMAv7s8+CXrEL8DWzN27zM0+xk0+XNaCtQcDYo3wcihsNBGTd1TYzKOz/NAh94eD8J3UOMnbiBRJcgOzP3WhrAepxDvlW9D4oTkgC0SNbZ6JxkyihpmkQR94vlNYRchM7cqNtpYS/EMVsnA+vH5z6whjQpToy4O7uGjNbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734879954; c=relaxed/simple;
	bh=Rm5Ix1GPgMUkz4oeJ5EkyPxFmDlop8ANZEsIHwFbRe0=;
	h=To:Subject:From:Message-Id:Date; b=Cr20HFLF7gHWX4OK+RNqMhWOhuZzf7CsPAwKQkpjFoW88YDfv1HwZTdoTWmdwG28WtpMRPdNNSspa+jcbdibvTZ6rDVqAavVnLlSWAJXeDuEC8nvvYAqOg2k77EnHMvDUDezmCBpDNUMsVXNDjdZZRaujiyJxF2JSsErfKE7H4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuaWPqmn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuaWPqmn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47E6C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734879953;
	bh=Rm5Ix1GPgMUkz4oeJ5EkyPxFmDlop8ANZEsIHwFbRe0=;
	h=To:Subject:From:Date:From;
	b=IuaWPqmnKta00cYJKmXFs3OYfVLN/OjjYxjQSzdSEu0YRG6hparckbZarwQ/Ie7wX
	 E71wl1tMderPP8wi5XHt9OhRZU3KNneNS1/8/3MjEqOL5DDqZleDCnxUoUY7SuGLge
	 CznsGuhr0WKWaKW4id6tttSjazsmzBGX+t2TXURTzS4brIGk3uUzCN3NfIP5LHVhbk
	 Mz2flu1LIlBcI0Dh+UYOTT062ogMmCc/5f3LlWgULZ/IDTFoibSLdycn2GDzTUq60s
	 l6tlQrIzfJ11bddGVmEhjrhB0sVe28sZp2Uq2KurqzH+eQKWJMFnq30gWspTUzm9uC
	 WEt1KWPt20tlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9868BE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173487995359.23326.14218082874962411510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c20dc8ae4428ae287679d6ea4b74443860f5523b63518145ea4059e8e78e30
Date: Sun, 22 Dec 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734879953
