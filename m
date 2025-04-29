Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0BC176ADB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745924394; cv=none; b=XA4UvpdhT0J017qzeBcgLqtKSI1eW/ObZQAsIsEC4MwBrqPckcMXjR0YWiQRYHJVlxxKv0arWEqd0tQc/NUl5eNoSyNbSe0s/dGcDKMpPxYsNFVgYKLaPCKfwlZvisir9LqWQk4szNnd5DdxeaIHrcsStic9tV7y66lJHL2AQik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745924394; c=relaxed/simple;
	bh=/7TEkDgwiBmBSnYNx09vO+gV9s5h5RvNjUz0oLnWEcc=;
	h=To:Subject:From:Message-Id:Date; b=LcY3rYTFpxxzffKigdof6JXrSKSNVbNZ5hAT5Skdr5AmNytgN2WtBI3MPKjkDx8DGS8YTzMct0/X9WRnbn8/zKTgDIaKQG/2jn58SE36hiEer30MxxrcaTf08brZV0OkU+sergghCrZXzO/+3tEf0ExcbadaIXkbX4cCOEeIpd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giR5E/lO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giR5E/lO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9362C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745924393;
	bh=/7TEkDgwiBmBSnYNx09vO+gV9s5h5RvNjUz0oLnWEcc=;
	h=To:Subject:From:Date:From;
	b=giR5E/lOfzgyELZXQQKyDG7Fp1Qvvgcwk9nL98z2jrMTNiwJsdDhk+IMn4IV3J14S
	 MB5CNKUew/gEOHsz7FGWOQKMRjPqBJy8S3NeZYPSV9iB1AEhh4wNWawVfDajhmcDE8
	 bFMcDhrRL8DzztHxvB1m+njO34GzEO0ErhX1tvBV9cURdlBq8yz4usmx2/FnQJei9c
	 b7sf3wruouNrKMwxhFRlk+mVN7uY8GNIzSDkSQ/Mw7mcv4PigfbriDlgVw/3ggUMp8
	 mv02kJpurjvUmW7w+HejrjXvmnZFWI8ZxSkqsTgO6fYt2Q2x4dBY/Q8jgHdM/MLUwp
	 2YWAMxvM2cJ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B48C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592439358.19804.17706623535590649395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e0fbc40f39f18aa6ef887217812019a7542384f8a2e73c5ca6a3500798a57a4
Date: Tue, 29 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745924393
