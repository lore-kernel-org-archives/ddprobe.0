Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45ECB4B8274
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790605234; cv=none; b=l0t6LmwLwlHB4O43f/LDXAK7v81VidFdi06E+eDCGuNhiRMozQ2WVSbhC+cZroe5fY6fqYW33qMb55/EYMAyQ2VxnnjXGffhMzs22sIFdZDj8vRBi9bGuvSWyVEfH1A349Um5/U5rrFj22sjrOYmQTWLz+An75FvVdX520AQJEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790605234; c=relaxed/simple;
	bh=5gVjkblWs9FslKIwbNjAJdjIIPXfMNtZhDrSlKXYxWY=;
	h=To:Subject:From:Message-Id:Date; b=SI0803hG1UeAkSKOwh8VI0sjHAlhqbXXjZGBE2mD2GvvHPpaok+JUDPIQLTR7QmRo9ruioMDdru0b0xtHsD4FgSWG9AHfDs8m9YkCSG2gFE5Cx0yIXW6CBsLKkHLlE0IXlRTKcNILXs/LW1y7amHio12xiYyMot+knVZ92tDPRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXN2n8HY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXN2n8HY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF56C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790605233;
	bh=5gVjkblWs9FslKIwbNjAJdjIIPXfMNtZhDrSlKXYxWY=;
	h=To:Subject:From:Date:From;
	b=SXN2n8HYtXWCl1GN8u+dtZU4kqt/xlubXbAvFAmJOh/Zt6Sp5mf2HAzgpFm3ZuONc
	 MmVnM1QuROPn9M8jURcB6fLSBf2lT4eYYsSTS0VIbbI4clPJVcGOc5LuvnaFFXiEJO
	 c0rjlClvvkWN8zMru9LNhS54LOQP78CF0IZcUVVJWyGGe7FN945HWs08QdwYodNpoB
	 1cCUaRyuu1fxxj/qsRSAzamDaZPevXHRNwRu+8s/DkSEetBUE0E5ckJjE5LN7F1gXE
	 cYAZbv2SMRcyNcY/2sovt9GU1CBhahAyHkIrzdWYkfOLPXv+Ze13o27xXHK0unOseB
	 JrXOo0HhziZxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE83CA5FA5
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179060523369.30097.5185763511520406923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af3cc943c8cef5dfe2d6851e40fadc8d9ad0eabb7125be61619b9842f8e73a15
Date: Mon, 28 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790605233
