Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9E23B3C01
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782293194; cv=none; b=qw19glNf26zGCRL1CWBspfYJN2fJzYshsyzimiFUg/GWnT5vf+DjBdPcCz2h/Kz6IaeB5UkRdAiM3XPnRT8tIyMhWkcuyZV7BiREsdTIF+bWC9FlI9dNZovGOlIq/TwKf7qHQ9sqY83xnUB00R2gINqe23pBMs3A19TXQvgBZKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782293194; c=relaxed/simple;
	bh=fddnZl1nz2ypRf9eHVMtlslqyHbD6RT/IpUTeuxTJ5k=;
	h=To:Subject:From:Message-Id:Date; b=SMab5cAyw4vdIPeNTnbu26ETyHZdCcfgEWcUj+tbqWY2BX+XY0FZk6H4a57XQGJ6GU0kGMJQhBHAQ5IpuhAFDiEaNxLIiOF1Q2tztrqcuTQbjYqVxhv4fmbBGbXIMnmqp24/35Wj5Q40+q2wJ1MBtBpO4PGcxcrwH139cG5Bd9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQp8+U3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQp8+U3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9EA2C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782293193;
	bh=fddnZl1nz2ypRf9eHVMtlslqyHbD6RT/IpUTeuxTJ5k=;
	h=To:Subject:From:Date:From;
	b=VQp8+U3ABhyWZOBXPOfkDG4BFDa2QnR40ywMkglFdimrM+3LWxI2vpE1P2IkQgEes
	 ty7T/Cp8wm33ZUelFIk3ZmbRrJpGPJJgTTZpDgx48jiBTIkuQOVLkCxm3nXwPIhuit
	 VMCNOpGC7hcctJ3alt4YND9MFjwht+6nU1yuMzG764QSnyuOteSdWSYb5KRm2L+zGj
	 NYIZRYBEEqQhEcNbae8tye2cHhgeVtf9R+7iwqzldLn21owOPwTOVW8mJpD6deTSY7
	 A86QHxx8ep+e0oqWzVJpL39ta0XWpjqScqJx0jTQ+ayfKbyB+Cb9Aie94dSHf1lHrg
	 89YU9+U4RVQXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC58CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229319375.32636.7198671195673344818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9646adb1f711fab456a64bb2dae48bde1c3e45642e5315e91c7b6e4ac81457
Date: Wed, 24 Jun 2026 09:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782293193
