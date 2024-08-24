Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F403214
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724471154; cv=none; b=DhusTdyGOL6fQJH/oQg0D82IDgWAm7xOKDSsCR1ZUZIF0AxjKu+ctq1LqF/n2/VdeOyKkMV5ykPhb3c/vchi+i7FgkOHHsivI/L/T8v8TzA22Ja4V5qd26sOjbsPjrwcnswhMW2avMyPHFTKIB/3wppeLSvfOtsDcYVa+40A+zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724471154; c=relaxed/simple;
	bh=Ox8VAFlQKTdg0baAq/qqDXir5vtV7AqBEXdozZNRp/Y=;
	h=To:Subject:From:Message-Id:Date; b=sDVvJ0AZfzPT0mLCCD9iYRkjuBntT4il6df7QyN8oErqEmA9ZWmqomZDwDCC+xyh6v0nLUTPdjny/T+2fDiGJYBwkhNwKgNlN1Ljx3uFaVLTfmA+xP3OyJB5v3AJrSTPEZg/COS4rEJ4KY3gmKV+ZJ2ri6lWCqj8Z1gMxqsQaGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yk+Qzp0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yk+Qzp0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21B5C4AF09
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724471153;
	bh=Ox8VAFlQKTdg0baAq/qqDXir5vtV7AqBEXdozZNRp/Y=;
	h=To:Subject:From:Date:From;
	b=Yk+Qzp0xAGzrtRwFqLvLk22b2CLlYsR0q2/yJ2r3ll62To7gd+a1EWfQLJYpemTrD
	 o8WWThBTqEIzcIfFB2+bPmGCGbhlt+kDaAc811CHu178zyB/1Q69pL4wrM4kaBESe9
	 jciRYBClnEmbbJkphn0bLWQD2kJy7DgyKS5vBtARsWM4QI0aYDsbIFKLcXirK3YZDK
	 rg+MSgh/899ebgkcx/t+JXwVTXHIIavsELrQPWw9qWOxJDY4ZMykI8i99MMb+BmmLv
	 xhJiJNaf1lDo2HiBV0fF9jDlAGIyPZVNaGk7JIQNTe5LsecYGNjFNNFKPc356Tb/78
	 tr+jSppdgvZRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA60C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172447115360.4075.8157277094244243912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 568e0619cd8aced6845ab7b6238d2376a7dd86a062de479cb25109f84908c7ce
Date: Sat, 24 Aug 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724471153
