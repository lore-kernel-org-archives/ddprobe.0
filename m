Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF5D18DB01
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757134794; cv=none; b=Jw2hds/XKiyS0TOHDW0e6perTIowKIBTfVJfNZ+SqNahIo9lbwRwYQEFP5UobSRAdCNxSpXTiHc+CkKIZikd7T3inz1AUHh/paFAG7wKgiAOX58zyUQ+yIdDQ3ldzZ344lRlyjLvhwgrHcKmVUEBXCcjSmE7jqAvhVJiaQlre5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757134794; c=relaxed/simple;
	bh=xeihRJmlXC6moUwntm18/VpgJJ3Ar9082+jjxliAdUY=;
	h=To:Subject:From:Message-Id:Date; b=KfTlJXlRbZNtFEm/OUzgg3KWR8bF4q22Q8IzOC+TQeNJ8YDAQY1xlWsHDY560HVgRsrdPTlWECFI4MhUtF7gxLW98k1QFZkJl8BlpIrzxKUVnZ2H9OJyQAoHkNY4mtPsXXClkYSI7TEYZwT2gjqAjaoWPxBu6yVulB28lcNhFJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9Z5l22p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9Z5l22p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A578AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757134793;
	bh=xeihRJmlXC6moUwntm18/VpgJJ3Ar9082+jjxliAdUY=;
	h=To:Subject:From:Date:From;
	b=h9Z5l22peXRatX8EMEbi+jaISI7JkutHmtGhfmfqihw9bjdB76S1gQWqj2ltx2R6T
	 BgdxZOjincgULCgQ0O6Tdttj5GONSORwHntyHhix29at5gnzJpcwgB9NCZjpfRZIz+
	 3EjAj9oAZCgSSHmeMb9OAMAUJrELEXteLmGjS0YgEzggPXjQia00zgnRJERBkLDZxt
	 N0RdgvfWv2TXxBYZdLHlJi2jkRP7TVHIH91jFE9xxEwOYMDZ8fEZRh+hcS698DYRQy
	 Oj5LWZhfoLTfuhdWhVdpFJ2P3BRTqnwXdt/AWPkXEzceFWXEbuYAZUaZuoHuhnsaCO
	 2BnEiw8ONa9Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A33CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175713479358.9707.11883271284485892271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b63106c60c0bb13e23afc6483b10e1a3a43599f08526165a90332a3a12153e8
Date: Sat, 06 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757134793
