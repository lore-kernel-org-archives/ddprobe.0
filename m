Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A3B8F5B
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743358194; cv=none; b=q1XrS5y/sUGG+FAgSYEPmA6Gm8ik9b2ObxtZl9ZIEVfaX3O4N2ET9L5BKD2/taHpEtd0c0Y+vZTqBu+f24KkHfcZPqlIJy9lLFyGU3Q06HRCYfJQX8nGY2zi7vUhIYvTh55FDHilLBLsGfKLnF5Pj8MsOZ19lPVNIPi5ZVDXm8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743358194; c=relaxed/simple;
	bh=ieESNGs7vVuP/e6zkHB/ecMxUAYybv/FBcom2bU0Xt0=;
	h=To:Subject:From:Message-Id:Date; b=EwT8KJPErtcSIxZnIlTwYSRRoCA0u3GoIFAnY6D9aFbGulSL4CNFyNqrL3idCN7DqXbyDQMUjBhq+8MA4xiPeZbyRtuFN3o5jnjDWRVQQYkV2ZaRP7ovj42Kfqg1t4+rS+zHpbf2pNzJIigks/4JJZO6Kp2Oj8IYHY6jSy30R5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+kSwXYv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+kSwXYv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD67DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743358193;
	bh=ieESNGs7vVuP/e6zkHB/ecMxUAYybv/FBcom2bU0Xt0=;
	h=To:Subject:From:Date:From;
	b=o+kSwXYvAnoz/ymVphYpJv10/DrivUAXVZi643WYBp0vDRQOsfnvkycEfnAzMJC7J
	 8Xm/EnGWy+FOHHE6vOFpXW2Lrhzj5RqoXyS12Es/Kco1KSnO0mgHISL/2b3PORcnvF
	 mrDP1/TnWdK9jFiBR6k9fBMJFAkRHxINCNPM8Wp9kV8QB6oGv4IZWmlit1j9XigrvZ
	 ekC4jpjmFDDBcd2GcY33TSVWQ6oEJJveAZVPi9IOq1uej2nCKKcwBOBbPClOK/hqlK
	 7DxHglMRwXtFK31X8woAvPDIKKCMQa/l9EefteKaK7HoQfFeLDWvK+svNYqi+heJ4M
	 QLOaiN6FLxc7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E34C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174335819361.9011.15230249457376766587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e1a78e03dc043f1259db96701aabd796d938daa916f7d865f7d9cc0be046e5
Date: Sun, 30 Mar 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743358193
