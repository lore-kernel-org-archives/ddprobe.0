Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C4829D294
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792198834; cv=none; b=KdGqRh1DTkhlRMVLzVsXc5Dakis3B+9ljEhXTE8+wRZDWvmeLbjxMVGpyBlZgx9eCQ8MaDfv6WQaonZWjJHcU/0QqZrRC4JbS/qZ9/27aiAUDEotN2hKwkLwpJTIR6a8POG5W+MmbPkFNU6AwL3fJgGtLyol6TeUGEFuBqM9GHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792198834; c=relaxed/simple;
	bh=Ccf4T9BYfrwAiovjb2wTsSp8l9WJmut3ixHs7dSkmGg=;
	h=To:Subject:From:Message-Id:Date; b=JX2zsJyyAKPKj8dAaUk0J2PK4usHcqKNlCxjDkdtRJOrkJeM7HRthgfJNt/Jkb+fF5luyFhAKZuyeQ6oj0o957ga3HGzHOZ1zVxfrHhXDtp8F5/d+6aLBJ3TW/1ntZhu8rkcpbF7Q6+xM8uBrVhbbo5XiPVXyZLwLJqiDZv1GF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGnP0HZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGnP0HZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E399AC2BCFB
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792198833;
	bh=Ccf4T9BYfrwAiovjb2wTsSp8l9WJmut3ixHs7dSkmGg=;
	h=To:Subject:From:Date:From;
	b=dGnP0HZHFtHmPObBuxYoaumHsF7TyEvwuiDJhhkQzRzx6ubcW5kTx9cgPS4M2Azll
	 J165QmNWU3u/OwHhhP5OHw75U4F/AtCkY2dMVaK3oLWxKR2EI76pEM3p56z4rRKdea
	 JJAS01es/rMpLTTurWMo5lx99WSeTZIfXC+ayJQAZtkoqqIndhfwL24oDFhxf/cHda
	 pF8iUH9MTGbzOsAbBSBjalyW74bOdQyINXXcNFkVqhq9+9JreEl/AQqnu/OaN6FoRW
	 Yi8CU2Cc9voeCvWITKJLHEWTPZ8uo11MaYeiIZJuNC6Go7tIrkZvH2ub243gPBZFx2
	 n8f2fDNFn9O6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFF5CCA46C
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179219883370.20626.10034215917579328297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ca1704b958cecf06eab12f6629b3026b9e592663f57fc0f12d4ee545b3fdee
Date: Sat, 17 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792198833
