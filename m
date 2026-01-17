Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA8C2C11DB
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768650834; cv=none; b=lHgajcvdM+OICHi1o0oQoLFchnXQ84rBuj42tVhDw3a5uB9qvdkIQPIhoIkwkdjUqa4ZJAFE51QtmxTlkwTI5A866SV1Ep/8tlQjsL588PyyBuXPehcbdIGZMptFelSG6NIqN5GoPG2D9eITxD+42NAW1EchR2WucWvTuojp/E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768650834; c=relaxed/simple;
	bh=qCDSUbh2q0pjdpEDFSUeDPSOT5mrjPkO78RXKXVUibI=;
	h=To:Subject:From:Message-Id:Date; b=olqywJoCV+ElBdrkKNF00pOdVDjEII5ygH9GuO19xN+2rGiWbH1SddxDeRK6h7OkKMzNlbiUM/tRXV0H/dYP4K/OJi//fYOY41XETb9K+1QMwc++9piZ3owpMA8gLP1L9EiCAkvi0UifVQV4U8evNkiBUJbJKVF/r9bvJ4qc2bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtST2TDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtST2TDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A67C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768650833;
	bh=qCDSUbh2q0pjdpEDFSUeDPSOT5mrjPkO78RXKXVUibI=;
	h=To:Subject:From:Date:From;
	b=BtST2TDdfFkFJi31O1/+RBqf/6MkWzYnar4mpW42YVvYFLZmf0YLOJVrl3NrLV3eZ
	 WF6ydWaDp/zk+stitY8n+xBFB1PvIKxkMdPbHk0x2xw/zmlHDmUZqAuEcxPYDLADX5
	 zo8Gzrksq+mYJ4bYhkmiSiK6wjKDlXN+kjK+iLdIRcJzXM40CgSh0C0gezhVd0xUwk
	 mSVH9pCStVanjgt6eZqwMHaRwOoUT/+eEpJylGj8MPDqYytVlnHLhUJGkfWfjetCAx
	 gkp95YV9sjqJQ9GVJubwuzejJLD1Iy7Y5Ny9bjWuP5sHYV3GBgHUGKucvJmH2FTAnG
	 Z7KrT2gPh9AKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F92C98327
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865083358.20442.16126224048977961632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9730a327c45053d63814eb26eb3d95d53420b9e5687848fbbe24d40160ac7853
Date: Sat, 17 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768650833
