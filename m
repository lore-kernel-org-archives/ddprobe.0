Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E82158538
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768953834; cv=none; b=LIVbLDTY607yZt0leX7kgEiebZ86ikMC+9u/5GNchdhZVQid4+wL5lZCS7jnBmFhz87HqlA6K9ts+LCNX5HYk2X4rja5M1BXrVMtKBJH8fm6dWy6KjJu/bh/GqPfcsUixs3Tc6g1du3IQdiLdU+cFTEasTp+t18jaakT8hn5vCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768953834; c=relaxed/simple;
	bh=87J0Z43iyHDqfpewnVXPORF7IjEg9159CyKxC+ANr80=;
	h=To:Subject:From:Message-Id:Date; b=fIzjMEJY148xQxSmalZtwmOLlMBrCLW2BbcqhV+fMjPqTz8YqlJidQNLwS602+BefSF3Y5OEHfHMk/4pIcK1b3J3RWf2TvP4i9TCaH+lc+tCceylBCTU21uRZ13oY4QSW4hnC3A0NmUjP6rsZ6mLNfmztzOD6h4n2ZesNMjz07E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCGZMsTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCGZMsTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A56C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768953833;
	bh=87J0Z43iyHDqfpewnVXPORF7IjEg9159CyKxC+ANr80=;
	h=To:Subject:From:Date:From;
	b=LCGZMsTIUi7ZY9I3BbQ7O+67KBHZWyRv4dUgat+ShNJ240IM24Oc46APKkCRLYdbZ
	 i1FKHXnyyVk/GFvar3ATAaZbu34ilyi9E7WAHaX7Yo3j313fUINH6GMiNIIKinbDVm
	 kGATBZPBNUbeEz1vITLK/yn2mzS0iL3ZBzy8priheXbkLn9DjjAisCiJVE1mFih3+Z
	 3p3kNjKmmtizS4P8uEjlc2N5gkrfWkTf07SRAW2DHWU6k8m+CEBwZYPP8YLC2jD9xg
	 qIZnrigB2uWcNQKW0bSpimjCT9rKHkB63NYqKJr8EeIXEoTKAP7wp+vVt5WpjDK0Op
	 UjRb1QrqOFj3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C0D262AB
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895383358.21011.12951383063260705740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a7083f56e2a11c161296ee6818642166a54dd8b345794e7e57c8977d4465f95
Date: Wed, 21 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768953833
