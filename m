Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC79BE4A
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754095794; cv=none; b=Bwd1ZXbOEGWX4E/Eqg3WGJ6JvlzDI7WXHD54MP65y6DT98opl+khT58gdVpDcYeahSk0u+0roLUQoDpcgDP01VNu3FR0xytwMvvzodtr64RQRPDw00JOAITZHDrA/I255S7FE731+kE4EjuzVzio9tdnZYHF6Ouj4GuJanqIubs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754095794; c=relaxed/simple;
	bh=m10qWlEPQ5qFNP/bA+TGi5dBjvNGQSLBkl0IFxlb9d4=;
	h=To:Subject:From:Message-Id:Date; b=By8r87+SgWNyz/DlFNPa+WP/ES8hcEyFwksMge2WGfW1OPqjGQ0WynXD996bBKG+MKsffxVCSh4H02xQ827SJQ+8QsWwbtIu3e72/VE4vcGc5gXQPqdruZNFzqiH2vTooW/TrdHqIZhekUYAaEidRgQ6qSfm+yY79i6z+IL3P10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ny9Eg+AN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ny9Eg+AN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A628EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754095793;
	bh=m10qWlEPQ5qFNP/bA+TGi5dBjvNGQSLBkl0IFxlb9d4=;
	h=To:Subject:From:Date:From;
	b=Ny9Eg+ANU3B5CJaJpnWPFWn+vOm5Q5qOKouzttY8yNu9b8Q0HnB6OXFQ6SZ3cR7dH
	 RhuhR/ZcfvNeaW3hgOK1WstqGMniTpFJgpvCz7FFQJIf1d6KV0+10YSiCSRO7dQiLD
	 ikexGQ/AgqOMdaN8kRDATz8TvKg3hKid5ATEFgVl+y4pQzy6q04AQj4U6EIy5sOLeH
	 Ji+IVJEDNXZEYfbrdcfRJh5wO57CwQM8CMLkhHA1oaBxcUtSjHdEIABQJ9IesPPDuI
	 UguxQJZf74pK50HvqK42v/7rBe2nX95cZ6ogYtpZ4F9Q+NfnAN6ICo+STKK/mar+0c
	 1acP3+12NgX6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C9FC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409579357.26409.14645607214530526101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c55a5f024198dd99139a48d60baa2e755aaa9f4685975ff7c2dfe8f168ac103
Date: Sat, 02 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754095793
