Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448AA2DB79F
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780375474; cv=none; b=pJvq8jccITrS90VcqhAs+0mBSEQlcnHXvUp1UtXWmPY/qKf18q3haZdvbiKWxMppymSWCKnKRBsbgBXXzGUE98cyQbt2JMOv3G8EYIZKlC2nMwKvuDw6CxaCpMR5R5131BPP3mErl4ese/uBks0p5fWDi1PjUh3eJjCQFEu3i5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780375474; c=relaxed/simple;
	bh=3qmEn0OTsCPQZTo4Q8snPb+VAQeUD5TPvcBbSzjxSLM=;
	h=To:Subject:From:Message-Id:Date; b=Mx4gDmp+/j6sYqJ/FMDKD2A930vUtuI8rFYx8PqsQNrVo6qW4J1saKtn6T4YDW3msm1CbY4SvHpNJYcVW9M7i+dtcVeOb9aFa2M4S63apoAPhxnxdIVAXI+lpz+LecW3qDNBWFsov0ClOFEyymuGBChv6fQT04eJ/wB5iiqEmEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRGwYPv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRGwYPv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D5CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780375473;
	bh=3qmEn0OTsCPQZTo4Q8snPb+VAQeUD5TPvcBbSzjxSLM=;
	h=To:Subject:From:Date:From;
	b=vRGwYPv3E9APhrKb0p87/rnVauDxfzBxFcir9q8MFWkjBaNq8IqEpmsAVyjSBh7e3
	 3qNq//nye7XMYursnXmaA5LJmgenVudsjwiUrs9GQWommfsdZoZWZWiRufF9Y1mOwT
	 AkLjo9lcp5neqGcbGgbZgo5B6sAmXntLKab3gEf53MUuuG0m7SgN3VBVj5XJqfcF18
	 gKRgj/giJRi98sd0dmmSxEiXMSerH1k/GdzexIhD6lhumP15ke5awmobGmSt4IcX0F
	 NE8JMjjHrjeuDuIaPAlrPa1/cpKExVNpuSSViS8bXt8oe5kn+MmnjkYEo1JcYQyDO0
	 tE+gG8ovG1YfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD868CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037547370.10101.11513775124699531267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab85d3c17a24f4d3d7911b7b182873ec80b70a7b426faa3616fd9a36ddd51c3
Date: Tue, 02 Jun 2026 04:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780375473
