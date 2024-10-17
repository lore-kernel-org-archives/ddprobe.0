Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA92C1D31BE
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729172753; cv=none; b=tHVGJBv0LarFllhbCIsa8laN5I53JzE1JqCytYP7ex4QoKbPYwIPOiHZTpTCCFachBl7zfB9h9gfmnY4ooaGhm6IHfG+8cWFxnv5f6ZTcwKGtEPnFoe+w0ILY4zFqQmo6dJbcuSP5WlavNOPGWpAQ9bbR5HMyKuj3k1ek6xpWhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729172753; c=relaxed/simple;
	bh=YOqpKLwlUGfLy0OyxkuyeNXKfoKpw2izQul6aM4ar+M=;
	h=To:Subject:From:Message-Id:Date; b=i2vYb2qJgCpgnUjJO0LLVWvrDn8th6jQfJY7TUHOz1zKRpkV9uPubaQ1XpSOL43u6ewe9k2CstrwCeicRrwY2+vNJpweJOtfUWNtUGj7nl7+895MpCPe3WvZvKap7/xKpb8w0dCHTXiwgZ4ZkUZ7r6uN5HXx+e4GdQn1Gt7iv48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVrn00ht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVrn00ht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2960C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729172753;
	bh=YOqpKLwlUGfLy0OyxkuyeNXKfoKpw2izQul6aM4ar+M=;
	h=To:Subject:From:Date:From;
	b=jVrn00htZulz5sW1NZNeOrmi5qIH6tdkTZoRVTZxyn6P6PAjvLumADkrr7OO3ElWy
	 MXbzRt3IjeW7XTzCuLFFtDE6mRtgLWS0rvmq4B4Q5S9BRLLnz2QhfGMub17P1Q9VPg
	 /RBJnZMBFvjdRH/qrZHdW8ikr12djKoVisytFIcy1OMhlpVaSYOL4ZEykovPvi2kdo
	 91nu1rV5VA2+KPiyxt5qN2oeWO+37AgEFzPE/r5iamgPQrhvxa3PcbD3ZqZgxi0oWl
	 q0iJSSCwrNEhWPwUbZPbUEmXFguIqhiLTma7PZuFQmcRxTUOVjj72lZaMkFAN9kMKM
	 19H76cwxWLzvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E0CD37492
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172917275359.30735.4206336696230945572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02332fd68915c5fd5c7d4d74d8e9b3857c364e7c72c7a2df5ac48b9d0c0ae98
Date: Thu, 17 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729172753
