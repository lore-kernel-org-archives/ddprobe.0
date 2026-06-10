Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490CD1C8604
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781124994; cv=none; b=NP5DWw7VTHQXwHyVRJGECw2UrHzxAUfpvxB9fr2YNf3KxxMPZUezFJVoG4Scj82ZRIJ7FSnc4MKquy85MLuiiQLTJnw09aChMaWCue0iwebej2fyXKi2TDxgo9dVQP+kCuAlTXhRKoXM8iFIL/SFnqryXK4KkfPMJu7Ypm4N4OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781124994; c=relaxed/simple;
	bh=GmNxUatG7a63CQkgAlaIDZWpbuoQe4vhumWDyvxDaxI=;
	h=To:Subject:From:Message-Id:Date; b=h17wm53dUYy1D2pagdl0VFVWV5oO+D8zPGu2dsKHjNtd639mTL9OLEV7XByI4AA5T8KmX4wLT03rbBF8RzGTWGCy8gsG0bWYZqC4tvgTn3/gnOTN4s46xrT8xRJKJZZsqjrpmB7LnDeKeuc1MNWqAWiTcdh0hDUyJryAP9EUa9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSF8d16o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSF8d16o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1478C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781124993;
	bh=GmNxUatG7a63CQkgAlaIDZWpbuoQe4vhumWDyvxDaxI=;
	h=To:Subject:From:Date:From;
	b=uSF8d16oT2MWvNdMPTayT8tCBOrtIWOhh19KmynaIAQUiHRZPKBVNVIPIIQO9F7Zi
	 EdSoTAaqHhqRff5ZwD0+9i1Pv9H3PTwX7eorc1WSZbj5wSmVouQAtdmB0jRXTSWvJJ
	 ok676jRl+GJs8dyKQLaI11LBSmc2daRT8wVoUW1VgZUi77ixn8YYcCw5tkjrQ31JuF
	 RlzTBoNVFL0ZlNH9p0XdJxJ4bbkvLB1ncKrU4XBIh/CfuBHJaYtZ65CvvjX0jNFmm6
	 9D/m8qWlRdUPUCjJHHCku2ThjdX6Nh25Mj2rcB+cu00bA51hFC4CyObz2XtuMmBBWZ
	 /51Avp8SWpzBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E70CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112499371.23268.10003910564281638241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 521c22112c30bf2ad436c9fa20d00c58508d0e23d0ec6211aef6200cfdfb0208
Date: Wed, 10 Jun 2026 20:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781124993
