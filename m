Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4C3309EE9
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764175974; cv=none; b=IUqtoWq+ObHoMY8h1TvzpfN8OZ/MKuGiIhHAI+6yB/yHDtVQoLJ5n3DitraWuFBejmNvBuCxwApPhxfYO7JbvzfaMeluc8CPzI5GoBCRDwOGI56mDDzNZzp+6bi8U6ip8Tp1BkGcKxt7MclU+PZzjL9ByTiur4jr+2G28gHCqNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764175974; c=relaxed/simple;
	bh=U9l3UmNbtfCyCPm+GPb6PTTvQuQcyUi+U1atGsC6vyk=;
	h=To:Subject:From:Message-Id:Date; b=IFcpXlVIrtBC1JLyBnk/0Gifb715EuDSMM1oPqZ4bJY3DfLIjY+y1g46kQaCm/ymmwOWVxMZQ2jqbKOQcGc6a3WOvyJo3Un8ZlkOdtwx56uGAbHSv9IBWvZ6Rno3WGvGKHXgqOFHZOGJp81nRM4OELZeaaoNUHQ+qW4GaiAzr1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONDOHHop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONDOHHop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F31C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764175973;
	bh=U9l3UmNbtfCyCPm+GPb6PTTvQuQcyUi+U1atGsC6vyk=;
	h=To:Subject:From:Date:From;
	b=ONDOHHopTHQezNc78XYW419ZKu1pND7rpjNYm2uzNR0JNP/6zKcvH6rINSejKaPcg
	 MySgmzHn10agujPzoePXzxkOCTczM2s2Ppav05Jiwv8E92wNJArXfDwGPSR9PSC/9R
	 bgIsVM9wRPjr2AUnUiryC9+MwD4cJ8Id/q60kel2nT26R+I+bSOD/tm6s2MSFmwE9r
	 WJiTTIFQqWS2XOZf9Miy7sHL38vgXKgq5EBUV3l2R78Dah9w8k5V246ciW1g27AMUU
	 K54KcunqWT2TgXmrGqP8LWo8ny451eRtGT7R020grb4o08jYMCKr+1qBt/ZzdGL0DR
	 1F30uO19fXXCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9691ED11186
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176417597360.4969.9786968023421755118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2dda2f2f8c0581ce17cace6f889e08422b6a0c3215807a977627d4fa87fb39
Date: Wed, 26 Nov 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764175973
