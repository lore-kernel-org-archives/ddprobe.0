Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A39F319851
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789843834; cv=none; b=tbfu0CyBbDo0ZYu69iMI4EATG+BbNdTTODXEdmjq4LiMDwB204Z8Qw+UGc+uE/xFjV6twf/LZy+6XO9IfH0TCivm3EOblA81iHlfU0HffmFBXnkBUNe6zCbA+9UFEnNdRf763JnxYjho1y/U/fc5oq1dJzZer4tcvhE3K/EucEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789843834; c=relaxed/simple;
	bh=FsmNmu6PTdNowJcQ4eIfWenauh57WR9+cVj0d1tyjm4=;
	h=To:Subject:From:Message-Id:Date; b=g+Me1HRFBQ3Z1GJb6FflPl/a+/gQ2TgQEp8NNowlR1B5c0eD5qeQemyUdseswU1tV2xYgqcC8ttIQ/ZSZu1Gv0SyraORK21jFDliQTIzJp8IXkp6pbWlqxBiHL2mJYBK8Gkw2OztdORb+4mE/15k83Zcp52RZhPxRak6OocHshs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpTHqvIf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpTHqvIf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4782C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789843833;
	bh=FsmNmu6PTdNowJcQ4eIfWenauh57WR9+cVj0d1tyjm4=;
	h=To:Subject:From:Date:From;
	b=SpTHqvIfSyxoKKT6Ni9WWedf6lr9ua89tS+7zEs4ah1HU0iZSzVNqW6Fk8rpkBUHw
	 ydv/od+jwbni6+De4ooKpnyFaWtp11nQgSGz7MajBuWbzGNIBd3Cv0/y7FEBVJ5iXw
	 QgUg6Jzw3g/bHsZgITXY7hfusoUo7+N3wYf146fldi+Wfi36EGurvZRzGQAsZsf2Nu
	 Xr7VlU+Rwk4nFx5ZjLBslNp+zMFKtvSN4oaXH6P7jn9SibBVuBBlSmQ76W0c9JYTmX
	 MDGe+zoub2MVBv1N/TBQ183RHW2sbh5ICYwsVJBdNMkIg5l+M/6D4HPCn5ACkI+lfJ
	 VQrZ2FYo97c3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA8EC982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984383369.24904.17871801802679671163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abaaaa689bd9d7dad4d084573d8836d3d8e503a6956f0f619404750b192e7bf
Date: Sat, 19 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789843833
