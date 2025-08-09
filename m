Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26469266580
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754747994; cv=none; b=GWeOaWP8SuXDGYtcpn5eGl+pOt7B8OuVVGg4U5OSjVihOQwyNy7L/8iOi0DdkXtqNOZs44CVtNzUAaEUwfU+zoreRe5hd1oPBYKTUzwcDddquYDqJZI4yPqkYcPF5JMyCOe9Vmnf2mKIdOmuZtpKBq2FFx5Utel3dT291/OgZ1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754747994; c=relaxed/simple;
	bh=Eqj5a+qbAzk3Xf8w0VyaJYkGcW8d+qklW1QdKbg6kAI=;
	h=To:Subject:From:Message-Id:Date; b=YnabM/yb22OjwV0nzeiYd7rhni5tm2UfALIUOJam3PN96BCQz9nUtAXF6NqDyIXZg8poF/HEo5Hx+TXYsRZIi0c7r0yObb/19W8znToFOieW0tEfAzXxg0QMpLU7/Y5PpBNLfhmI0o7yO2GwTehqkipqtHIprkMAbs5E5mRRnkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fv9SRaz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fv9SRaz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A216FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754747993;
	bh=Eqj5a+qbAzk3Xf8w0VyaJYkGcW8d+qklW1QdKbg6kAI=;
	h=To:Subject:From:Date:From;
	b=fv9SRaz6AMf+oIZF2GcW/M3E/YTiH3adgEmOqWmjiGCfL7RtrzQERNi5NaFGIYt19
	 +RKUOHYtNmOpjoSwuZPzA1QjC8hgbRIvjcE4Ni3HPu/PFl9cBHXVu6+wmSy5SP4jyk
	 LzNMumTjMOgUWtcLFfIKrxo1T15WDSZLa7l1XvFFBHqwhGmOXng2+Xj5vmf5efArjE
	 Pp5zQHnwc3hZIbYQxABUehs7mV3+H9k4ExpqFR6V0aXuq/HB93REGw4xAzEWCzByU0
	 rKF0PhWGgyrItJMHDw/kh2DjPND8aJhiQWqd4CpwGnPSxc/pJEJLfla55mK0tUzRHj
	 KT+tYfETqOiCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E63C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474799357.5038.17269218968807093706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8113b9d3fadbf9e4e326c70ecd9b1f66c6994f62ffdc35620be1773f80932311
Date: Sat, 09 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754747993
