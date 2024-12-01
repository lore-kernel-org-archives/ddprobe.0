Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E34B2B9BC
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733073954; cv=none; b=rXbPURElFIYJNCdS5ylyrs6vkd8+dwSgx3UVR22+pwXwTSnMAZB9gRWBPhZQlgjgRJ3mc9WIzXfdv4nCMYeCOSvEYBaBBCuURiRcp23bwoUYxvJBe9nPiTTOf92lza5P6V+oSucm7xGpgvagP3oJHFwX3QjQxZU8AAGVRnduNKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733073954; c=relaxed/simple;
	bh=gl+p73HR4TUc5pQJdfFeNvdlcQam2fmYiLQg6u3E5eg=;
	h=To:Subject:From:Message-Id:Date; b=k9HnI9P8H69wnx9bOHaP3Die8eGN4iTfanJ0a3jS6RT23n+ELktqxHIpYwcCLZ41UdQWA4y+f43JcR2dkKp5PUHAj0jtyjgRPErzNNiZSDWdTIB60A28Fh65rM+qrwoQM81nMAia9Xq6CW6fnGkuFCcXucDcn53IAjVhVxu+1wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iB2N9LEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iB2N9LEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EA3C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733073953;
	bh=gl+p73HR4TUc5pQJdfFeNvdlcQam2fmYiLQg6u3E5eg=;
	h=To:Subject:From:Date:From;
	b=iB2N9LEa+3q/9PKwkrGU+hQopCP1riaUrgOXe5A0WEBvVzhpqAdHbxS4zMWdI5pTF
	 p1NDuyZfe6Ppnh/Hzzelui2FseV3MuDaXNki2faPOQjADVNc9OCurYmas35YhHDnwX
	 Fhli1f0L6c9z1CMMNf7Ek88immJe9Y8wpLEn/OSCjVDc1sBUAWmOFTGU5KUXa7OLWP
	 a08tnejYRWBQT9Ii3M15YsnBDFr7UiGBncZ52KbZGbC0riNQcGuMNhbgJH492lJOhW
	 BWhegrdyCAqdbG/uHFwfZHiK1777UNxCLA0kMpnG24RTOPlwQP9gZuUWXsi0MJlYiO
	 tj4YF5IkolKvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28B9D49779
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173307395362.23540.3031571160275952508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cbf9c8aa1090ec79222c1655fb90f2247abf4b5bafcb00372bc509954af77d7
Date: Sun, 01 Dec 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733073953
