Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512843E49E9
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791275434; cv=none; b=HnQwVibzfnh3loLDlLCb4oiYgY8CmUTVuqwU/kGljI91Hqa1U9g0ehtChmIiwOk3OXCFve774ONE3wSS0p1p5yWez2UDc5aEDXNhcW2YObWayBhnpKZRmkp6AKFjbqVlYtvuC9mXXt3X7x2ddOb+C6AQtru2lGZLWRGbQiZkdd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791275434; c=relaxed/simple;
	bh=qeYTbvXCpJDgaRg64TQhiOnpviEAdVRUmSC8dDs4its=;
	h=To:Subject:From:Message-Id:Date; b=b5wqPH52Vb5wKeByLo0LSDotfvUQkQWN90H67QAq/AcW+EC0sT5zajBzjAtI0as0VP/vYwjcp5aq4J84SZ5HVClaNIDe63Nc9HX8/VdHFxR61HWkRqFVlj80sRxlHs9dn+eh3JsSem0b7UOBnqUPg+PSBCv3+sqLZDPPoMHeErY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I01N9Nue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I01N9Nue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE37C4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791275433;
	bh=qeYTbvXCpJDgaRg64TQhiOnpviEAdVRUmSC8dDs4its=;
	h=To:Subject:From:Date:From;
	b=I01N9NuePiNyppzwo6qX8z1oKWz3WfISoullzlAH/YXyGnLO3sBuMPEPWL6HSgEUu
	 LELP03fZfcjtWUC5jodGUaBc3Q7sHgMP1trKjE5EfP8eNTvlmhtnD46BBUOHp1Klc8
	 p2v+riWTJpdvlBAppvHrIg06jhIs7MPQKDnp9dNGzCRG58LBLWdFcE6mlqeyfplY8o
	 rYaxfM8BOHbTsFtOsd0IWV/IsKPfmS+NA8YiEMzHJNJMO5o5XlKe2nmiOkFYEEpGws
	 s7r/aQI3L67T1JkWxKbSo3Za4wFwhhrYuHt+N+6DK/sPpf/PwocF6LM5Ng1b8rLzdb
	 FyYhJ7k1bguSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA15CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127543369.7783.522764251163109124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cac91b1b820e0b59e5770a3e5f980c9a1ec8ae2879ea4ba31972516abf722ab
Date: Tue, 06 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791275433
