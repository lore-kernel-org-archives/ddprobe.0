Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255593009C1
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761222594; cv=none; b=AbQxZ5MSgqRxKTECGyR7wemhJfQA4cUpC/X6Jn4TNDOn8mQUgdmx4rzwS70zLXTfwyCtksNmyC63zbuSOI+/GqMTzAXzR004ia9PvIS4gWyyJgug4WaK7Q38bXxlQRl985mxbog5bnuwxxAHFVnEVFFY+KdtPWiws2Xnz/Kg78k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761222594; c=relaxed/simple;
	bh=GKXwlg/gM0vo7KP1LlMdyVAs5YQ98byxXDJV8snTrC0=;
	h=To:Subject:From:Message-Id:Date; b=TupRtzUv/XbI5MQqNSWF+3PjwGywp711KFeafjSM5kRHNeCrYJTeG2Cb38VPUwRGk7AniQgoCWDIptajJhiKZZarAO56zgE5l502wnEhRFBWtgphGTgJnF5jFJUdTJi3krcpWakN8OAgjX8JGr+Mb/7R/iDpY36JP5KnqZ/yre8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+7leu8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+7leu8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CB0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761222593;
	bh=GKXwlg/gM0vo7KP1LlMdyVAs5YQ98byxXDJV8snTrC0=;
	h=To:Subject:From:Date:From;
	b=I+7leu8Lv4lE0a4+QvmkiENfeFOUVnh5Qkba579cZVb5Q1HbClmwbyvk2zZjzNVD9
	 AiDkUVcZAHpFmvlSTIAsDo36UR40iB6p+bLTeUZaaZDERhjvLdzhMMpyzOFOGABiWL
	 q7XmTwDMpR24yfcoxTPsjgU+5/RaFDdu9obtrp3sZxXBQN2eqOSrcJffblqNAI1X2y
	 L7Z99TDs5ZeT6+eXMZSh7nUGl0cfwAYebAKQGTjOwanfhM7H0NBWL/27ZEEp+6q/g8
	 6dpP8A+dg8FVcltwIR8Z4gOv5ncR/G5Sj+TEHriPXBNMJHtZfiVwjUwfC9KHw0aw2Y
	 0RqC0IJv4kmbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91150CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122259358.6825.8132524188154205020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e916e32e8c2de962cf56e148034bd386ed4cd124af8d83e3c2b8a169e6fb7542
Date: Thu, 23 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761222593
