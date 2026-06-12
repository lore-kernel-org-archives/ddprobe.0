Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0F2372EF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781227594; cv=none; b=bh2ASbmhuwb7md9PoSGFAK2+JV+Iosw0ImzaUlNjucOpIty2hMBkGD6y5YrofxbSf6tlvH6rqr0uCxrp5QAc67tcGy0FKyxd4g6sQdcMksPEcXgAs5tdDQD51JgqPZLMYCxtZuxZ8o6jo0GQiEZQGrxmXOG38D+Si/GJtH8KfyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781227594; c=relaxed/simple;
	bh=IOf4XU03ui1/q3TlsdWJDWnzF81dWQ2SyRwtZZni7QU=;
	h=To:Subject:From:Message-Id:Date; b=CXUwdHEAj3aMQoR5qsf9u+n0O4VG9WqMIrN7Looq7gIelB9pDpB2yAklLwjESyy2O/Pph3eUf0yqPeh4K+E7NhtltYqXqoycemL268cCEGNnTZhcEnL+heiN7rcp5a2ghVW0IwYzAC9A1G4begWZSdcKDl2gDLeQ+usv8HXlbGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blnDw0Le; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blnDw0Le"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99CDC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781227593;
	bh=IOf4XU03ui1/q3TlsdWJDWnzF81dWQ2SyRwtZZni7QU=;
	h=To:Subject:From:Date:From;
	b=blnDw0Le04vLpOlDcIb4rC/DjHkIl6dzwILhHHH0ssjPELZWinFzOdFPGnxxf9geh
	 ixQYT5Db1Nu+pUr6GqmtuG+unUU/OHJKZKG9Z4HKbHEntSL5UdppLkF0BHVa+LMG5E
	 NmPlqnWmo71UDgkIMlQfy18CtfLiCXWwaAG/tQ/gWXXc3ny6eDVhZzDdspc1IaHfGR
	 Ul4YFC+wWpfGRdCRttWzBD0l0SlhP/p1YQhUiiWFCuM2hNokOvljSJ2xVUoFDlYOI0
	 tDJ+9eZ1BzVeh0/hImFjuGslcDSlbQM8ao+GkYNoS23J6umMza/Mf32K8ML2RMYMZ+
	 wJQoqJxU8Qvyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5CECD98C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122759368.2907.14747229994788926615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d1488ac1231cb82780ceecffcac321e72f1972ed23bcbc3c25a07ada34d111f
Date: Fri, 12 Jun 2026 01:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781227593
