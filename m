Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A4111718
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 02:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717727243; cv=none; b=X66i3rDand/1ilzo2UTRGDTnaOxQzgX1UWwuDWkYw8js7A047BPXjPZlnUyb160uG9kyKrPIlz/IS2RQZaqtqc1Z5kMTLBnC5iXKLnv26RSHe8+Yhz5FtaOqlX9HpehhKE7oUa2E+UHW3JfEoFtExOMoVB4e2inKiWKGfihqrKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717727243; c=relaxed/simple;
	bh=GyuX8FND7OIWrzBZYq7qYQd64qDFF/dizs/66vqLRi4=;
	h=To:Subject:From:Message-Id:Date; b=jeL9Zba9i60p5IQRekXinyt+VFDePprKbs7G2Q6jV/hNj7cz/DLRTsX06T+w1GP7yPZ911eyxP06Vuha/RWZ/E8g9JczreAlQSnUh1y21WfGX/0iOsv2R0Tovcx0sPdaAMy9hDmtBQLZnRAz/twy8EszST/+EEeJABAeSPaTmyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUioYfQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUioYfQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD55AC2BD10
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 02:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717727242;
	bh=GyuX8FND7OIWrzBZYq7qYQd64qDFF/dizs/66vqLRi4=;
	h=To:Subject:From:Date:From;
	b=VUioYfQib7zmZkweAY2pWvx7kk1JWW8uHBenekjM1Dm5/a/yCUQAkHQOZYo54Gujq
	 9TbfnRcBVQmEcVtCVp1FZqH1V4CJFvWLEKiS8Mvjk2XfsavRN4GZpoNpu+BUDc+Dgm
	 Etdh2JADqFQxVaz3rcaUxr19CaUzxo8T84akwO+LQU/gVFtthMboYjEMQUc2JaijKk
	 cYtXrflABssbEcA9BFckzXvidzI9NNLSEShV+Ig62/BVEfatFebYMjDmIGAxTPLeoC
	 FrXvrnmxq4PW6v1MENpcWUk2oEWkGjRhxKNVw47YcoUVKmtdbN+qOrYczfHKaNReuA
	 gUQ61lGCL/UmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DEFC27C65
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 02:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171772724280.30333.12874465379164787535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f996331fbb145eab43a93076f1fb6e339f600dc8ce6e2656628f9e4624a5b6f7
Date: Fri, 07 Jun 2024 02:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717727242
