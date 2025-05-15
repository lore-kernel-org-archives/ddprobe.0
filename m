Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA15AD5A
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747283394; cv=none; b=I3fRgyfgiRRuee96cCCpWwW2gE3axqcffqvneG4mBIZinz/OZ9mI7rN97sSzGE9q17NmczFOuEb4D6uA5iC1izDKOiXp7ukwKiKfiNRFgIDVjymIyRBC8q468gTw/UjFFjgcmoYKuFr2M4GWrHmCuSfj1bbv9VNQPijP3gCLJUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747283394; c=relaxed/simple;
	bh=p89ldgU6CUuxya45Rc2d96hNJe12OZWtcLLbvyEhiYY=;
	h=To:Subject:From:Message-Id:Date; b=CNSRDMqWq3t/UuuKBdLCXs2LQJ/GZLkaEWNVhXcZIh2gPlCkO6svp+MJ/OPcVg0dGOLEfy5XFxNXDIhXGeKzZgzSnR+IXw4nXQVmn7e+rEL4k18oPQf2Xi3GWiuyA0m2F8z0SIP1MwSqNnDiLYWu3s//IkQm0quL6W5CCNMmcFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBb2y45q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBb2y45q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BFDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747283393;
	bh=p89ldgU6CUuxya45Rc2d96hNJe12OZWtcLLbvyEhiYY=;
	h=To:Subject:From:Date:From;
	b=nBb2y45qQrlYgCVkGXylEbqM9UcLzeHX8bPXnJHqXY7xWthouFsnAdjzAfm3cgtdR
	 BBQZa8j3C9qH/HqMok3uxsAJYGZeefbwnyY1QgLN9iay42TwtWHaS2Xal2L/FOsh/k
	 x3bzs2EOBJntoKp35QcZV0Nesso8T9dvzYnrrrYNfUGUI+P8YkmsJGLrkFVNv7bq82
	 femyUBsFNQU2U9tiRhyP+MC9ToMAW4PglVA5WNukzN1g5fdZBlkSL1HWzHYKv4ae8w
	 c2ljzyjFaxgbmhpAOT5nKoa+g5Qnbvmn3EnJgttF8NlLkFM9NUcevBI8XbYiYQEEVw
	 hYS/e2lxOPMUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF4AC3ABC3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174728339357.32607.18348064083532516412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f45031872cf5690948ddabd271eb141da4a393bec89bef283326258e4f0fca0
Date: Thu, 15 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747283393
