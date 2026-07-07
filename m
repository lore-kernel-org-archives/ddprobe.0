Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFA1420867
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783403314; cv=none; b=k9hJ3vrBAa0XzHQF+dMNVTkNJVa7dAheLiXlJ4QMoTlXO0dIRMEhTw4JiB4ByJnl6XU9Ubj7pPvtmDUiei4k4hCzv7d3pnherlCAKWGZi5rllbRp60W3z/pF6YH0AKx7d/Y6m50AyqTyp++OIGPeMcmX+bELU9OJ5RjFwdVh/o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783403314; c=relaxed/simple;
	bh=iapxpFm/HXbWq8LQCNVYkCzeJZDXk0kYqNuuoof8haI=;
	h=To:Subject:From:Message-Id:Date; b=NTGuxUwNUMcswK/ZRluKo0DUUQ8lqUugy5YaCpBs/d95v0X4/qHinat+jMl4RczQpxb0coZvfCq+GRLs38RrIh4MmY1R7i3Y9e5ddz/iffdJivkVBdDyJ+M1gaNKEw0FPm3xZavzGx2og4/khHGny3XH4KXh6WrCF1EGZxKifto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctlmRry6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctlmRry6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0CBC2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783403313;
	bh=iapxpFm/HXbWq8LQCNVYkCzeJZDXk0kYqNuuoof8haI=;
	h=To:Subject:From:Date:From;
	b=ctlmRry6JLRqfa01YF5WW4h/fq/L8iweizUd+dk4X/gF225khFz/l/F2Sw+FXHm5a
	 4OMm2hNWld7DaPX270lTViZNwpG5qMS9VvTImqjudreOgFMnjlhQj+x7OVINOMmqgT
	 zxIsG8Xe/ODiDwnTC+VsZkYhac46+tUdNnqOel8YOoMdZ73Jv8jkA4AMqvpq2UE/oV
	 y0fgd/fEu5GydGNoqAeE1Ciuwlu384S6iDk40CiHTYjLchU1Yq/1S33CtmPF5nprad
	 YSeswUdRX48e1WJZpTbRe6tWipzJqg8WDBgpyOR0uksoUE1VH8eYONjSClNv050bkd
	 oGmcOxJEQeFkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A972DC43602
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340331368.7443.3063298074357673570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ccb765179dbff0be8e1c6179d525673d1a8944ae068449cfe3a5787205962db
Date: Tue, 07 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783403313
