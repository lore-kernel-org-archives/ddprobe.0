Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1457A1A58D
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768089234; cv=none; b=QysQAJOGQxFVWYauibX2mKXgXO7ZfVcz9eJR0Pg7IDjAT4enYmEHoNY4OeUxjRzAQT0Aohnz3fRynxVWu4HQ6JQNm0WuKfzItFsIPbB74fH9uf0Izv5GVeMW+QHfKZILETn+TLJXl6jSZv0WCB4DRbvwCbRTObCKkTONSiO/gsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768089234; c=relaxed/simple;
	bh=B4FV/gHGt9teygP1SMLxICQnDilnRKsGf4qqODN6kak=;
	h=To:Subject:From:Message-Id:Date; b=Sw5iZT3SBkfQC6Y8UBZr44daOtMs1przW7+cs/+UH7ZDGHLmPBurvQasPGwWWWXqxiBGLYOriZiwxXqBlAwKSw6KvQgbtqgAijIXOultBnRct1uMrNEz0Wjl+8M4p3rl3GZwhioJHxLYZFcrjhf1sFllhtwBe+yAZlduK0WsLYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c702x4kU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c702x4kU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3062C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768089233;
	bh=B4FV/gHGt9teygP1SMLxICQnDilnRKsGf4qqODN6kak=;
	h=To:Subject:From:Date:From;
	b=c702x4kUn/c9FWtZaPysiamI55/FrZsu289xDzbxGHe+oroeG6DXdEQcVblCtuhyo
	 YDgBk62fbQXQumdgWsQhJYKIgNWupwM3vXHBznc3oLBDl1Fv1cnHw9iTN2KK2Q+M4Q
	 Hp0BYDogpoVWMfGB328YU7deyGGCFi3OukX2T90O1drESlDWuwoM1IsbA+ImXBavmH
	 QFrMsfcQPjCgTt94/gZ+3pATUUd8cBzxxhguriFgibgNRZL2gHxTF2JPoY6botlGrv
	 1Ih2UTeCAr0qVEasxZCmDicgspyffZReBxPy7QYdBZhsQsHaR7mCXErc85fZ5HIxqP
	 4FkTioqG575AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946F5D2502D
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808923357.22038.15366985468711998946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21307f2fb4d4b4859bb5e9a0663b4c71d818f47487457a4e4e3c7879e2371af6
Date: Sat, 10 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768089233
