Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500774A11
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753585194; cv=none; b=RQd5n7JZlTPicV0DBnTcbGDPau0DtaaL6OGOGQvCv0oDXnAPtPjVp1u6/JMO683/VHqTg4HWCjZINHjtIzxgVMXZ6QgZ4DRELzNiVL9vJ2s8KcKH6DqpHrSozFyyR8h1fZAs87dpB0c4hYnMlZqvw4U8UfxF/XvLKsSqtnaZX+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753585194; c=relaxed/simple;
	bh=ETQl2S62+uVOiwL9wt5qVCIqFkRYMghS1wU0HghRegs=;
	h=To:Subject:From:Message-Id:Date; b=avUeEn6hCJuZLaOHY+Bxk2/XJvy5trWblisFg/lG5gWSWlubYVc4D0wMghbkL986COal1+nu7uIR+Ksz6zwFA/EH9ngDKccycUVjIood4Wz1S6WHb1vNICQ9ed/yYQ2TFNiXRD/KG5igZLx3SVtqeK1Zmokxkzoe3hK3i6S9d2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8hqlYI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8hqlYI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACB3C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753585193;
	bh=ETQl2S62+uVOiwL9wt5qVCIqFkRYMghS1wU0HghRegs=;
	h=To:Subject:From:Date:From;
	b=D8hqlYI9GQtw8r1bIjyvFMVzzF2tWx2v3RJrj/JxBi4P6kzkjdT7hMtHRxz9UUaOd
	 O4COc1Q8t/NzABIww6kuNC0H+kt8YEn/zk58e78iWLFZT4/QSqWTwfAYfKrUCmVgvQ
	 7iVH+bHlgtFowJ0zdUYdtKgG5tDhbPJqA+oArDizGQNiBcf143EZouAAX/b3gpvqMm
	 Ch1mrnMJue3NOJTwYwXzytguTZV5nTj9L0/rcB5ixgfu2nE889XaDdxkDnOR3fAGy7
	 LvX5KwuZCR19CVL5b6pezB09KEaJFWWSssc9PgbD9AHxgYf/Vt7E2G61zwGU1mlgGK
	 jPsRJZCFcHFRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C71C83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358519357.8817.16320959594183808559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073577419f0dd7ecfe8562cba48dcc78f1f30b60f69d325bcbb4b024e4ff5ce3
Date: Sun, 27 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753585193
