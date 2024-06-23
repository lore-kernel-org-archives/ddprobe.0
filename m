Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602BC1EB25
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 07:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719129143; cv=none; b=BdZt1y/UcWZu79f4pQkYVhlw0LXMBIFCgKVkzGiRAIVRBs22+a1lu9YLVb0GPOecYJPMeKwyqioYBzVHmwgxVYyI00GS20eZb9vGbWPRbfr1o9NJmWP0859b29PnA+8tJF2WU/qHIlSp9zHTqpU1cCNPebWB/YvDtyxubF1do4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719129143; c=relaxed/simple;
	bh=jSzbErBksg+D5u4tWjM6Vzb47mYcrWLSNvRTYT7pqd4=;
	h=To:Subject:From:Message-Id:Date; b=AVS07njqtqdS5igKpPnZU6C+Xgp8n732rRyhNb3L1rDNTFB+jT7VEIbXHpN9+E9pEAbQ3ftNwDqmBQIRNiQkfdMx6zNAOo6ABlLVONcBqMBB/D4+o2qA/xiN9kTFSbXlkbYR1ruT07x7wOdfsZioihItqgMbHUxVSEquhSsEBC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGnNNbs3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGnNNbs3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D267CC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719129142;
	bh=jSzbErBksg+D5u4tWjM6Vzb47mYcrWLSNvRTYT7pqd4=;
	h=To:Subject:From:Date:From;
	b=uGnNNbs35g2SKXESvm6vxpUO98fLhnd6twWJ9VxChY9c214ZSi2+3hcwhui+D9+wV
	 PujwGYfoDycEdlegA/e3CtF1Kj+L/VWHjOlcDGiV1u4wMDWpzYrJR4mV9ToaDUOlug
	 46TfX4dVBcmIV0TPseLJwarouVfaz2jjLhz2kI2oBeiQ/i6X3qhStB1IwOwmP3Eepk
	 e5NYoW7z9vk9ZIClOPRQcrkD/UxGL2ifhfsdk5e6ys/d2wMdw3xi7F2IK7jA8BTInn
	 hfl28Eeq4iS+Xr/1yBnh7JTCAL0YKxeIznAtok8Z4qj889+s5xT6/jLEJ2p65UHZBf
	 pRadg06dwtjOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA3DC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171912914276.31442.518159396854705466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be59b4f6e13a1c608a4796b2a0bdd3a0d8201f2aeba457ecc9be6091628a5b9a
Date: Sun, 23 Jun 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719129142
