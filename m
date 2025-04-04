Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5440D33FD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743745795; cv=none; b=bMXarmLkTcH5SgC6+6kwnHNXz5h6/ohOMiI6kYBhiuSUjtvNhAjV+hP1uSnEQAP7BvY1FaS5bPMs9mxErmxZSwXZF0M2foSfYTT8JUhCpDq7gKTz+tl0aBagnhqoz2dqMFem4vvTjzkXnnyP2CGKpp0BPhaJGBv44OkMOzfE5+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743745795; c=relaxed/simple;
	bh=5FUdJBzOP9TaNKUe6OolF44xbzPuheFZTO4hPZtR0YE=;
	h=To:Subject:From:Message-Id:Date; b=hU0lG/2+dgI3NvHobvvasJUr+j2MPFBsvzq5ESPTiD87ShgtiDNQUgWf4/rx7X9gaYB/m5oGXCVe4nGYz2G5hldbMYfKwDC6yYZcHjgopaFlboI92LdKZRB0APMTj8SvNyRR8JW3QS3uyIs4g/25msAPJdGQxgC5GjKpqsIbYDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0R8rIgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0R8rIgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A77C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743745793;
	bh=5FUdJBzOP9TaNKUe6OolF44xbzPuheFZTO4hPZtR0YE=;
	h=To:Subject:From:Date:From;
	b=o0R8rIgqMfJ/9Z1O7+gmBm6+O/IWAwEEB9md6hHm+qGLsb5FxiIrc2hb39utSd0aq
	 SioPj7ghkaAAhW9/zA9Dhj+iAnSkMi+L+xcP1Q8j2ClzpdJTcIxHut6GVMZquBbVTF
	 nVCqJLH/M8Q/b5cZAlY/zM2ufQZGBzK5xwDnDnsaPNuylvbjQI2m2ggFvEPvAo3VhW
	 YrQOtn0DKD8PO3rOef0WTJ+OSdx4M94clLSkOmY9C9Fp85z/pomVl6vvDgZhXgpY7c
	 2B3VtuVU0wHTzIv7F+HAFfhVXHPv+0sPdX1Y60r+WnAmGSpWB8NlLWvLFC6ErYEWP4
	 1l6V6vmuFAs6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5AFC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174374579363.6233.17829935108913138270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdc6daa6920566598058e4a502232956d3317a9fdc9585b5ad0b4e9512a8b16b
Date: Fri, 04 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743745793
