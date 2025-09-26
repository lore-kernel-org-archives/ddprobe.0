Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E6C15CD74
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758846594; cv=none; b=NQN7twjFKT6i2OnTAxLIYKJRMfA2aNMIUpVXHDkeoNWg7F00F5esqJR7LWnS7axlZv3o69EROooygTqqGYB/093trhLPiN0hItoj4Qe0F93nt0D06ue1Rt2f5emDqohs13d4AGp/htrrdBRClLjiKDT2YOau1hP/OgnXj2V/yoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758846594; c=relaxed/simple;
	bh=DeK6KzwEdfEhuU3O63v9GKIGi8U9cr64H+4rzujuvx0=;
	h=To:Subject:From:Message-Id:Date; b=PNeRQayi2DmXg3XboPV/6MywCpsteVS6JSlLullpFjk3LygkZVYPjkYLpBqcaQdsYlLDSQoCNFhlnpL9TI0xg5E9rQI8SsQxzJKb6baAtlbG2UBrjGxSDAfDAmFwAmL7nihbkVlG7ZtajoUuZbz/1VlDyZ6tfTvuyF5F7mL/PNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REk3aY21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="REk3aY21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA1FC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758846593;
	bh=DeK6KzwEdfEhuU3O63v9GKIGi8U9cr64H+4rzujuvx0=;
	h=To:Subject:From:Date:From;
	b=REk3aY21ngwusi8xjyTbKweu8buTKutw+aZ6GN4y7RNBHr6ce1v1MnEkhCxprayrT
	 JYGDDDcqbZYianCnOvg3GDi3sPvcai+5Gf7KmldY5pZW0wFIySiTV6Q7JgjzO0MZZG
	 DyD+6nU3OEhaaveVwjfLegd0XN7b9m/MtJeYTMXUp9fvLQSjMECuYfy1LCY5mrtfTJ
	 s50fkj44/q/qzMzZUh6RIdXvrr814umSREOn4QD7tpCSJztQV+FA0FaZDmdIOryiQM
	 rmf2uUP5sTMWtHz21wxiFwZzxMaWEkh3L3Rz5E3MTZovfo5CrHoXoqeCG/R9a+qHj8
	 pTXGsPH0E//rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961ADCAC5B0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175884659359.9457.2196117710464570584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6f6e49abe437101d96a318528364367733dab009bae99a69ed5ee7f3638828
Date: Fri, 26 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758846593
