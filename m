Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550602DCC0B
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748215794; cv=none; b=gJAHoGhrAmFSEVqkFZiGpO1PdXyKrKyYNdV29M4O5yuh9k53E/mOA+oAheHE/RYWIiEOOJZTMDfpGHa6LezYjXdT03mhAdFuqjdu0Xz4OemUJRrDmQSqAh3ku2YiDCqHecKDxJ4RyxkRykfINGEn5Tn9DD3+P9A4TX/T2m6Pris=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748215794; c=relaxed/simple;
	bh=hhLD1/rG4yv8G9RsY085J5KWjrZch+3ZV9cZXa/rvmk=;
	h=To:Subject:From:Message-Id:Date; b=kig7IybMw2n2O6woZuv5Kcq2XZgV3w696f8PR7fSXeqG0QWqnjoj8NXfJyXRVf0VTZ5y+cRszf9CnhKEkJsd6opgG0pqAVARc9YFiDfuVAceqyFZoe9nFe+1C9Apy9VY3o/ApTcT1q4Xq9NM9RYpkPQwbrEUp5UzmXJh5ZtOaeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9p7dXNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9p7dXNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8093C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748215793;
	bh=hhLD1/rG4yv8G9RsY085J5KWjrZch+3ZV9cZXa/rvmk=;
	h=To:Subject:From:Date:From;
	b=N9p7dXNh9JLb7+pVP+UYwKocTzMnnZT3e5mjlfjj5IFDPArk1h52A5I4Qb6QFZKOf
	 9LPZPJ3LxMqdCseAYpolyKImdQaheKUP9j1QfjXwswhgZOxnkiN08//+3QimdHS0p7
	 sdF5+kYwg48CFUX9T4BLNWTqz7VYNXb9//KxQn2wboWhA+W1VN1BtiHp60TBUlQyTu
	 bzx8UtT9p0zvw0G67ZR+nbflLoARNetlSpcjwKNzjoj725So8cnc8/27WdCKD1+eAm
	 MRx6FxYxKS2xLStlWjxR+cztwuERt9aAD9S29IX6iQoqmacVX8UKMPYOEA5S+dVzk/
	 RwPvHHN4eN4jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94040C54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821579357.7424.18412560926281915144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f22b806ede94916ecff24f7dd02a3e1ceece56eb2275d3f6dbf58dc7598ff8
Date: Sun, 25 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748215793
