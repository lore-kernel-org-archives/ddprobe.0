Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D44354AFE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768814634; cv=none; b=BqDksu0RHSOcRJrQ1WvWwP5pHbnoH0QGJy7umcBIKNWmROLgxNRlB45GDMucKQ6EThiUZGYdRxazdaxbOQydNQizEaqooDLxnFuE6Has7N3pXFEYUnyiWWVWQG9yKQNud1GlBuokOyLskgrLK/tV/12G8r7fqINbkgoZ+XUDJYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768814634; c=relaxed/simple;
	bh=A0jtuDpTmJWZ9Nga/NPr4yupuxrdMzjmYWv105E04ko=;
	h=To:Subject:From:Message-Id:Date; b=P+x0jqcsn0CG0OsaBj3YtwHVg6/PfVoaoouu2So71gLfZ7DY8gO48OMrAW5s5ruh0bSBQLoLeyJGSIYgTP0B/niZKE2C8Z2ow8ETvDHMRNGQPYZmbOaw/HpMNU2/ziIQQfR1g17/FThYhrEOrYgshlxpX1zMzR64/a/pnOnRF/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhTSG45f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhTSG45f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1513C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768814633;
	bh=A0jtuDpTmJWZ9Nga/NPr4yupuxrdMzjmYWv105E04ko=;
	h=To:Subject:From:Date:From;
	b=AhTSG45fhBtC4ojc+Ku8SPE+zn3TEA7ujDj1k0N8xdDKeHU/doZQvMXQsYEueHEoE
	 Okrz67OpdMoof8KEoCK3q3ix+dcf/D0avsYuaskx0oSijt+xovNSyQPM5R8SFBZAfD
	 FYohjTfbMXGbpzMBkFUu4C4lTTIQQScGvjZN0Hi5JPuHMgauMOz2hwbYjW5tsjJXXu
	 HDQ0Z3xeMliG5yF8jqX42Es/ri6vpx8KLotOijPAbwscgYBfGvve6b3CfehXyBD+a5
	 jHThP2cbZfkJNMwG5VZXdWaZH84O4bygKsA9ayNHHPmbbAshIQlPZXzkizLOWXOBfI
	 mWJrZbrzmKKTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE30CCF2D1
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176881463358.5223.10062631901879150570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a32ba42c0493bbf3b4abda4393a51699fb8a3b92d142b1dd5b927628db754d
Date: Mon, 19 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768814633
