Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CC332AADA
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771538094; cv=none; b=leIYocP5DptZqtjw8VN9SOQaHn6dwkw08syy3MPp7E9TqAm4gvpaLDq/qscEBSuG7VM0Y2dV6mJnteC9Nz1UbUwBBhlMkhAhYivSBFTnUotLUxoxHE2IF/wuJXJ9xFGqrsjYj4c0ULo801kIJzkFPhTZ9ezZgpmUN3rLK5M1coA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771538094; c=relaxed/simple;
	bh=XZ/PLQIazLwZxEtMOI+z8W9N2AeCByLMQEnKfb0OYA4=;
	h=To:Subject:From:Message-Id:Date; b=hLjmOH9V4hKuuybW8VZPk3K2xluJs/TalR/YvZnInvk384MmKm+j5szKRgdO+vcObqS3OZml87gr5+7XEJXOj9uVwl2fFKTGe4yMUw8r6eQ6EWhoqHFxxTpdOlKU5Lfuz+rtPWDcrDR/GWq/w6a/9eNMS/80Qm4G6oEwBXie1GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRON0MQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRON0MQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DFCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771538093;
	bh=XZ/PLQIazLwZxEtMOI+z8W9N2AeCByLMQEnKfb0OYA4=;
	h=To:Subject:From:Date:From;
	b=nRON0MQo6AXELQ4GOw4cLDAdicIrYxDngkbiW9HTQ8qEonyDyHXgckuToTjiPoVv7
	 2XLY1qpMEtEm3edrNWUl95t56zq+efPxgwNlv4v51Qmk/rVRVVIAiDVF6pXR83/KMR
	 0jIwBpdd6/flpdUa3klblyZy7ZKV4iBdj2OVL0WNGhARb3CxZRPIFgPRws/+4KHYBq
	 qT8y+vlKiasfyOJTuT4JzWif8/UdnRo2ySKETrYSuNRciYglrXMSoO58usmIuyx73g
	 FB1QsRqFMGjCIXRRX3pNQfThu3H+G5ha3bviriuYcDxu+0KSZpaSUoMxum1KDkNJEZ
	 5hy3yFvHE3kqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99601C531E3
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153809361.21308.3929233252629326244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64589493ef93adfd44820c6b989b9492fb8725f18bf4f0c19640ac8ac9723c0c
Date: Thu, 19 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771538093
