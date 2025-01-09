Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F853487BF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736394954; cv=none; b=tLQLxdZklS3mi/CJy7SCs2n/uPRC02ID2/xIFp6EaA82VhmDdcC4WMW0S4sAoeTiJ/zd4TAyARLeSy0W61khdxbab7I2m+mMlNQhjgatwjTYZMuJgNmoPwDODIZWXdnlHxPqblY43WD683XA3cxEa9fJ6nRwv/ag44veh83h3qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736394954; c=relaxed/simple;
	bh=xWdHkKo/x8QWCbU+LbZK93flb3Yu/1Mw4ME01s2n5n0=;
	h=To:Subject:From:Message-Id:Date; b=RaDn92UR2YLfvjcNcCNITcjFfkFQpanUuUFwELGkYu0Mu10RSjYzYcuEEvtWhK9qUGk9UI+vLAzNyLCOfQ+8VitL7Ls+4X6atm1Cs3QvDJoOdEawIKSSEN11J6Q3XMg/ngBFAUyPwth+vKX+EGe4Zax+C/tdmYI5vjqynjEJMss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0I1DhL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0I1DhL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4710C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736394953;
	bh=xWdHkKo/x8QWCbU+LbZK93flb3Yu/1Mw4ME01s2n5n0=;
	h=To:Subject:From:Date:From;
	b=m0I1DhL7LI5HX+BW/MB1qI6uxRIbwo8ZnXto/wkD/YHDZsasb0q67ymhAK9Hhc6y9
	 p4esUXVD7u7Wuj4f3EnLTzKjQ2Bowdgix5vLnUCYyvhguBlBjbHXJC7AIBPxuXPQur
	 6FTbdfxKdxptGA2NwyD2jB3EmFubui0BGKivZEE24JbwRlujtFIF5AZxl5a5SgDvem
	 EtldmUdV7UAkhpR7WkNDlc3wiF7dyFJ7TyCcKjdQ7hbw79J23BC6fgSTgRrWSXrE1M
	 c/fz5pA5NR303syhDvfnyQTZg6rY65cVgYBYtMkIMeM3mDmN6y+rU/Y0vFXMfGdD/f
	 QZQ+O5dEcyFIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C08E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173639495359.12821.3199394037140917796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1ce7f6644ba4b8ffa44c0e39d24635a11417dcea5926149ef38cad216ba8e5
Date: Thu, 09 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736394953
