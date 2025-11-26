Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FED30E83F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764129774; cv=none; b=T6+I/eR/k+MJC8xLAUGXLXtGzz1Ce3zgOgRkIBYJMSnM/0nD/vGFY9K7fmyCyLCVb6ZVwPYnMYIvbVoZAKgXRzJcir6k4WQJcNzXjcRT3iXxBfiiF1YUWOvnW/+tzI8l8lgSAH8LjWOytCOlFtC7aAdY1lsVeHX67m/t35wRLZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764129774; c=relaxed/simple;
	bh=5JoGtyB3xSQVVscr7HfRjPWMd6QoMU87ASAqw05koa8=;
	h=To:Subject:From:Message-Id:Date; b=UFc9oAmjb2B0TcEECx07vVkw3ng8sC2nX8QbYiudFe5OeOo1LSNvF8htpbHW0LsSCLK03VSkrYbVhPwovl9cXg3WgSG0eW8CiH+EbK3AOJMeMv4Li9shsV77V7KmNlpqlv+yQDAs5Qt7/JxjB6wMv0vMCHrI1MzKayVepE4BRvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObqvLbg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObqvLbg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A636FC116C6
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764129773;
	bh=5JoGtyB3xSQVVscr7HfRjPWMd6QoMU87ASAqw05koa8=;
	h=To:Subject:From:Date:From;
	b=ObqvLbg4eFS+0xBqdTOpTMpo2o/Y8Mi+YlkICbfmrQlV2127++Pt+A4AYbyU8Sj/A
	 2CzFEqSsxpoQrbvFI0efI5EseQqlv5Ip4JvvdWY2k6+u6J89NhX/3WD26lT/d2aYdX
	 CVyybrAa8OpUtozk3zvUJtQ1o9KDOoIqDTtl0SUf3f18I1mopr+AX7RcXViWMvtQZJ
	 NhfQvY8OT2/kOl2xyZ8zmYWzUxxQakmEJALu2Re7adYAZb+IDqo/V/oMlhLmPP44vA
	 WJ3WhP/jF+eoRiBuN1gXeeF2OXrFQBfdHzCAh0FHCgmEs9SkTJu3cds0KJ2LtasX1U
	 1LAXtgANZnHFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94219D10379
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412977358.3564.16366632475408940897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 344628e61713b639b9f21780679a18538b403dba228dc21c5ac2ebccb5391ae8
Date: Wed, 26 Nov 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764129773
