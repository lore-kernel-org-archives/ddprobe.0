Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8086136F8F4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780265674; cv=none; b=rHe1IhvuRKhrrzXgGqJiWSyg5kyzvNqIOsILqwNowQg5fvnO8ZbXoQgtmJwyHHVFUGLg/05byvAYQuN7SModCd5GBJzGYYNb6kOL7snL9B/xK2lm7dWnd2wh8Dn4MRnUpw566jp7M3MBTlkNBnFr2EGSxMhflctO/8qUYHufuBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780265674; c=relaxed/simple;
	bh=inmBG1D2gOg3yktbGfyBgtVSbLhscXJBiAIfO1kYkLo=;
	h=To:Subject:From:Message-Id:Date; b=DwuqlR84SZDp3hqz1NJV5qS6oqXTGSkEjRQLdIuNuLanYdFtvrvx9JHeAyG3881tZKNRw9ZMCAm9B7MWqHA+zR6YuD9kNR3haKxWRjTQETUJYhhKHzpiNYVJy7T5T7uNkMbfFkKRBBNFEZGcJQZzqXWPGTu//zQLi4aGidzMia0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSmUZEL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSmUZEL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDC7C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780265673;
	bh=inmBG1D2gOg3yktbGfyBgtVSbLhscXJBiAIfO1kYkLo=;
	h=To:Subject:From:Date:From;
	b=HSmUZEL9HH3kHM+1mtyceqZr5yh6BRIDYyziWxJBHJCJYxd/9q3ULA0gohSUfxTzV
	 zj774YYY6Wqv2H2PQqxkU4c+/mGq/RT+rn5EjgP+RXb+ibIOm8j52zxnrhwgCJso4n
	 WWJPLPTeBQsjj8vi6Gmuzb00vxbe2DT00tlA8poVCZJR620vA0d5Du4lyHfNMPyWSA
	 PTz9CCZKfkkapjl4Grw9TPnJsbli7nQnqehgOLCeapIEbiMjLpGajFJd4hsDJpncI3
	 76GsY4fXpiGfBeMf4ZBz3M8XfuqOt9e954+8rGKsr+MQ0L4A7Dq89QFqgPb5hhnTR5
	 SNpRKpUSsGsIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02BDCD6E55
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026567370.9671.13561807273277803712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f393fb2c2e5b0e2b2d5fcfaecc3e37c448b6d48bc696a5d8ca5f40c8bf45ebd3
Date: Sun, 31 May 2026 22:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780265673
