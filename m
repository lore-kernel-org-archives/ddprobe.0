Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCC022AE76
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750797594; cv=none; b=L1wh1wDSLSWv6G3YvlY7flwc5+cZlk3SSJGSZTfDVOj1o6bo4oLRpMgWYpynjFA7Vudl7vEYv8PrdbrragLasWStM6N8zi7TYwH/robaL7d6KogeFkrWIHEZzlSgqEqbLWm4T5Yqi8iq6MoOpyEYVDevQMS8WwbOnJ9XxSX3lIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750797594; c=relaxed/simple;
	bh=WdnTf75ZABPqD42S7JBMR/OHXMyoWitAl7LS/4qDAtk=;
	h=To:Subject:From:Message-Id:Date; b=XFF0iSR1zaBUeXpdLzgvXv2idGT6J0gNaz3f1DgcpUzUW4Fsh/MMEVdiVwSQk7Y/7OvICX8mfbfLKQ9VfVeNT0geiPo4N73O6YOQUbk9J+PiHK6yV9fy+v2f3pRpJfqizVslxyTSQD5MkdnDQAawtwSO73Z0TPqnxME+AU/SYDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tubkDxMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tubkDxMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3502C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750797593;
	bh=WdnTf75ZABPqD42S7JBMR/OHXMyoWitAl7LS/4qDAtk=;
	h=To:Subject:From:Date:From;
	b=tubkDxMVbbbCiuAKbV+fho6pL5SyTd/o6kZ9+g/FE7MaLen9LfgbRrEfFev1lNaZ/
	 Iazq4zM29lcLyrmlIr7xLWUejnU4ol9VO880yIb2ekPb/DAlIZVWB7UGH8As3yhDcE
	 v3Cd0c9ojxSna2UsfmjKQ65RXOgOLFwUxbpfX3JoW5eMwIH6GUUISacu7iw73hmu1X
	 +6EGsZZ4+fPR44OWdjKZq7qPQdEW8SIgQ8EbXuGC6sosxrLvRGsFTp3VrLKD/oNlsE
	 iYQD5qu2ykRrIvh5PXN6ecndZJY2UhBBvoydY0sTs7uPGCe9MWPvwZB8kICY3pKaaE
	 Odf3w6vMGG6qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90411C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079759358.1981.10850199725993700658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63f77a5d4924e447ce998be93aed848b02f81f5eaf47f4af031c750fe926b41
Date: Tue, 24 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750797593
