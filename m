Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD493016F5
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778763634; cv=none; b=jOYdzRL4zUXhFUEWpAZzMhst94Rt0Z7GFecYz4Eodr0qgpIUWL8XEhAeXQMaZ986zmoDHmWcmTvEzDj9nqQ7K28YbBeGxk7V6aHApzdq0CDDrhzCDjxip4yNKOz8ELrv64jqaLaHKoolPMIw2VnJMxofJJX3GN/y5v/YJ0Ywoh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778763634; c=relaxed/simple;
	bh=qUpHlWC9Tlxxz29IoDllntoKpB9a5OV5ICNIyILapLk=;
	h=To:Subject:From:Message-Id:Date; b=p3js2a2u/RjNJELyBba/7mJ86fTdAEsqYPmDr+fkJ0ek0dryk1FG4yxJWz/myWPdK4H6o9IkKtDcTMvchtTXYmttw2NJMqjlAbsBIcMrGKz1LIpPx99g9vzYAC3zQLRPmfjLH9jQeoenhdA25/Z7YJulRRhS+2B4lbBQBZUkD7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dhoggr3M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dhoggr3M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE268C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778763633;
	bh=qUpHlWC9Tlxxz29IoDllntoKpB9a5OV5ICNIyILapLk=;
	h=To:Subject:From:Date:From;
	b=Dhoggr3M5sScsRU7EkKvI460cy14ZrrdYQkIC9eQtqvF204YOc/kIUEg06rASDbx9
	 WEaP7YniCUFOdNxxR/HbMW93eO3Ykj2uj3UHTpv7ZgXAGHejy5DCkWd14RMGY9rTJv
	 KaP6AUW6tKYcgGGUv0FLvjZah1jNuYiF2rSzhfPj0WbR4Nqops4lajRuGzeukwedQN
	 eKZpT91po8AhYDz5JenFicb4TZwe+ZmJPxrABQe8kF8i/1NEbQargiiVll3x+9YQZQ
	 gek1zS0XmxXqx6gVXyO3ZlPATn96/qPh/z8iiDEmjdp3SjP78z6Se1WlE/Mkipd+eW
	 vEaepjLlK3xrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD296CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876363368.17865.11100133452637782739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b79e288503c47fe6bc082445fb77f69aa75761d04376e49b0fca71ad3c80143
Date: Thu, 14 May 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778763633
