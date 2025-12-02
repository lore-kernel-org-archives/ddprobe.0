Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FAA36D50A
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764637374; cv=none; b=qJmMxZpp7QhbUDsJlcOj339cj2z5Td0kXfnvrz8v4gb3Kczs68gVhAIQwgxNJj6TX45+FSB9YESt9my0Xbs350/ac4dGMaOq2StCTcKzCe0WoYtUSC2XZPbGxhusc3rIq9t0upDMWvubLhoH/raOqXufqNs66MB+v+lM4n+bFdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764637374; c=relaxed/simple;
	bh=g/ejDVw90FDPbVth8b1392qo0pm9rfYApbZ3WJywJDs=;
	h=To:Subject:From:Message-Id:Date; b=q4uROXrpz9DM8xeJE8t/Q0M3aqoYaxcLq1PKWpZ8MqS782aKDzm6lfZ57H3Z83/kdrKqW+QdFpaXHE6Yy7uN65Wl8lRaWgYP13RB2Q+h7jONQjmNtJjrrWuW/sT/ywLkVNcLKCtCkGPUFshHgfuDewZptucvCetGnz/v0zK6W4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTWd1TMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTWd1TMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D4FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764637373;
	bh=g/ejDVw90FDPbVth8b1392qo0pm9rfYApbZ3WJywJDs=;
	h=To:Subject:From:Date:From;
	b=NTWd1TMMxADXJwXbGSLvV//+/A8Od1z8wk3KEhjALuAZDfELt89eTB6EC83Au9d81
	 8q1y6uEFndoQiBIhHqz+Jp5vVwLExxjJ5+tdX8N1ivNqTDP0qUvQKxFB881aOr6VOA
	 O3jBD9+teiDDH4EZTE/kO74YXqFv5kdxlKGid29DbwdSHZnaR2zLmFVCFPB06UgHuz
	 PlX7WRC85TT1W+lEkOv3jeX7pKTmqoQn0gRfVw/HhUQ8dmVzGXhMpBHBdnAniAopSq
	 Rg5KsejDaGXwBGH3U/v6Iau6UkvC9Jm/AT7vwCKIvszRJBQ3obJbEZyxVbd+YEsJYM
	 ZkStu9g5xo2/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A03D116F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463737359.9173.8442974207908379127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a3e20377bd817c6826901a7cd8845e35a1106c7145915bab710377915ca2eb7
Date: Tue, 02 Dec 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764637373
