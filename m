Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A915396B7B
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770110634; cv=none; b=YAmbajWtmnGWquskeYe65Fd+GSa7hQWNy46tJXi4DEZBvsakuyja1xAPbUwMzmX5az+UeC80Uu/wKJVmhMAgTpeJsD/NBNsoEClB/icbB2o2MZt/+jNoICrbCe0kT70niEh0TBXspzSk6PNlJkpeLyZ9fjtDuNxXgFwZ4g3AL5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770110634; c=relaxed/simple;
	bh=ReDZxbw7CGCcYNaJIagwOQSt0btiRQ1VHSiec1w8HPM=;
	h=To:Subject:From:Message-Id:Date; b=k0JjCAm7uzS9RAI2YufvCgyC0AJ8M66zsiiAR2x98YA5p8YwKOZuVD290r0OksJfyzCeWqOohusBDJtBC9sQ1hx9Dw1RJvlF6zCM069cfGSvQf2p76JsskBkR8aaN+2HumneuAhfO/JEM/7Tv1sGUekdgvYnC4BIS9rQrIAEJS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4EyOiOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4EyOiOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AE3C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770110633;
	bh=ReDZxbw7CGCcYNaJIagwOQSt0btiRQ1VHSiec1w8HPM=;
	h=To:Subject:From:Date:From;
	b=N4EyOiOmMkFytmLg/O83RqoeAhxBe8tw9tdYu64cWkRyNrh5n+XPPwiqbKdFqcGN5
	 k1ocsXrpiUwXHiCUeJUWDvCzVefgjM74V+VEEbs0BAdU3hkcIhwdEaVClcbONFPtyw
	 omM8ElXDh5Ymtt/444FG7nwVCzJeT9ibpC6wYi2SLkPswYKdQqoKqbratSlFj8MCE+
	 BBgU6AC+tW93tEC1+8Q6CC6hHxtsZ7eH8aULjzW9S+1JQwpsNWeu7smobwxl79nTnl
	 2wMe83IcUTid2hWIRGCyXUOgWE0QmpXgjwegTL8NU2Ma3BXs8kgUB8z5ioeX6xc66h
	 qS1yF6VGYpZdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947BDE8306E
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011063359.31548.10312905782688201461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc432e8f32c6eeaa623aaa1001e6feb267bb426f816a0802301bc36a874a3adb
Date: Tue, 03 Feb 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770110633
