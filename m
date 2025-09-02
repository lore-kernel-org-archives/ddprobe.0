Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407871A9F82
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756783194; cv=none; b=SMcr7ixABeWGYQLvKI+rCEuEZjFOflYcIbsduQ0NqgBzP0HMJPNx0papVnNzqkK8bzmq31zrRNqzM5LXJuSkRLMULcGnPiJNl17W1mWLoXGVYORiOcMMinErkA3DLNeWjuyjkJvwR0Gh2JiwhmUqwpd75NNKsjgieOrYvsSZKpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756783194; c=relaxed/simple;
	bh=8EEHjEmsBMxA28lTtl6NK83m0ojDevsx71WyDhSfu34=;
	h=To:Subject:From:Message-Id:Date; b=A0fO2zCzs3XNnk6KgE+OEgJ9mP78Ltb+ZK+PwirG4CIhhGpJx6poHe0X9fBLV4UxJNtSjT47JIGjnKTn2IfaeLqDqY5PK0oGOlaHj2vBErYQ+JegI1uQZzrf7gv4zGD1KhaI5wrZyLvvbIEKOQfzr3bldrFtU5Vj/MBvcK1DAC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7m79/SG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7m79/SG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38F2C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756783193;
	bh=8EEHjEmsBMxA28lTtl6NK83m0ojDevsx71WyDhSfu34=;
	h=To:Subject:From:Date:From;
	b=F7m79/SGhbfrBgXWfDRt1jqYfKp8Y9XaMbeRYjYPO9f4RX1e+0yir7yFVjRVW+D0l
	 5g5Cb+tHS9w2HbgeQ7Iye6WQpwS52dXJDtwst0G0LoyGDRWsFfbPbcYeu8kAt6Qh9C
	 aLCvP/+QMtoN+OC9VjcSRrV+oi4Hr8767M4nEVYE1JzEZc/LB5jaTAxQ1JQ7lCTymx
	 KrOLCLyh96Y5Ms5Bkx7YHldUjD2kKUY8sMZqKviCtTTtJjCHAwU8SDpeJcwyd1iMPt
	 U3edQPzj4pRg361/S9ShhlZguSW+a/71RfFHGGdPN5UUMyMDgRumtkX3G3BNyAe+9a
	 LOCk5IQf5merQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E07ECA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678319357.13157.8868936677671546884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f229a3d3b32a4f915169f4107814f891babf6fdcdcc117566a6bf26da4e59b96
Date: Tue, 02 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756783193
