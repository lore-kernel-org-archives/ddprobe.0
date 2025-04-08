Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6346322B5AD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744072794; cv=none; b=OV4iBaSGHTjdMBm2Y+WrHRthA44k3md3siYYFjUV1JC+cxxT6eKmfAYPVk/FR8KomElgS0jb7oPkEKH4I9EOg5f+u+1g1sFdIUrMPb6KyLAeLDbodnyWcZM+NTy8cnlrFIXq7aULKgF/PUUudCsmXn+5AEPuaIPUsfNxV+4uIJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744072794; c=relaxed/simple;
	bh=/wF3wQWZmLnOAxqS+HnTyX7SZuPMZWcedKB7VHOHD6M=;
	h=To:Subject:From:Message-Id:Date; b=kesZ+dQVN+vW/6zTXJ0Bgu9AEYK4DSIBwlsiu9f2Pz3mJqfT/a3zOeysPADVN+7VBdUHc/pwSVpkhutzx/X9aVOZSE5Adzw608/RionPDOBebugjCPgatmEESK/oGMWaZuMOkQ6lWLeZPyWpAt7uAU8euZNr3RYoYRuR2YoVCHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ftsB3cQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ftsB3cQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33F6C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744072793;
	bh=/wF3wQWZmLnOAxqS+HnTyX7SZuPMZWcedKB7VHOHD6M=;
	h=To:Subject:From:Date:From;
	b=ftsB3cQ9iEcUWC8zfSUMYxan5q+hou6sps7W6Ah7w8+NSK7FtCN4KS0lYZkhJY5oD
	 A9o34s52vhFOrVqLaFLdL8NGWbcqqfBvEQusJtvoltqscXy38R41aqJDzESqTLCBep
	 cTi3Zro3YFPPTmlkuFijLXnkrHWTTE8kNuaqMSG96YlucOsxJvijs+AsnAik6kGfbl
	 3QJ3hChFDngRbY556w7PrsMbxhFDvQst9LBsuGs2+ZHGQdi9PGIir7bUZOun5RBfRS
	 i0knjtYKkNdszh99bKda5yUInausvIv/4ooFJA3BBaBmYhJ8pwUVK4QEvSCBMDqqCe
	 pOpLq41BSRImA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A6AC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174407279360.24715.15341501650516332900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4570564d93e3320fa5762375c3dcddcc8f4f6303ba13faf352abc0868ad021e4
Date: Tue, 08 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744072793
