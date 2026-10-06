Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D99175A9D
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791261634; cv=none; b=TH6ASdjcMS+j9tgBB9H9+zbT1zNg6qBZvbIDMKKSJZHOISZRcTDACAgiPxVdeT4TwzoKZvUZkixDKUxg8Ff+XO6dAWYC+RMBTN66BRuE9+/DXwmmJ+MlQWqL0lNpQ6OIC0Feh2LsQc73Wpnryb2QCIjhq3KO1DsD6oUmXDdag5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791261634; c=relaxed/simple;
	bh=yoNfg0sziV5CE8CKAmzYbARJiF5O51//+hgg1nkiN2E=;
	h=To:Subject:From:Message-Id:Date; b=eLN7QGB2IgF1OTO/HSTXeWPdiuF3lnElyfs16agdlntbLGcUe167N6b/QWqfl5CTjJBrmiEVtcLHYaggovmH0elifYLEtNV8cZmxxTQIBFK/r3G6+ai0QlwmzEtn8q4vxtjA/odRPl/BDYpAHiORxOdXrk8QdZZ9KsjxImIACPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5okF/zT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5okF/zT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2147C4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791261633;
	bh=yoNfg0sziV5CE8CKAmzYbARJiF5O51//+hgg1nkiN2E=;
	h=To:Subject:From:Date:From;
	b=Z5okF/zTAo0YYmcrnJRCTXYTIWtcNMocinTVM6YhDMYuK6ixjloxRpdc9RBi4l5/D
	 tei8xmSJ8TXOpNvIWcHsN9L75TqgGqYWw5v+ZGeWqDC0YRxf2HopWdM8PPppyFF2KB
	 zAORstLujEqU+ZrJJbyPKoGzmUJC5zyUH4dlDeNM7V8JVhjGXJ0uEV6w9rwmbJT5f4
	 BdWsQFHBPr/9K3HS8BB3YkufsMxaHQhpN84HFvB/hLkYOPsbBJN/simuqf/UgMj2X1
	 DsHxMWFpKl6m+Y9qlepzBhD3oeeYG8hG8AQRPEWF0X8fB2Gxs9ipignNG2B8i6o+EB
	 DDTI0yeHQQCag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF171CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179126163369.24205.16269110123313931181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae81388e0d923b63863936a9b8b1d93695f51cfab300aa4338d9851cc9b1a40
Date: Tue, 06 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791261633
