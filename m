Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D41B27874F
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780116814; cv=none; b=BHG0SRzZpU9dReERvDqPwQOwAxu8WMeIbLwtIbfAvPKKUZayQifUh5SNY+QkytfV7FSz66fU3NTAHXGQXY+TAu/0FftqbJkC5X8JRU3epro5PwOYYS58w+umISOLRCRUhWVzlutQUkxhyX/oON+Sj8DewxUMbbuTcY9qmXhB4KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780116814; c=relaxed/simple;
	bh=a8OmeJfHhNb0liSxZ0LQgP6NjIkYa7fH70aSpa5a4Cs=;
	h=To:Subject:From:Message-Id:Date; b=J5wsNyZkineKgbtMdq858FJVPpcGQSrPz9wVgUb5/8z4VjAw15kiDhXOrNZpMt9odN1Cwp/pdS2PBaJM6vDJHtHRU+DpTZgDD7ylZAHij7juCHhNiR2Fxi4ekPEhZOLJ04OQVycDQIj9hN121Sngj+moIKOpUTTM90wIOtO8FTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6e7n0iQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6e7n0iQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C21C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780116813;
	bh=a8OmeJfHhNb0liSxZ0LQgP6NjIkYa7fH70aSpa5a4Cs=;
	h=To:Subject:From:Date:From;
	b=m6e7n0iQYCdrual9ap8Xk6f+EsjeaEiy+hABZyIk0MG02cgP2rg638fbjqfp9nb99
	 oF1+V7LScUAwVuNcoCNNneeVEI5mUAjRGaOjpArH9nDyMGGbe3VexmZGz1oKHoE6ls
	 LU9JGsQHf1WR7JbTnZP3mPfeQil/Ki2OxyyFwUGNN7PtmgJl6fB4dOhV5E7DbQrR+E
	 ngF7CAlBsXtAgZfrFbQijA8MyiwOd8EbQOzE1qjK/GaOB45GiSvBX77YD0d80uiobe
	 +4jw4oJWzQySuK3F1ma6KrElGL1fau71rORpRygGc1TLgFPz6LuQK6vsCbK61jhdZn
	 oilq9x02KzUcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E46CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011681372.31612.13053368486182455973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4245d842a124d58c398228daac7fdd43b204a820de1467d28e02de1bb5c47a87
Date: Sat, 30 May 2026 04:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780116813
