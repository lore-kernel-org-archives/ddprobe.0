Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D869227E80
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748967594; cv=none; b=nvUWM791HlDmfbLJkWoGyWYVYlMuMmq/5u8eBdIF9lw16DFIOZfp0u6SmIZw3dXIud61VzRjgLrBhtEGi21g5QOn26dzUaC3osgwKLVDsjUC2ufOCfcKS8/QoLJnvhbL3gXvJ4YotlQBWhEXhE0AP8E2cy3uWPG0mgKXubpXecs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748967594; c=relaxed/simple;
	bh=n6IK4xqvr86bpOWGboXI+ifPeKkGjFCHY0ILha3QQHM=;
	h=To:Subject:From:Message-Id:Date; b=EBC1Ir34QFOwCSQPcWLcLbRW9DERWFbk8EMsbqucwmQ11rI1PjnHZHoyBvAHmiuJB23R1zV72wDfXrBXUL0/i7+UqnPu9B53u8NmoVMGsokTDOAHkWeR2+pgpOgmJV6E64oTis8kziYGIFhv1TXjhQL09C5THaEXb5O5qeuZBwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSCehs47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSCehs47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4401C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748967593;
	bh=n6IK4xqvr86bpOWGboXI+ifPeKkGjFCHY0ILha3QQHM=;
	h=To:Subject:From:Date:From;
	b=OSCehs47QcznZAVZtiijCZflgmdcUPqN9wQahe4nD0zURiHQkSzYrftDXoaC79nit
	 7TvbeYdJgcmbj/Ii8ln0DRAupkt87l6vYc8mVi3YtYR5ijbhZs5qDONlLf78fu5qLd
	 WN5n6tvj80wwNvuL6I6zkfQ9dR60wRTBaAQ+MepPSCtvE32x933gL8BL4bJNVGNJBy
	 7Dt6YdsWtT6zUYqqN/4lrt9WPvDIjhAzqX8ioDmaAWOiUzsWRTCirirWRKWTt+agV7
	 Iwn5RgKQgbu1NnIuiCVvSR5pUyYXrCOxBQYOAWS4DOB2QY/n4dJ5Gf2NHW/daCVVHW
	 TsmRYztYTzMeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91435C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896759358.29493.15531213909401371370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58c1e0e98afa1bc7f85eb0ee7adc93e925a33524d16acaf314782effdf271e2c
Date: Tue, 03 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748967593
