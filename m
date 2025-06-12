Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3884C2D4B5A
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749757194; cv=none; b=mtA/9k3nYsSxWMsCprGAd/iryICaNXUe6ZvhTWm0OJ8fw9Ef2gkcVuokr38bkpcZQ5XDvuFNZGqQfE9jEThVRE7Xis6SXue+/XcPhMO/g6lq0yMpP9zh9ITbXlGMbTprnYiTCKHLU4qFHE3rDaAor3wJX4F9P651CUcGvMdIYJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749757194; c=relaxed/simple;
	bh=c6Q1lohTAWpafxAt75tT5Ueq9cDopNh1WDAzq7AoTWU=;
	h=To:Subject:From:Message-Id:Date; b=JjMKnJ8xgybvr44SeTOZjUHfwmwvPe5Yf0h0ek7obt26IshDlGL5Duue8uFq4s4xYh+TDZHuPkeUCCzODsHrSJpoMLWFe8QjGJnVjFmdAExDHTcRHBkCaZYLp4RBKdLG0HwDlI1ckcqLWoVG2+Zh/ru5qOH73D+/DMMGFYQ0sUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZaVls37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZaVls37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C243FC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749757193;
	bh=c6Q1lohTAWpafxAt75tT5Ueq9cDopNh1WDAzq7AoTWU=;
	h=To:Subject:From:Date:From;
	b=FZaVls37J6GftWdE1uacGatxYjlXesso9T1uoykHKgwYkH7nzdfrtESwjbP0Apjev
	 5Bin61qhJgjKjEyOYkddgbb2eNmnrSLNEXYZbnDZNAsU5REwJw73pv3nA8AP4jr9CK
	 Uc0qpXRj/r1T9yXjaFzHXi748L41KGU9kWbdIUahElGHJ8v6NYJItsjrVll0BV0eJM
	 htvrf+s3jlsW96g4N0/OECL97kFqVr7c09e3DrGdu9XtWjhaCpgcookS+SnZYBvyaO
	 cLzHjKiwsWWuaAAlyUpg0Snc4NX1LxECw9vS+1Jwzzsom/JCUc8DJMi2iKi9ntmEwE
	 7z5zDi0wnto3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB21AC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174975719369.30492.8474895471006487417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b35add1347673faeb28cbecfe2781faa3f6cd49c5adf4b74fdb659ba7e8483
Date: Thu, 12 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749757193
