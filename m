Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4FC2FD1DD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762166394; cv=none; b=CT0QefxwGXoJAYJjQigxLbVWRn/Nr+GURMZWMPKw/NLJUP9omv9Z7FlORO6u/E9XabKJpOuozWUJuS4o2GaEFAOwUK3Q8UW9yBHLBqzdA2EbwolbgEHHtwmp+2PAWcmrKK54LG+Dq2FZRARGt5/q5UP7hgmaNHUv35Ru9dtfm9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762166394; c=relaxed/simple;
	bh=2AGpT+6CY42J9xYjsQqSSyUc2gQZb61ViCuCVm+3Brs=;
	h=To:Subject:From:Message-Id:Date; b=QR+kDX7llPRGakxl+Cj9VU9k5tEtY+MnWr3R/XCRizyqxEmnDikXtG23GdEgP+FAcfdmxaK+fazMt31o85tdFxCsOyntRw7FaAlD5ELvbz/35Bs4Slc/ou5vH7jiLZsQ0RAko+WF35vBwQtoOMz/VRRTXTIInvRQX6e4Bo/+Osg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6TQZ7qh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6TQZ7qh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD94C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762166393;
	bh=2AGpT+6CY42J9xYjsQqSSyUc2gQZb61ViCuCVm+3Brs=;
	h=To:Subject:From:Date:From;
	b=i6TQZ7qhgV7IuWq5bH61SrCWYh7Ybl0SAXrEOK/ogAAEmbpHWpBGZ+doUqLdWYeC0
	 KC2PCjOSZXvv6O4lotZg+bqLPVSDdrJXFTWlynzUkFYB1uUWHjjMzD3GNRMeLrl3mP
	 1Z5qwkgpblgZJRydj5LnhW3AMauABXSRDZUJ8pQHyakV6Jz0Nk6qfB2kD4H+Fu3ruE
	 zwvUczODUUvvZm/cXzvWzpN3lkOXPlYN3m4IK4T5CrldyI4DzCBf0QluNVk2j6Ezbz
	 JuKPY64h4ewbFUqCjuwAhIQDKKQjF7vTjsOU4rfmOzf64Pi0bnh8oKYklpNYIimZBp
	 ZX/1HP6/8duYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A065CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216639362.7002.5503044592795189989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e19b1c8d19a5686d5d9d220c1b8b635730030124689120d769204cf86f10014
Date: Mon, 03 Nov 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762166393
