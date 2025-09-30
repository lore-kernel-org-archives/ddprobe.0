Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF83A1C01
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759198793; cv=none; b=mP4u8wCTY7FgZeaBCPbfQjbkupON1Swz2ciIdW0OeNqulP0hwmVqJiJJnPoS/rC6wQKlRDO05y+UfnjS7DYSr9DkiZVGdOgDteZcwnUNj7k0sOQNK52zKEEIFOAz6nhcEaqZIEzte2FWgr/fNUcqaVCey30tPD3bnWbWbg//SBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759198793; c=relaxed/simple;
	bh=pctOSMkVGsd35gBkK2Xuo76LyhM58Y3UN7AP6YmJ3o4=;
	h=To:Subject:From:Message-Id:Date; b=UYU/ckjkMOTKLvPAW9In5YQsiQJpw7KWzmkvu4mJJKxObZdkBmeCQ0MwHXrTFiDLUrb5Up8aFjPS7bs7Z5+rMNOjx4mYWHSG9Cdfa9c0U8emcz9/wavBiy8SgNMR47LnO66E92j1wlPG3x6cquB/WPFDp3XCUgo14hSnVvGurfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6c2VMZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6c2VMZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA43C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759198793;
	bh=pctOSMkVGsd35gBkK2Xuo76LyhM58Y3UN7AP6YmJ3o4=;
	h=To:Subject:From:Date:From;
	b=g6c2VMZPNbr7dAEpyL6b7xUGgKjLBbjmZgpO8ADC3sjsmMo0Yy5yUZuUzJd/dvisK
	 cVhZqfj5zTp0aVq805pDDVwUWk1pgPcdR5efJKiFKndosi8yKFivv1AY3d121AXMT3
	 b3Ni/HExWeF5bsLQREV+IOqYmBD8ONZU/06rjdLEO9xtpzfdPcWaMiaYWj8tao9Te7
	 +9wHqZ4G96S8KXAqVLSqI7s6oRD5ymJkIEOGPt8BPuQn98Kd7lz2pddRk7c7X2ITs6
	 XF/Hikrk794iuqcZ1EgXlYlalZZhbAWLhge3qzgfdxd875+PMRLN0oVyap7/jby7/c
	 qarbjhE7Q8MiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC73CAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919879359.2954.4204208863298418766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f556f09cd1b5501edf8fe669bdd50b5f6ebbb541d8eef8f4661a0b62efebf00d
Date: Tue, 30 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759198793
