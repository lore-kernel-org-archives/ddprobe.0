Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439D320F960
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736853354; cv=none; b=pYIvpWsEU+ETHOh08qQUcbTwECf9q0C0Qq22PRDsMjpaD/3JR0kG456bFNNm6FKQUWdyuFu709/Y7lianAGXghG/I8X3VjoDmXgK0GJcUj0xXfhj0iR3286S44Xum4WfcFwHI88m/W6yH1qizQ2DEindkzIr8ulhK0xxEHCkIHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736853354; c=relaxed/simple;
	bh=tm40oq+U/F5gsLd8CUFmSMzKp61lpN0l+eFn7HSiesk=;
	h=To:Subject:From:Message-Id:Date; b=HN9GvZbSt055YMUv4xNeU2xgBOicYwpAylVT8jKWZ3gzizjQUWdeMZ2nOh7J+bLitleAZuetjaeIjtItiEFddWfczjYi0tT6rBiPdibWBxh8dSbGzWd0ggFWR3ODgfhICU6l9P2rNyIkqALxjdDyGpUj3ehLyuV5pLUhQ+DnEws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnn1jRXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnn1jRXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BFDC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736853353;
	bh=tm40oq+U/F5gsLd8CUFmSMzKp61lpN0l+eFn7HSiesk=;
	h=To:Subject:From:Date:From;
	b=gnn1jRXuJUufd3qCu4C1Qh0diu3zVSXh/kp5Q5dLXqFzAN4XNb+Dmk6Fp6hwJ8onh
	 hdrBoSow6IcToPi42QVdjJHaYGGi1ANIZx2mUO+/aqA6BBLQMda2kdWvNoPhImypsv
	 Bl3sZ6o9s9Rtr8nilzR8GqRGV6GYKR7WKvgt98woCw+47zSki5abKY/wMiyoWOY9eS
	 /2mLy8RVfIXTXhY/ZjhuJ7HDcy3L6ExKUyJZDeQeJ0LLaVsCDkAT3Fi5oC26NgFEvM
	 R6mrSbWu3qrB/O1juU6Tp+G3sA6iFURrmnaOWk22dW41VCRI2JPg4sLBPnPxgcYk67
	 dACPgOob2aSNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E43E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173685335358.16158.10449403848842084203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97cf554f86db2462cf9ec5566236d5e02a0300a7347098a020380142c5bc335d
Date: Tue, 14 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736853353
