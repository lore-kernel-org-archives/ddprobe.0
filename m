Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF104F213
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 12:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713788423; cv=none; b=H52K3OwuaqtPyCFMSo7jGrQWNw5Lq64DYtN8oGEQIkyaWlExxMg84ZJKyijT8L1CJGeXVyONtpL1cTcpc/pq5xaMJAFt1LYmb0T7K6Nl7uRWjcHwdRU4KGEcb9mryWu4mXQZX9FIOPThkz7HXRac3oaPr/YNKUnld+I3hJ5tHjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713788423; c=relaxed/simple;
	bh=qqKvREmkKfI/caP2tjLG/F3n6J6crooSftq6zDOt/3s=;
	h=To:Subject:From:Message-Id:Date; b=UjWtadnaAVpfaZbcNHMkhqWjgnujekD/1Vc6W9NgLBvF9zwHEsu6Y5KhGhxA8fX6UTvN5pn9vs72ceBKVckLOPLOG3h9Z/O1U1y5LUYTPobnDNlJbIJRlw3E/njoj8pMXJHWq4CzZ3Yy0dRzweqzYwP971Rmz7/+H6jxye+75ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tq7T8tIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tq7T8tIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02DBC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 12:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713788422;
	bh=qqKvREmkKfI/caP2tjLG/F3n6J6crooSftq6zDOt/3s=;
	h=To:Subject:From:Date:From;
	b=Tq7T8tItBcWJEhVnfe10g86D3W/DKNn7pwoL0AhF1lKt8FF14bBXpZEL/JfWNDvQT
	 3jkgFXTqYNRnfYvnF1StSguJSDczXyttMEnhZ2Vjk0xt+P7E6vba+WGJixl+681dtr
	 zJOxYvmo+a4IwuZ3zpejBIKnM0LbcQtwPzeHdKWsOa7jLONoBhBqck9DlpX38Nlyo4
	 8mxhSkZvXz9zIx2ijKy94HzkW3VqK9bat7fgwvr4feb0vMA2G9j9cEkDrG29HqdsbJ
	 f4nTn2d5R2nDE7iU01KU9e75XizWYiAqPhkCAb8R80clUcO8UmbNsg5NuhjqWzwyLG
	 A+yPhOKw5kuYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9AB1C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 12:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171378842279.28366.18004935546835286123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0838b15647591e31130da60a44c3d96576f9cbca47304dabea266d918887af39
Date: Mon, 22 Apr 2024 12:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713788422
