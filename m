Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE592F44
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714338743; cv=none; b=QcwuEFZnUloJktTALozBG8Wbq/XDBFwravxU2uTK+icYDtmDeNVc1H19eai5fgD1AXke8RSacIFtzmdXR7j9x/f7mz+7lmNM8Fm8OOg+zKhU4+LbZp1kYB3gp49LlFPX5IAhxhEYGnSNJj+KEGV5wt3kPsc5qd73lWicCHtoYGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714338743; c=relaxed/simple;
	bh=/Am64hefy6aleWl4Of2bnwo4KwRBXNxaE5YpFRFhS0w=;
	h=To:Subject:From:Message-Id:Date; b=HjdFxtC9rVWA2BPIL5IZuxeVJB5K3S1lKLxldp5IJPKisHLH8vktU/SdzAahmGqNRfmRe4QOq4bovf7PQ9hvHdFWSm/fd73rrHAGbJuySbr2StXnT/al8Y/5pKPo9j33s+aIe1CshUv53Fpfedy/sQh8VkfQqiFrPpK55sob904=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjdmRDxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjdmRDxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF327C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714338742;
	bh=/Am64hefy6aleWl4Of2bnwo4KwRBXNxaE5YpFRFhS0w=;
	h=To:Subject:From:Date:From;
	b=MjdmRDxeyLBmINrS423F1OMgW0NY5DRG893tk+LfJ5u8fNnwhh2Ok438+hAdSjFAS
	 yZnjFPci3JRZJ0e7bq0IDR3mNX28bXw3N0Ewx62MiTJ9vfZ82/EFs2JfFRFdyMfb8/
	 Ned0gKDzo59iZvyAG0i0NwW/E26p+Cg7FY735Pv3jmPiZNl/T8Ik+8YGeqERjpkF/r
	 M6qK85GRKb42FXf2dk7HqgTtRXBLWVkVVMrSpIiQW4U4CCpDr+k4G+89nmtpcGMUUf
	 draiHp5ij/H6ixkORTDfOk+oAQ1/149iShgAovfGEA281LjHGTjM4O9J9irGCoY+NL
	 pKg2lmPBc191Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63AAC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171433874278.22586.16581049749439387725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7017b0dcc4f8dc4638ab702c1d3acedd17e86c53961b38f57a523b4eafd52b08
Date: Sun, 28 Apr 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714338742
