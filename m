Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F7C3C26
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755942594; cv=none; b=twVUIUKQUBA/yZYM0eWlSBbwU/pJca+OhkL8TTuX/kVHlVO+9tf/R4B72SWIMfvIJ4Q30vcE7bGzfrhSim7JrmX5TBIaJ7i+NpatBgS5QYTDtZrG3CS9W1Cd5zTQLEQoHqKCZKif1sfurLBY3gS/xGi523jdU4/VJPY7da/whQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755942594; c=relaxed/simple;
	bh=+fczqTfv3LevWJfkkkLgYjXtO9vvlcd7GB6j31kFIcw=;
	h=To:Subject:From:Message-Id:Date; b=f1RDP9V4jhbqdBFY4u4ZJeJOfFls8z+z+rNJ6Xw2q/+VhPN+SHhdUEQ7eXoIXGddaozChf34k/l3+z2aO8TojMGx/x7zxHty3Lst5+s6Uka/KRZIzsPHajlJ1LtW9cDsM/CFOjzk9eMPDknjWz/oBJ8CygbP4eXqxjOnRhSekMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Or+cHwZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Or+cHwZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DB2C113D0
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755942593;
	bh=+fczqTfv3LevWJfkkkLgYjXtO9vvlcd7GB6j31kFIcw=;
	h=To:Subject:From:Date:From;
	b=Or+cHwZ35AAlF9Kr2Roa8nPVXNF9Vk3XfHieAbD501mzMfbEo6P5Vglf62DlTav1z
	 +O05mUx2mkDH1XSmhPtYr+3wnwPeNNYZ/Rvp4Pccjf/HLuyE+9SRGRPYQNzji2SGSY
	 FiOsW13gv3ZiqXAGxdekcpfAMuujyhHnHj46gMFQ5G9iSv8OqMm7SOUkA+EAYLJPfH
	 lvZ3BgsKBQKyYn6gqaRcgIr0KcCERt4sEwmNL9NuH6VegGdLHxeBWb96kqueJdykyh
	 P1VkZrsw2hmGAtZV58WkPXoOkL7klczXnKOb932VxKMbibegw5rE9KpO09nQEttMNH
	 BEs4aXKE71DbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F67CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594259357.7381.14540774843281039270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a221eb6dd0eb97eeda4f7e16c32e3600514dde29b3b69d124b7801e82c86b56d
Date: Sat, 23 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755942593
