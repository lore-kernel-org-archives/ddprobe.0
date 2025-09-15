Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350EEBA3D
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757962794; cv=none; b=AqK4FS5JGNXxq/mcA5k4JWPuOj0C0e/m7RxLqYRQOky2ZuGQjBUuCChvo8JDegpV1iOSRZ1R3ZB9KwhQ9hDUuMUuC+A1slESLQeOCefwiVs00JqJBxY40/8s7JBBH8Jv28nnko1m83H6QyQ4Sf7+SbQm36BeZEQFy+YHZAtI68c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757962794; c=relaxed/simple;
	bh=e/JdlSHFqkPb0YM/moJsWR9XaK+ciS1g9RHGtXO+sDI=;
	h=To:Subject:From:Message-Id:Date; b=pBWksH3Mj50/Q65KdhgJAJAhSwR6PtI6yTzIPnaiDQ0hlJ0tAzuJZkpQrqI7Td2LTRpn46SSpIEF2MI0ahBaCHv29eZ5jyhSYD9iaum1J9l6iuiqqHHBxT+tD2AZMF1cD2rCS3uOt1WrKeoEnR+DdYv/3sZGYLdYWSVY66NJ3oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAA+qU8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAA+qU8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B19C4CEFA
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757962793;
	bh=e/JdlSHFqkPb0YM/moJsWR9XaK+ciS1g9RHGtXO+sDI=;
	h=To:Subject:From:Date:From;
	b=NAA+qU8BiTiVsAR5DrvT/n4XyFDRKa2soGv7k0bxz7e9MT8mhfdgogy04GcekAk3/
	 OSBai4XlqWR7tZ4hoOpUpIDOqhZSRayH/dC2F0vTVh8IrXMtYIzdyU0KiCYSzRzWw+
	 8zPWMQmbz+bKKVOe/njY7dOs7CUDTv+RDuIRtKZ/GArgGQM54oz+pcn1zZQIebDowO
	 mUQVJqu5jqPkf1wd0BX4cW+7Ecs5Ojj8noZLtOjO3/svJseesLU25y5JWX9LJA0G6A
	 Mdxf1lP1kIhw1OQ2mqhB819Dl1/9ke15RHmvBV+BSFoq+y2l46G18y44TN9F5X9WLI
	 If1umnvIlsuVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F30DCAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796279357.3944.726617707459807489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aef7b1d6e322e65ec2f2ee7afb5b3e2deaefce878b0596f97fd7fe2f59fcaea
Date: Mon, 15 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757962793
