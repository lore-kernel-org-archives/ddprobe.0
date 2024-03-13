Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6D360877
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710353897; cv=none; b=K/iTdua52Mbf0RNmaaYHH2dcXvPJRz7l1NfsrwWCxtkEWy5XmdpCqcfuq9ovtz5wl3T9IWKiePtqT20bCF0umCPgAmKlxqAw1rlH+/qvmF0LOAQRB8meUwjSfufgLo3ZFSSbMPNxuGu9A7d+Zuyx2d8fZvDi1HZtYOCGGkTcIVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710353897; c=relaxed/simple;
	bh=Tfh8UszldxsqzoM1uL8AqXmacDwOP7LB++boiVrSuXg=;
	h=To:Subject:From:Message-Id:Date; b=Z19unQTqjqVP32+rdqwaz/Hqlkd/wBf4JF6EvYXz7T2l8AspRILesL9dqXYPjsoNIgQhB79etFwG4vPz4ilkRTkq2d/+k6NqFKDaBJY23Ph48rpRrrwYmiIKCx7B1XkaYRAxYfvPLhvjLyjT8y01S+AXKdDSQb7tcAAKWYanrGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZF8QvHy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZF8QvHy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E53C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710353896;
	bh=Tfh8UszldxsqzoM1uL8AqXmacDwOP7LB++boiVrSuXg=;
	h=To:Subject:From:Date:From;
	b=oZF8QvHygLurkvZnJHsZDc8N4xwpCJ/2Bar7SZUNGVX+40AHic9XarJH16pkImxrM
	 Ce9Q7rz9BhAmqLccbkaNlTeMSz3lh3lMDmFtw5trzwRUcrOQF3kXx05UWecovM6LUc
	 8u7IKQpWwVzsbrNvu3f41N9edJ4dYcbRRYO+2k1gR9i5YLQpJgzihuX9/2J0Uv5K1V
	 7SF0T06mvXrFccz01q4To/7F+UfQHprgsqSBseF1a4/W5nAXZVKrkXIy1Gctvl5lEv
	 qZf9kXrc6gjAqs3UcuKwNV1yzBXjuRACFmxPHy25wrqxzx9E1JXwGwUCdJ0STEH+Tj
	 RbLMSXEidjOQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D7E1C54791
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171035389637.21807.6769931882475956190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65bf74ef22ff33fdf1fbbd2f3fc13f7a75e57391c3f3c054a05463f1072ab653
Date: Wed, 13 Mar 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710353896
