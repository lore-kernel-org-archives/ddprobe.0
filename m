Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2212DEEBD
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758007194; cv=none; b=LgoDyhVmP/8EbHntdNDaBGQxrlMIgRwbJmFXQoVqJR2LvQlsqCaZmPe8yG02eWhEmtYtJx4d/RpkIR6MYEUWYRF1uKcJWF9/9I1phmaBekhkH0ALmKflb5NqzkwfbBMFdKzH+aD8cR//evWpkC6dKBoOL8cD4RxsoCW9/5DqM9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758007194; c=relaxed/simple;
	bh=jmJ+6A3q30nBaTenPWPy0qqAvUzu1smiXNVLk7SD2wc=;
	h=To:Subject:From:Message-Id:Date; b=fyOqmh4Gp0zUGOvBwJaCMQW7lt6L3NUocWl07Xcf9UWAZzbNsNUzKWycLljmRpl8YcfWxvCmLBv2W8Yz5ffpt5vdsVMZKt8DuAkDQwy1KI7nl7klJ3LXuaye4dVFg1ylxaPb/8nXuReDFje9FMw7LZNQOMnoPfyfcZF5mf0vqWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWgue7nt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWgue7nt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1D6C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758007193;
	bh=jmJ+6A3q30nBaTenPWPy0qqAvUzu1smiXNVLk7SD2wc=;
	h=To:Subject:From:Date:From;
	b=SWgue7nt9hvaw6MWP0XIhRaZYoEXjjtittXMpAHYnkkd5UFKF1YO4rjIxgkBKqHMp
	 jFu2mzzQ9TnUjkGfYMKKgyEDLi8TIf3lqeEL0RX+Xn7SIviBMJr2+TcAkRyviuT+SY
	 YfIPDNFEEnFXiUFvNMzMumy7hTx/3FI4vpjbmWjuDl/VPVjJejecjARmUSVDeJLjkz
	 oCX2/0X2yToEtKfXAle77VL+5HVv428f3uF2INrhy/KGX5/ayFkLpBkO4Txhzbzopv
	 FfzDBM4fmU7F74IKt8NsQ/+7IvEzA8Z8uCFiIL/xEDFtQbJ8gFtUFy7q7hXlCakI8l
	 VuyHYnciMwMnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906DECAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175800719358.12902.55592223669191501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeb43b72758465f3a7f20e3994501a08eec40e53ec360af54dc6cebbc1e0189a
Date: Tue, 16 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758007193
