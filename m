Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C461168BE
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726385754; cv=none; b=tVM9LkJVAcr0SJ5QXR9ABNADQHmmcODPk2L3ayhoDSHPfbqnYztqSdIu3pJA91A0JoIYfATOUoK62HNTYvYALprTGkhsSWymrQlfwoCdKDKbFqXzQWNqzPE8gS9bjcc5valj5EPSXUFmz0FDDxBFXTUG1o6F/+6fGmv/YbEdy+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726385754; c=relaxed/simple;
	bh=JoZJI6SdZ0z1EHoJ+HmpfptwcARxRikBztARDIBHGSc=;
	h=To:Subject:From:Message-Id:Date; b=Hc2OiDIs0LadAzwqG+ZtYA9yehz0K/k5V7uWhxRUbbeDLX2mmdRezSQO6ui6xEOf4bNQRbP5o/poOEfVl/YYDNkqQ3CqQyd8sRWWGOIS74DxCshwSMZIeVUAaFlhsqRhxJsdvLT39G1P93I86kEg2lMkl9y6JHiAGineRkbZbd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugQxJAjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugQxJAjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9367C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726385753;
	bh=JoZJI6SdZ0z1EHoJ+HmpfptwcARxRikBztARDIBHGSc=;
	h=To:Subject:From:Date:From;
	b=ugQxJAjwrTQ1QAQNym0Fcx/Qrd/WuoLqVy0KvZ1uNFUNi4gAVwiDaesy+mr3vWXrG
	 X1xnGyxEQV4xWeYE9LgsKA/E7Q4u8KR6MvoXhm7RfZYCnyQn6y2fMJ1EKnZPfYL3TM
	 SVSKUtnqA38Jmtjs9O2Ts3QgCU6aguW3NGrSqm9HHCXs1y2BQYckQfzfyg3On127lA
	 Hx6ns7+HYrzZKufhKyFGH/JdnSM9vFD8DAv7tPZjzCA/MdM9J9AwOTfuaij47pqaEa
	 3yfU1/peBFcUaRRlcKK8/C3ZtPu5zDVOv5IxjEha16G+0eXEd6utZTsNugLbIBy4gY
	 WYLe4y+3BqrAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97070C35FE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172638575361.22168.7128466223418851293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c28a28589e36c1bf9bda0e272e0c06616ae5eb48b32d115daa2f5481213b2cbb
Date: Sun, 15 Sep 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726385753
