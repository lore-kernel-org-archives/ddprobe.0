Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BB915D5C1
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717018463; cv=none; b=eJ1NnOjhfQHAtHwZE3lRjcTWBlGL5pbhbNC1Tgkzgl+k6aCYoeCMUdztPl4xO/5eavd/dpNq+fQKsfNd/m1p1X3PR5wusTJjgl1gZhAnvekcYZCq1o+K9gAA+NygEMFznml6cORjGnzgVXlF8F7Vj5UIGZN8bEVWR3v01ZQC9A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717018463; c=relaxed/simple;
	bh=FEKbhLseiexnLfD9GusWKn1OvsAAZlKyhnN9RoNYR3s=;
	h=To:Subject:From:Message-Id:Date; b=o0+WGFNJ9kwh2yv5Vv9VOJh3wRLpT4CYzaZr19Mx6rrzkHi/VeQ3faAUSxuArx2NOHrXRmShNp0YRdf95Lzvae85wanaL/nCW+IsmDBkik3vnLesaVk3HSIHIERChd2QDTdCdZKOWOKRjVgLBvh38J7zaq5AojynckhnaXqVCyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckAvXyuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckAvXyuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCE0C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717018462;
	bh=FEKbhLseiexnLfD9GusWKn1OvsAAZlKyhnN9RoNYR3s=;
	h=To:Subject:From:Date:From;
	b=ckAvXyuAGioQECS/ghQ6I9Wtc7r+0wjiXCpNdEcmcfPTJqP79Qxbv8dryxjBYhwIF
	 BKKvnymKWnw3m9o2CcWH4n6qDhMG09mAo1J+woFp9jcOs6w/+I4oBsulIYjs6iQ6PH
	 yzCxpGpdbXwhyHwlSJL4rX4v1O41HXQB6TK/F0MILIe3Y3JDAFOcYjqXSaqsOmWM9x
	 3825p86o3MtyX5w5bzqisKpNkW8g1yNN1pb2vPs1gQPk+WN5nbrMQbEaM0V8lQBlnu
	 JdNc2VFUDasjcHeBQmEJAOKNlA075uYbvV6Id9ioepEA/tNDsnBdbpqSPk7kj37VHu
	 X8wlnYoTOi+Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C786DC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171701846277.10023.12182586141745176836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8430b638f7c416972d3931c32c22ddb274ead16dcc4fd61bba816f43ef4180
Date: Wed, 29 May 2024 21:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717018462
