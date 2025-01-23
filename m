Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AE138B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737644154; cv=none; b=K2+Gnsz+/6ijU43liZIMxMe3f/TVTYnV6g9eb872nkdOhckPWSxU7IBYE4ynToIhejie5MrZ8XXP8sGgkK7nIG+AP46fAQ1sPtANKSlGYfYmhIb9IC8fy44ES4mvMDJ77OwifAce2lElx4Ln8bBO18lhqBFUtw4prwbQfBzHa7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737644154; c=relaxed/simple;
	bh=9OCRIBH+m0vXVh6r1BmkTq3iBlphtNNpAeGYxOzid3M=;
	h=To:Subject:From:Message-Id:Date; b=rZUrRCOU+V35IN4+7ixbztJZP+2gcEygyLN7bCaNsFDcEPUhpSWbQpwZJ/oPsXfxh4er0hjjlvgX69BCkD7vP0jrFf3KxD84Wy2FEJ8yTyXoXXM3VC5THmOdmINvwIc7A2p41gSpad3LkF4crSj6Wyw+8SuIi0fzxfiGWuRg/mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TV265g93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TV265g93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48CDC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737644153;
	bh=9OCRIBH+m0vXVh6r1BmkTq3iBlphtNNpAeGYxOzid3M=;
	h=To:Subject:From:Date:From;
	b=TV265g93OBCSnxSrfpJbQ6aQHcqiAZz6qwMt5aWj+Wu2rj+JlDrxUcuXeCw6BBcqr
	 vgO4jrIq1wpsjNtBQCJV8QGt8Z1d7y+3xl3eIxIGZ3O70vLI2sI0H0f/VS/gbjXkn/
	 f0555kp1sw0iX3guEteymNyUwjiRnJT15e+wUds1OkXE2uPl9DgPLdMfv3b7T077ci
	 k3+ymh1tLD5tTatooA0+WmoHaU/WAzVkGeH+VJB/LRJRjgJdqBtZEIry6+EXmiB9Xu
	 j0xDVr0M39SFiRmC2ARNT1hZx9jp7i4F3QK6X/AybG2voib1K1wUdPvgXesh2UNyqb
	 iwtlh6zmJTUng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA7C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173764415358.5475.18012269358916993122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d366bf4131c4845de529ce38866edf99c485ae3d3b5a3c3336372eb40fac8438
Date: Thu, 23 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737644153
