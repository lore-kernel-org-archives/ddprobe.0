Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208F313D638
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770266634; cv=none; b=ak11dWVY3hiTnEc6y2twivWxoL7Kh4mvtPs1ryJAsQuf8hVH7FoehVqBMYNInTA6IOFfYAOvlq5vKAQbPR0/1hDs0ljqLKcABffaOd9ZII9CwE1A4LtmNpv1xVfYYRXBcdpO4I3g4LY731Stt0YPQKgopExwF4OYON8o7+g2gRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770266634; c=relaxed/simple;
	bh=gvv4wKLXnF40oJtvCNpdQCogxsFk2gzrzs12SG1/tkI=;
	h=To:Subject:From:Message-Id:Date; b=S5OroZ/KQwOg2wBa5ZSCUgfLNEQS77xITC1yejlh7/1LlQ8nyEDQEXJ4mBhh1o8cI5AQehDaSlBykVMt0RTufcPDoyPqfg3pTY0Yac8vk8ZoEKvXAU4bO+uEGmMSx9Wda0PS/SIuAP95kMTBT6MveIWKcwZzJ1JMENQKoaw6QcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djhw2rpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djhw2rpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC893C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770266633;
	bh=gvv4wKLXnF40oJtvCNpdQCogxsFk2gzrzs12SG1/tkI=;
	h=To:Subject:From:Date:From;
	b=djhw2rpr4EePytThyMhMnlnDn9e9K//e8bpFRPVR9qT7DpbRDPYk2rY0NI26e0VE3
	 ToSYfXmPHI+JH7ZUP/NIgamNQ8DIOZh0Lj6Mbd8M8asu3QvAx/eKC04OrXT0FdbhoH
	 6Y9buvZkFzWlSOM6cl0igS9rXvfyOGX1xX5nqM4jSpTkFG7waXUAapeXGc4j1rPu9G
	 3JlcDq8WCXgAXzCyNdlPsG7yDx/5wkwIPhD7wvIUrXliVgeMQGQoErdKKzSi3BVM6J
	 ynwDyr0/vFyH9x5JDKNVTepvAvJeLDEQonnqKaUWGaxJgxNEBgdgEmzeAuX3etjgnz
	 YE+YdO8E0SnUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982D9EA7967
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026663361.30153.3564639550924353299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44fa19ba89a79f981555200ae1a9423f9bdda845ec148555479046705885e69
Date: Thu, 05 Feb 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770266633
