Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C8E6FB0
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711867097; cv=none; b=L1UIbBdTK+w+A6KYwJ2154STv0EV3qMmEWsMM8y+vbiBLJkfCY43qCuhdYlS2xpT4LMiL5UV/7ybbaBbruGWzG7c+5NR7mzn+lOk/0gWpiRAKYsH8IITvwtH2W7VFbBNJl4pLr+Ga+tdyGOC5BQ0I3IIEmHV++vqDfa4DUifJi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711867097; c=relaxed/simple;
	bh=WtqUOuceSKxHeuAH82LkEtbQxdCkjBjgY0Y6EtOFVXI=;
	h=To:Subject:From:Message-Id:Date; b=Tx5yiu29NZ+8K0JSn/geojxJTGvkvrihO2yZkIjivTDun0UW5YPHNLPkEwJ5LJTko2B6Ft2ijQKvqEr4PcKTJbul4pL4h2YshmQIe87QSnivb5WHVvFP57m71NNljbjHwLwf0KmAsum+hzHRRMkOTkJnxdmRZV30/pWBTgy+0BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8BigUoa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8BigUoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82EE5C433F1
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711867096;
	bh=WtqUOuceSKxHeuAH82LkEtbQxdCkjBjgY0Y6EtOFVXI=;
	h=To:Subject:From:Date:From;
	b=d8BigUoa/QFZX8gkBRhmEdssVSEvA0oWf7TnjuB0y+paWvQDfcBtRiwed6KfVzklQ
	 x6quFW3LhYmBEsVEzgkjOb4MLSeowZxS5QJl/pl4KANKYgXuVvvrIJhzKF+51Dt560
	 fhm2DFFe21BH1ouLIenvnonCZCdtg5YEkHg/gTlWHkxw4N9oOX7Tmk96QpwjKprsKK
	 ujnA8ojzZUw5Rj+lbXH47QirfX1UsTMxaHzEcYEpOYsJtJJY+E3dLLBHpCaI8Jihmx
	 8S4tFbOBYGxCDKXxQohxUb83EsA0bvYndmLkH70S13aGTrRObEgKn+lzomSGaTr8tL
	 Bj8LI/92FjpRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E44CD1284
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171186709637.21822.2126963879350769996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ea68f87bc7ebf902a0f3b81e5a3b05276c2abdc40b02862731d53e35fcef83
Date: Sun, 31 Mar 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711867096
