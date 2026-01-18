Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D62A2E2850
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768708434; cv=none; b=IxjOSSjTGE/1cQTjDVbzS6WAVxaUivcRWkwlwHI1geMt6cVgkgbd3/loiJOQ8Nk0z+ya8V4VE5yZi5C/Ajs2FqDaKewIUUN0A3yB5wwn9LOfSEPX29jN8TprZlGsSmWgh6EocRcHcYrAA717D52n9hUcqc0aCwW7fIAkVuzGdlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768708434; c=relaxed/simple;
	bh=dIYJaV32GdxKHfhfLi6GK9+F1+l4sAEBAxPALtC1M5U=;
	h=To:Subject:From:Message-Id:Date; b=AQct+qNSFu9tLIpA5R767N0fyjuHCIk4Sg1gFHhq1bpiQIpLj+gTMtzEoXs9ggLcm9Rpa69CMNgWP3nLfEeYCu6RsdbLtWGBCWLdtgICWcSBWzJObKzfTQDlwteCNW/O3naKllASmOu/140dlQBJAk5wCcGaxJXXE3iZ7S08UX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpo+GFKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpo+GFKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7660C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768708433;
	bh=dIYJaV32GdxKHfhfLi6GK9+F1+l4sAEBAxPALtC1M5U=;
	h=To:Subject:From:Date:From;
	b=cpo+GFKl3ECkhFu7Wcd6Pn4hiOSXDANqHFIDQ5JxiZjDVljLYn7Wg0pNZSp8ZLb3J
	 gGUf6TPeAsRft6A524I8Rjb6oi1hvttqdNFoj3jH4RAuTyTcTWJGFRG8VN3cK5pb7g
	 DwFYAV7jOl7+xzX7YC441EZFLjaBI4P0G/ludzi31nad5b8NXUL9hYvcZ4BxWOxDVC
	 UQv6E8HC9Vw6JT0Sp6kybsbQ/tfHWgQ0sgufWBfX+9+VexnM8HPWBhZlqEXuhtxE9Z
	 8b/U0iDTQkEOg67ganeFxczFGdi2icaJ31zUUxz9CwIaF0ec2IcyzasUKxqLrsDBU6
	 5GCuW0d1uqCUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AC7D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870843357.19564.17348637706156378901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ad557db7b4de28f807f198e3c4e3384b0b8aaf4ce5d6f04730f702f470fd04
Date: Sun, 18 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768708433
