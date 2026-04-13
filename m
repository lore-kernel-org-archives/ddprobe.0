Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3469834404A
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776115654; cv=none; b=Dnr5xSpS4G7lQuxn5woDnyHELpKqMtwWxLPr82/6KeaMi4yuaqoYMUpWxYnlESE8hBkmVDouBoGchd2jE/quES+5NdyrmGi1yodLaZOPPIC7alrIlrCRQwf05QLv6dg7su/68vL2d/jvFIhhJTRouKYtNBpY2icI5u3r/tVEEng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776115654; c=relaxed/simple;
	bh=NDZPcQYdn3RVZIm6ib/agUmPWpKnuQm54lZK5TfDlww=;
	h=To:Subject:From:Message-Id:Date; b=DmKuDSV1E2oBZgeSVVwgFuPbs1flPDvUPo/4kPqHJbXHEifOU+43MRHNW1nXD2SVvPYjpR/b+pM8T9nFj8XGfX8yd7SyjYWQqR9FlbAuEQZ40ylIaJrfuHmtg1vr1g8bjs431usqEuuRoO1FKLd3H7euTNXXoHLjiHhPhzpg+G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ab9inVlj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ab9inVlj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30E1C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776115653;
	bh=NDZPcQYdn3RVZIm6ib/agUmPWpKnuQm54lZK5TfDlww=;
	h=To:Subject:From:Date:From;
	b=Ab9inVljNK+B7Lsolk/ufY8kGzrqk7G4KbLqI+/JPmJsuSl+dIXpumwbDuYFb248H
	 v+R5eeEHAyUIzY0m/Rnu6i9Gb9svNbX7Aq2pg0K5FCHE0RoiL7TV9wlraKQhneZr1E
	 Nih/KbjZkYKBkREhBetPd6PXZBKOAGTmuyZVUCn0Loa5vV2iBZ0owkJU71GU3O8g+o
	 SNj+EjjnT80Fn73WegycCF4XTz3fHythxRVjf8QxwEQTPrZ/9wKbDPetUURHhZkl9C
	 Qa+mGsuepJm4QtAI/aGGgziell5x9QxPgIbzAs8UKeWAPhjSTS+D2QneIXYZODAc87
	 4MS7K4dPjeUZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11F8F531D9
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611565369.1133.7492992387951406290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2eef9a7bd267e65a60b48a13f6107167f71fe5dfbf3a932230a83c960c9572
Date: Mon, 13 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776115653
