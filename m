Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350E426ED59
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772333094; cv=none; b=t0s0kznJzySYfFd6Dua+CK/disl2qFt3PsQrmZTcfnD3JPMkYYe0kfLr3SkFv9hwDXZtFrcQhvfrROB0jQr3VzuugaJwT7N+q6JQ14AFVKB0PgtdfFY8CuP9Sf60LXBdXS8G4tvE97FnhWNC7319mS1lIXQT9wmJpUQAo8YrEKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772333094; c=relaxed/simple;
	bh=+eXT4emTqMw4m65YoHI1gIULCpXsACfkNLOrmpIMyeo=;
	h=To:Subject:From:Message-Id:Date; b=OSxFLDecbAZnAaXDQr/LTkaAl8UxFwgDjo22vTSkw89ZW88tSSivCaczbCzPGvkquDDpW/KUg6BoBDBdXLo5hGUTAS3NY8uOT4+XG0KoDg1XWfo9nEbEHXoZV6Xb/41HZVnL+3El9hB+e8/+GZ0jAqgBGp0rJShm7wCKVUHlOhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKdPbHfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKdPbHfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C593EC19421
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772333093;
	bh=+eXT4emTqMw4m65YoHI1gIULCpXsACfkNLOrmpIMyeo=;
	h=To:Subject:From:Date:From;
	b=aKdPbHfqCUdtDhGLlMHa7sY4V9kDDGk+OzfmlrSUDGZ2PRF6kjyCxIeIMUI7qM8R7
	 LqQdhyewsTzXAitS4HRbInoZpd/2rqCwxDEucZueuXiZThpj//Mqb4L1SpV5xKuu6I
	 dQM3EGzaEGbwpSAE81xoNpDYlmLFLSX9KNqCcG5+hEI418s8BpUN6ebMfZiX2PopoC
	 oMQDXIZViKK9mrqZLj8o+BZUPu84LtZ729vzzh5JSYyg1iaHLZlXALLiExSBydwJ1N
	 L0SWZSH0mj0hAMEXjsQ0PsLHX6d8o72esAYzEDNHz2cYRnSiBznr4AR8RsDCVHdTab
	 eOanxBVwvFgZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAEBFD0049
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233309366.8031.6041497209514304362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71419edb8519d416a848c32134917b33a6cac087698f91c6a3c79fb596bde98d
Date: Sun, 01 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772333093
