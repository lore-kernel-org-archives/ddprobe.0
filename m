Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB1F14A8B
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766978034; cv=none; b=pw3k6xu0teo9AeDbh7G5YUNS6h7sCZOi+FWcO35X+1BNDAUNGbPPumlrXAfwrkkymH/4mkYB7C5ElE+t/9Xbd+S8faqkoLRPKDpFRcfD82fMd9EzXbFYokgesZ7112c0fyyL2oBgrx4fvfrlfmxroexfhDy0V/kVrk9Pz9+tiwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766978034; c=relaxed/simple;
	bh=m8xiiOsfuiDiBR0jhnXw2tYw7L5GjZ0XLe5vX2WF+t0=;
	h=To:Subject:From:Message-Id:Date; b=dlGdIVOmsi4l4IKYL36excxGsTPx2GTdjmfNn16Z21F1YddKYCW2x4mXslKvbD9odfttwoEMLnAOb8yqggk6g8Nb63H4kanGjijZgLRKawO/l2SO0cn0xVippgdDvi/NWkHrBW428z+AVjlL4yY+F7CjkHLMdcBwWcMYczLr+2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAyp6A8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAyp6A8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3ABC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766978033;
	bh=m8xiiOsfuiDiBR0jhnXw2tYw7L5GjZ0XLe5vX2WF+t0=;
	h=To:Subject:From:Date:From;
	b=UAyp6A8uYAV1pft5duEKMGmZQQa0/iEUMn3mFkCMe1scj5Z6JfElZlbBmKDA4eQy4
	 /nTnb4ld2OgAE8xlXH8Y9WguOsKvq8oVcJp/9ocpIOSFmbycKhDtkkk5bbLC9TV75q
	 mdVqxSNJO0MorPABCB4d5ev15qJv3Jretu9T/BlBcxXa6HLTEoXhy0aodmXNNU1+aX
	 xo292rYGZPMffNpM4JyCxOCmoK1OFCrZLWaPvTrB6UQxCBZBenB1/cTLk/s2uel+j0
	 gAFC+u40DTIa2Q6EaSQPb88wJJpSu1O9Ie8bu9xbfMQIntdX+GuvcTEKtgqQ/d3Ky4
	 aMtWR9vHtBjpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B36D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697803363.22698.8470988243160647733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0745650de34ed2f84ab079b4467e312aa74b1917a99fa9bcc78a459273bf67b6
Date: Mon, 29 Dec 2025 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766978033
