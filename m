Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E313F1656
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778250454; cv=none; b=dCMKTk2X2K+nJLlC/6lMAns7ilo9cJdJo4WVd5Wsu8qhkIlyc3MElMLG517L+8Xsa+IXiimIt1/J4jZ330nwBvZmmFA/rkeAUtfS/7XFdZ42ppHdYj5Z2P5fq0rtb2T1YuxaPgys3GtZzSzWG2vSBWprdfOTuXMqIjiss9jdok4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778250454; c=relaxed/simple;
	bh=V8RdL3qgJy+9FAGw8twlfeHMggxmNQph0aRH8ZreWN0=;
	h=To:Subject:From:Message-Id:Date; b=kJTOt2MLZlCeDd8CK7hkGycztXWvE16LofZ6NnJ7c9Mmp9nPODge+GeatJ/mu5GcgKCMz1I6gyKSmgh2J1dgC4sbV6LtXiUik75ZnN9z+wQCDTeJq7qfmLmy6d6IPty6GCxNIXi72oHSRqmNcofcoo4AHmutUt0oUT7zDKohIiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVjBLdSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVjBLdSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DA9C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778250453;
	bh=V8RdL3qgJy+9FAGw8twlfeHMggxmNQph0aRH8ZreWN0=;
	h=To:Subject:From:Date:From;
	b=SVjBLdSiu5ZuoL2YPUYqNx6CQvlLOJnRTIBn1IUFTnRPP5471bFy0T3GVZNJsG0hE
	 u6lEO+Sj4lsoEvqzyxgS83rxKnBjiEz7XWoRUZn5umPtZXX6iGakjjFCjeCP4Nov5Y
	 bgDd+NGcHI1xz0y11J2i1JbwSP1VSrmO4lA6Nx+0JIFuuattY7Y+9Ez61YCwqVQql0
	 qBySEB5BVSQtFyxz8YaqZ1pLPj4oKgidB0YzQsD7uGRT09ozn0d2QlqjgbgbNedMvw
	 H0kJ5PtDtjah7kXTn0dkbDk1EtqFuBCIBbZeanG3EXIIhQkEQVfau80wZ19hh9YZqE
	 jljkC+5b2krkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B744ECD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177825045374.9436.2853330649691464452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 250e273738411f84296185a77b8ca7e012a56e661fbcde86fabfb5dcd4561a71
Date: Fri, 08 May 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778250453
