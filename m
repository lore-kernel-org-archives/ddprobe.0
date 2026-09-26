Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5810F242D84
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790407234; cv=none; b=XMQXbaxa/F8RhtbZh1evyADMLHtC3FqC8Khi7NE0FdZ6tIOeFfXCiqATj6IyaEMF0rYyps4PCJ8IqdsBD3HlYTDEsptn0yEVTNF7UVV14n3u5+nEPH36sIa3fN38S7h49SCotrjSgzQzVaG5uD9ErnfYX/oaXEVVli7RgQ/WGjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790407234; c=relaxed/simple;
	bh=egzEGh2eN3SV0K4kE27xkus4ou6XC/m+3Mxj3Ks6xn8=;
	h=To:Subject:From:Message-Id:Date; b=RoG9/LCU57PdYL42VueN/j0QTFFMXIMC2VIB0vAFHTJPdaPvXvLnjvTEI7PUYBuSNB/rbjuNWU7dzAo2JrvR5GMJj4z4YuLuh70JzijKQe29xu1cr8q5FaT3XsBFH+5/KcjT+LcijumZPU0kmAElx00tuA8rVe36rUkufsVnHMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8xkfcrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8xkfcrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46C1C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790407233;
	bh=egzEGh2eN3SV0K4kE27xkus4ou6XC/m+3Mxj3Ks6xn8=;
	h=To:Subject:From:Date:From;
	b=Z8xkfcrdguVVrkfLcqHf5/id/xljsBE6m8/N7h5s8NcPf958mvBd9r85/R7Ta6yL6
	 dZxxyXEwsHufmvZjEYVC4tFsK7P8sLrVrNQuDWR1tUgX+Zj8NFt1bJwmMNmfpUX5jA
	 AW8awrc68jg9WtEHTI+Nw+61Pj5XuBgld9oANQZlZ684J6Yxoua68x/Vl4YBzBo8hv
	 1bKn+pvYl2QcKe+mSJOuDZ9MW3LS9vkL1LjBXBfAxHnUYNTkNY1LknqWaSPvFaJYh0
	 FI5yQOmRraPB7dDYI9UypXy9tLg9593x1+ctzRW1oV2PMGbn6Zgi67x4pkp+A55PKK
	 k7wxNw2nv0GVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DE5C98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040723369.8153.3227975213814384461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e4e0c9c935e9164b3845ba86e3adcf521a68e2736e77be4ae3c5149ba95c7aa
Date: Sat, 26 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790407233
