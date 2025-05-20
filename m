Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354F22638A2
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747729194; cv=none; b=tUE5/3e9pL0tqaZ7qoDCW5nlWpWicNhC6hCWt82KPKomBC6byWxN8MqXm1NpU8utZf+L0n3AK+W9FierMj06SMKTPi7yZu1Go9FCI6QW9jSLgEo5cwvj4uhzMpGI54vtUIveVL16H/a4z/iqeb6f7yR8AwovSaSArk8pa9By5ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747729194; c=relaxed/simple;
	bh=Jzt9zNVinjNHj3wOPPt4HFlCeWYNShbRaGof5WckTKk=;
	h=To:Subject:From:Message-Id:Date; b=Xk3K34gxvndJRvYOObHiI+iN4uIB0eHprbKPEwyyQ0+7uz6Dnput6Q1Z99oAFq9CKIcZ0SU4QGi9N+TzC9BqeJezGClrkHSPpvqJaGZoGQZn1waZ/uyT/8h43FNSrGe7PNgnEXU/7V5DyKytiWgDq+4CJT47JgjEtwKYClsPhLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjuvNu5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjuvNu5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F788C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747729193;
	bh=Jzt9zNVinjNHj3wOPPt4HFlCeWYNShbRaGof5WckTKk=;
	h=To:Subject:From:Date:From;
	b=JjuvNu5NbkL9llkTy+nNshKNK0sXWSwB5WWXRkIivlUuTjvkDioZmFCTWpW0KdK4N
	 Y9tYm6MiBgl0AXmY1bbasu6i/+oqWb7naThje4v2pHc2Nppqi0eoQjwqw4lviUdrCJ
	 BcbVf+eNylpSuKAEhDf6jxXk1yJET4WFfnmnDeVxNc244kTI1HzfkOAyPoYec7h4j3
	 jlNhmqRMQTEx4Eb4qwQ4JhXUyumKGnA2nXf2kszDhz6P8lgqcCSpZs/iTzzq3wG/AG
	 S/gACNujNx2G0XhiegiPOXpcEVI78r3BICPel5S3jD7P+Hx9YKXbfDLoWVxI1VysmN
	 BihxKO4pKD1wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB9C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772919357.24380.18000947068342406929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b2f2847af731ec10f199367d7a30de9efa740bece1b14bce81b37b603715b4
Date: Tue, 20 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747729193
