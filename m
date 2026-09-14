Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597EB472528
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789393234; cv=none; b=QPIyZuSM7uzLZdYkY3VhypHwhzFKCyYDioArrmsMpco36PDGGZ8nIh3ojFveeoTs7okti4h/71Tzk1OIn1PSRzbl5dKi1zK3qGCfd+yU/QLv/ja79nGtMpMJklVDNdK9L4iwIjOUPYHeid5OBoq/yYMvn8eVCmmhHfJPbW+XycY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789393234; c=relaxed/simple;
	bh=OdtF374wTH65puBlQR4sK2spkmT29XzQherjRFTAv2E=;
	h=To:Subject:From:Message-Id:Date; b=bbdMoonunGBkit3ONeE4ZlGXdZOHwZfPjGq/Zj7C1ncKHmxNtNNLJ9VQV1xDLFIPu8+Fn4X/2rS++VNrK5eJYVNl8IKnSNUcL3ZTjjxw8MFdHmmgfTDzSYcEcCl5zR2Y/cdYAzlksIOFNICMG31YSyr/CpB2cW0UnELFTjT+Wfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaPEh7I1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaPEh7I1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CAFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789393233;
	bh=OdtF374wTH65puBlQR4sK2spkmT29XzQherjRFTAv2E=;
	h=To:Subject:From:Date:From;
	b=FaPEh7I1wLqQp2OBSY75Dn3cmbWst5Apzk3N/TsbdhzxwfCtemyf9FYQGWG81lM3G
	 Ar6HAm7cxJ3cmLTzxNIKnUIIhjv/ZfjicQ8DdkfPadq6T8ZQiJzYgJ0QGYyBwHuXr8
	 /RDAb5lXu5v8jzRlfCFGLwXiq0DH7yIqeyeSJ/bP7pqTZLBVjcqMmmLk3WOjaxfbz6
	 fsRvfLmwiCncyiK2PqP56W4b7yIY3AYsnSmEZ41kJioJ28iuIqWXW3iB0YNb0LFpXV
	 fRL/DeDO7PIHonzfuywnp2ZsZtXgaMTery2uXK7XXxVNPFixv3cz1fWTILu7N8vzH6
	 nwoX4NcV9ue+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF49AC88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939323370.21358.11539071801138351571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54dbee2d9108271b7562142e096517909d408a8a8311d3c88c6444722527bcbc
Date: Mon, 14 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789393233
