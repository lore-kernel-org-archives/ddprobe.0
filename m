Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3593615DBC1
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761257994; cv=none; b=ZzLt/jy7HBXgf8Q1v9gGPs4pkJSWAGGSqnfeJs0u/OHThbEolNYKj8W0I6zSE+veiAASVBl1EcaaYeh0PQJdma+ihNDR38FQKZi47br6LfX3yHEGVfLXcpeWCLANwgIFoOJKD6KD+sFnOTg1cLeaxC3VMQ0nKofvhcL3BBJSwQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761257994; c=relaxed/simple;
	bh=AcRCKrVgIe4lszkTaAoryZiBsYp5AW7an/mMrzf9Rqo=;
	h=To:Subject:From:Message-Id:Date; b=JNb8ihJqMd4jVYegzQ8+v2BZdYEsNJoqdL1YRcedPW8pvFvm156A/E8GWXZz1EhP+M74M7wrTYxRLp98SEoFL6A5HG3bQ73XkgkCK5s2mPtxx2iQNWU7d2NgOZKU6zNijk99NokFi5g05KuRF0DsDtgko18yxZmWC5SY8lpYxk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1mFoAaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1mFoAaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCB4C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761257993;
	bh=AcRCKrVgIe4lszkTaAoryZiBsYp5AW7an/mMrzf9Rqo=;
	h=To:Subject:From:Date:From;
	b=e1mFoAaZRlLK/Iyn4IJhUoqQMvRmP5viImW0JT1NFnO1qe2nA4UflKijEYtm8ydKR
	 k3jD/XybAJOKW7ZEvQLaB0+bNIgvsLbwXWjFZzo/RVZgjqJa2FggmhGZgZ7h7pgO9U
	 3ZUpBwySvzdJP+fo3KooeCNcg+968KQBF0Dv5cYbF3HrmdQUXMJBAcdD/4C3ktN8v2
	 kMNAy+Z5N1YDD2ecGi+wBTZo07InVEvTQ6JC2LWBQgZWrqHTqFY3aVGzrmTU7uWZgZ
	 ApABYsyyfuOpuaAVvYyR3pkE3mMW5hCylUKH1hP06mFGS5WNPIbULE3xOJa4gmQYdX
	 a0nzEhUgglQ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97391CCD1BF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125799359.24115.2870015042049524143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf12065951da981a9b6db1235f8c457f330bf23d54bfa259eab3354b8bdb29d
Date: Thu, 23 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761257993
