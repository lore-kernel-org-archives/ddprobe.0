Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A6031062E
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770398633; cv=none; b=N8UQsEUKzH6fSAVI5rhK/KiGt6VLaYCw79sx6jbkFQdn4081bu83tBQIknbpFoaFW532Rs3eiUA9+Zj0jh8fEH1gH4ShvXRekGaXeLBEwXIVnrYyKxQpUL7/vjxBdaoA4VALO66IoO+1VPq7iPj5PWd4mvbRaflb58rO5SyWEHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770398633; c=relaxed/simple;
	bh=wTaGReBtWTSHjOUXcOuNoIljMlRXStKy67YfEr7WPSA=;
	h=To:Subject:From:Message-Id:Date; b=O6Qhuwi0erhAoQR6kfogn8d9w/ARHMPz/AmOBz8p/ySWBGY+I4SSpSIEqn4RzYmsHjqm/0kbUfQ/s2HTc0BX8VJHy7kPrZTvuG+z75djDDHyxQLYL1ipa6hUEbxVsQZ2GSdvBDYlKlAbIRlTPWSP3PZiiK5ET0KT9EmZag6BzrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5Zjsohh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5Zjsohh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3ACEC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770398633;
	bh=wTaGReBtWTSHjOUXcOuNoIljMlRXStKy67YfEr7WPSA=;
	h=To:Subject:From:Date:From;
	b=n5ZjsohhdYtLjIVy7zzFJASgYWeyEQqgPaBanytsls2kofmJptAof99yRAggvZaQo
	 UmBebDj9jNLts2tEiftryqJrlpGw9kpPA23GnH/lVzVJ5LZq523dBDCy8kj3toL8l6
	 wkTN/3EhXrlGNx41mgt+Jcfrz1tIkaKMfjfsOxkorHYUUgF8WPI28RyI4568KAvI4m
	 nWEI3chge07f+QLpMW2daGSeJvb0WkeUmaPcpw3SvPBL/CCy5B4+Bzn6U7WbvwXU82
	 Hcdv3NRYoPLKTCdkOFYFbkBFzFs286hOtp3i11+cIcExj+4W/Aw4kH1TaqN8XmhBmp
	 ekLGBbi/Li7nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F440EE20B5
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039863364.8799.15286468805250553919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164618e62ae00bcb047a7ed0ccbc90d5a18c602907e08c2fd8ebcf39403bc4e0
Date: Fri, 06 Feb 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770398633
