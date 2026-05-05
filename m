Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15403F7A94
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777997254; cv=none; b=KSmZNHCjdjZKtOYE98K70R1rCd2uW17xR60vkdhgJ87Wkg6LKXkjfILpu2h6hi+wQ/qfj1tNHO4qJZ9F2v9Sp/8qeDfAo6Q8gz7kEe8NvHBGw6VDqFzSfDvplpU/MO1w7/qjkOLGdtB+W7KW6qI6pikH0TRTH+KqQoEl8jF/5uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777997254; c=relaxed/simple;
	bh=FQ36xonCvr3rJYDmsjQvobOwJzk7r8l0kBB2aqK2l6Y=;
	h=To:Subject:From:Message-Id:Date; b=I2ksKN1v7qXJAX24QWiMa63HMAL9GgQfKxIGsao4xZgBm4zyo0F4ERUUN6zdKyWV4lE2JyS8gKSi+E5CVVvI5PhINfeaQRkzWlmjeBltEw+MRRh0rKLNtgnYpsBG6uUPlUP6pPFk0R0jV3ynV9zyBnzDG3wljjP3uQkA5fEAXsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4mDldov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4mDldov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DAAC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777997253;
	bh=FQ36xonCvr3rJYDmsjQvobOwJzk7r8l0kBB2aqK2l6Y=;
	h=To:Subject:From:Date:From;
	b=X4mDldovmTjCd1VIOjW9CtwHdwkvQI8QLL+ABqJCMEbdB19Qvuxv5qmVEoZ5q+wGd
	 M35wiV+SlN0Jkpamu1ngwfpv+J+FvU4Lo65ylpEoBcuWF8j1Zy+zVuwg9LQ32RE8s3
	 mWfZy+JeSYkX82Wj4wQe+17oG5NTaV64VZRpk5ja4N9LVhWuirIhdobt/sJ9BXKalh
	 3ygg2XY7jOpj5axftxngii5/M6vclBE41NBynQdI3Hm8mOg4fT/+Gj5EhnG26p5wYf
	 HUdRUs0SzpwgJFkw3bKU2gNxFrwtHVH6I3FX4R4ib2SYvoLDO8WKfqu6hmi6/JxeDc
	 YJyQO404YQX+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5775CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799725373.1828.1060673557285845624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8391e583f9931432608075f94e936ea942744466b1ed17f3f46502669b3276dd
Date: Tue, 05 May 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777997253
