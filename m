Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3798A4688
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 02:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717382123; cv=none; b=IBIBlvunhiC8qQJzGZ6btju5PwgF/UFqmxd6Um/hRj8/rP1FAkcbRm0mc8MUNdORE/eMXrbVRPUfxk3wnNUYNuaU65zdQHilasqXZTmHmmxmUuMpshaUIvzcn2/ovUNEz37EI0WP4MYmjf0pbEkKpKgt2aJTMQjPmjCstExxoe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717382123; c=relaxed/simple;
	bh=GIADJupDtw2z3S1vJwbagttu04KeCU5VPB2JDkO8rCc=;
	h=To:Subject:From:Message-Id:Date; b=QVpwl+d+RQSultK6IUulX7TF5sin6IH7tv1mKWyXjAy0LbkXqRIrImkGnQNwNvgq5B759bWX8BCktDjW7l22vNfu5JiaWbTrXQ3c3fT5x5pAVcns0WrnKWq/upkELolXJU9VtSI2GjzX1Pxw/ZT02yZXiwppixL32CUJhAzYPxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzJBRIDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzJBRIDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9594C2BBFC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 02:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717382122;
	bh=GIADJupDtw2z3S1vJwbagttu04KeCU5VPB2JDkO8rCc=;
	h=To:Subject:From:Date:From;
	b=qzJBRIDXsYRlbUXJwhJjRvkWsMzmk+YDdJQyr3cfiO6pKOZicEJXlLxaAGl1jWv4N
	 /yjW9xaxo8G1NYQYqUE1rtnWMJ87gdAuLlZCA7i7utm4P/CMXtpRJDlcFB/6p5hFJ1
	 EN6sXYb0DbIN7o/AM8KlbYmjI5lgroU3sXDnI6sjsQUhpylQkhHqVuJtHsFXWRvyVu
	 0VY/oS3qDNO6EnWeJa4NRDtxf0yE3DEmA0gxWYqoJp41H2naau4eiLYEi4JRKJlP0d
	 wDBSDq9H3zWP77OnMs2kBuz+hQ7z20xgFQnM7neCvr7FkwfkUpZC7MTBJ7iKl5XTG0
	 fHHhGlN5VErvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7040C25B74
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 02:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171738212278.32067.18385440944453367733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287690445a634d7d6d838eceef63624cd1bdcddccd6973efea9130e0f4080d0f
Date: Mon, 03 Jun 2024 02:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717382122
