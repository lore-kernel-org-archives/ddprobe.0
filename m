Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3949838DC8
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734302154; cv=none; b=MAABYZrCGEqLP/lEiVIeGrJIjRs//s25bHuH9qGCb7qUengpkkQ6d2G6zwC4LyFJagIAnzw5kxwrRNfLBg8/ccXi9VZYMZAhbpYRCetWFz85gzF5cy8565qyFNhZcxEgKJ3bNPBFvb4CLQA/VPkd43Ii/7eghyP0H6DxMgzYOzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734302154; c=relaxed/simple;
	bh=53+XIFp51n5FVC5Yamlw7Q1Xrc5JAmPRAo9xd27L5wk=;
	h=To:Subject:From:Message-Id:Date; b=kv59zbxK2VSe+bG4P/LVj0kltfLNJ6G0ERlfPDwhPHP9n1YdOZB5inyVc+IH4UenmfPZx8fF8jmvKpxgAJHnU9GUCFpwZGOpu3QBieZuMewFhEFgj7vpk1oIOiAzxlCKUc7nVi7goS1VGGP8Xzv6eqxzRWwAycL9MIA317LVZsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6ksOPd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6ksOPd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5879C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734302153;
	bh=53+XIFp51n5FVC5Yamlw7Q1Xrc5JAmPRAo9xd27L5wk=;
	h=To:Subject:From:Date:From;
	b=M6ksOPd7OqHM9XDHNvzmBlNhtlvv2mGYBzMZ7R7rTlvGo9I+he4jql0oOWrkvTpjr
	 yFttx5QLDe0hf9oktApXCGA6afnBcxDlybzpnkeWlkFYjpXSxIPow4JvC6qKvwDBNQ
	 DiSBAlW0o3A+e139LmzKesRYjdVdvAyiiDf0xARXYcQzFIJZmEpA+Le7ZtksBU/lgW
	 x/sL7RS+iqFuy/TdlfIG7kCOT0RaIUn0qZDN1MqzzsMX7BI+5+FjlE8ZNWn4PpiatS
	 aoQdWAEIQn8TwesyNOR17gOV2HI8NowgsPhEaiTPot35CxGUOUx/DUNI/4XkGYUQ9b
	 P4Rf/ywJewpPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02ADE7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173430215361.6737.14198546901886617948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f244587ee13be5a19b00d3d0c5c922fcdc571675f08e472418aa79fccf8b5d6
Date: Sun, 15 Dec 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734302153
