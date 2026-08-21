Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5474841835F
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787353834; cv=none; b=oBAnZoJCR86+SdDJt4FqRN6uF9s/ebIrhvvdVFalcKe6ORsqCRgf/ecyDEPFyyObQwnrU4pmLvZuVsJ835JxmJdLEadR5j+VWLFsQgBA6JkrkxFmFZiO5cSGhAZJXf4tA4nAtYtwdvaxbptvlJBYvfRGi2oPH1GZTv3oMiU2Zvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787353834; c=relaxed/simple;
	bh=H4gu33jSOJJkIB+rKpo70L1Tvc3zY+nT/WQu4ekxUZg=;
	h=To:Subject:From:Message-Id:Date; b=Nn1LYywTAlD+R0hCod9tRccmSgCse3ZkFYjv9JrluH2HdmNU0ZyFoDQxebfF7KAv9VvBI5KVk9aiBFh5f0Qkqf066dUqAwncjqtThZFEAZNxvQBnqNF4dSC/0u6NIqU1j8+EWxoydDtxVBzAHfqqMFUaYNlpfYfvUwmtUvdXSZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Udh2m9vg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Udh2m9vg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C5EC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787353833;
	bh=H4gu33jSOJJkIB+rKpo70L1Tvc3zY+nT/WQu4ekxUZg=;
	h=To:Subject:From:Date:From;
	b=Udh2m9vgQQ2S4t2lc/KDZriioCg/rmUKVeNA/uMzU15V9Gfa8PgqSNoDIDR0uM6Yj
	 dgqFOrDa0cAsJx6oCsMFTkyZMl9PgeAxHN5vP1i3ntOn2KZPQOp5iV97MMdqWufyL9
	 TmZKKf46kD9K0H7GjOKeTKi5RYCHRqx/9lQUc457W9Uc4qH/ab2HCcYACEWIkHM62o
	 kR94mNezLm8qhcEtuzC5EKDBAYv+DsLfz7XPWZRTIIiiuYkqCsdh+7MXey8PZZ/1Ef
	 unsSWnvAw/wNRM7VNOuNVTOV0m+hL1Yrp+8EFSEkALZ9xWtMb1UfH1va9di5sU1E3k
	 KTRNFnpR0PZDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC1EC5DF94
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735383369.11678.4837878214044573291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31eb3999fc57aa7f0bacac2593c8d38fc07e91ed0287a4fc4806d3ef0c04c998
Date: Fri, 21 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787353833
