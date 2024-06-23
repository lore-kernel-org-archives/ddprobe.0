Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671A0450E2
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 23:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719186143; cv=none; b=o++Diaj2+vAWVo5hMM0QeP/GDQyPWvaCElInKcINHzcplFZX1ndlF7EOqT43yruVMFv/UqemxnPgTMLe/gMlD/tvcchfksq09/H3gmugcwxJdkCQP4hplf0bcjiNf2NS/69PnIJVLgXwZgud5YjX6hr5fDbW8srRorfR4G+2kQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719186143; c=relaxed/simple;
	bh=jz3JTEFvLFZpgC0AytVTHvRjXSdogCkE8cEHnAgCFXk=;
	h=To:Subject:From:Message-Id:Date; b=VR9upexhItBWC5ZVkmKtvZertu8nMuDzN4ilEGCx3PLzb3apPEajCejuYcB+Y6N1HIJAfjbv0zspJvlhP63CyvlTFTL2L4L8SKHYGVRfozjOqlK7cCeeyvYlGZiGgjL7hZFwCp8hQLRyDMWOu0N8gFle8KByAgw4cUslPSnOz+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtvv83w9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtvv83w9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0375C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719186142;
	bh=jz3JTEFvLFZpgC0AytVTHvRjXSdogCkE8cEHnAgCFXk=;
	h=To:Subject:From:Date:From;
	b=rtvv83w9ALNHNMDGBirq7uZEzHmW2gjJcqrZrgxkKfUw6VpjYg6X+T8I7raui3IpJ
	 mFrvpIaTw4TRZKMpfye8NAtFP0+9r+UEboUxt9MLTbVsVrGQorWGu4KppOqDfwSMuj
	 19eRo1bOuTk/edAZDRLpLKMGSNYIK3YGE4rE0VNmz9rF7xqgC+U1zp544+S1qFrKEg
	 A1HDmiACWVVOvbv/D29C5pZts2NYhx8R+IjbzQe42/0/fvQjZAe1bZ7mzvTzZWfOHp
	 PJgkYD+XY2egMP/vIsePMzsVgweYjOjbXEZ10/opulGzgdW1yk6oazNNWz6Rh4dSLV
	 Uw5er1Y7lXFFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF9CC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171918614280.20085.8761639836974929994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5bb1ebc05412ab6633bc8cee865e76fdc3fff50f437ba07df41373299a10b9
Date: Sun, 23 Jun 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719186142
