Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4394910E4
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748660394; cv=none; b=WJsJygFVUUCrj2XwIYzlCUCJ0cxq98vPinzTCnL9vO6NlUNi2b8WTd92fMsap6JgWa8vCvo1fJXPZgDFq6XG0ToIi+KI1U06j0VS3JD/0dDm6VIGXddjYwAe15DH+/0rXO1tuL5z2b1EmhgnFuZFS9rs7h8NtCFeHtdjj/3FLF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748660394; c=relaxed/simple;
	bh=AUxw62jyYIo+QS0lVxdGEOUzUWaY1r9tZLm8Zxvo8e0=;
	h=To:Subject:From:Message-Id:Date; b=lw3Swgp+kFFQ9jMJxOq70TsjkBJZKFS6HWuC//LquNDJ1p79irH8ddjiUot2QUIMXKiOCYfeYtLn065Y84hFwoVKRTRulYX+zmmnggSk4PR9ImE0Ie5srJcy6Ysc45D5xmDA24PeIhl4UA9LtIXzXLKVHdiVxEqpzTXn82kJtEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErolVwmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErolVwmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46D0C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748660393;
	bh=AUxw62jyYIo+QS0lVxdGEOUzUWaY1r9tZLm8Zxvo8e0=;
	h=To:Subject:From:Date:From;
	b=ErolVwmq9tBHUZC5ZJfzpSJNK6C16ZED8GV+dylSY6+fWtwyHAJHBxMamILsoFHqz
	 j6Plq9eAh2RbvVxzez3NZ09Gk2RKdM8CtjobOiiYZjNrNDIa3W96MknCMou5fSSO5I
	 id+XOJOJcRb20fGc0peqlfScYVUWd9O5cy5iJaJ8gG4yRpCX6uI+G7TJI0ZzybD6ej
	 sUXtqxjvMWs1tDMuEVhWDiroep0+qOBCVfWmaF4JpWeK8uvX885dIGBpcesInDqwnJ
	 M0F2prORWExMXl0c7xxEtkI79ZyJABThmvMuZ511TzbcAftGYhQL+nSjOD7Q7kfxms
	 +IZbfHB9yhgVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91247C5AD49
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866039357.11490.14135112958516914976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2d4826bfa05103536d24c3fe8ccdcdcc312959503dba135f9dcf9e7d5a1863d
Date: Sat, 31 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748660393
