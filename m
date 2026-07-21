Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0884D8D9D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784646514; cv=none; b=rbwBLVLLYeMHjdKyFvFlgSetr3gE7X6B1NY7ZRG2lwwdYnxq/+VLCodedsn/z22xgWh+3iqo49C3GSaR0hLpco0hJZ8xBFRh0+q97Elc4c4CURhhBZGYzuBvEAvgP8RThlr+RPclSIzXdoRzmBoJgDPIjV+r4jsKuUyhRxKfNA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784646514; c=relaxed/simple;
	bh=5JIrd8LktXqdVIMI4PdYqsLVwcZfukSW1oUbSXHuOSc=;
	h=To:Subject:From:Message-Id:Date; b=ilyyIWQlSiBCkEt+zMCnHWMMRS15hpGGTXfZGPZ8ZvIMwWFMVTHKW8R6Bs0XsGswmkvy7fgO1bVBgwE7UwJcU/z8Ml52LPdZEaYoBi/1pAzU+0SLroD1XKrcfj6/b76xUwFau4GpwPFHS1FycB9etCT2IGogK7AEjwHt9AEWjW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpQ8haCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpQ8haCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6999C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784646513;
	bh=5JIrd8LktXqdVIMI4PdYqsLVwcZfukSW1oUbSXHuOSc=;
	h=To:Subject:From:Date:From;
	b=lpQ8haCF+m/Bg6mgO6sgw+Fb23QJE8S9F3z08SumzPvv4G6/VYx08tiJeX/1NpYIR
	 Eebywd2VxqGHtlyHHBWi5/fj7uxxgiGFPyfhZ9KBqxE6H+599P0m+bclxJUluhc7Ey
	 2QY1DVhheLW2WO3Ey2+DLo6rC2vug67I0YZpPcSBHW+YjSKoX+Egk9ubnqmTeQeugZ
	 o+DnDLSQsmjgxxUnDxSx1Y6b80uz/SNGud1WVxUooK0xZLyEKD+XmQ8cWzEXsC0VYL
	 oaXPwBYO0ZhfFbBokFJoQYjBvOoidvGew4uqf4l2H8nS/+flgDNjGr/7bBVTsJf/RW
	 Qr0QqVz1xhU1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A87C44533
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178464651377.15976.3683047575515211292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ed48660b4dd5756ccace1c947267c8d34ea0b8b5b983aa4308d10aa9310e6c
Date: Tue, 21 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784646513
