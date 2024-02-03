Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BA11640B
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707003497; cv=none; b=BiS4SlsTw5zXMBeOepB5/aq45h/jaAFnz0nybrn5AWJcLUw/0nJH0pBgWxwwCS0XNxSqFFcs4rUccUGXSImO9Ancxx2U+kHg2DMJQMveUWKyBpJcHZTXv4PLNcZFs9D8rbGVYLDRpNhNqQbU9O71LRpCt4MgkJ7e8ECnDSi6iVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707003497; c=relaxed/simple;
	bh=3YZRHQs6oxtKT7I1e97++8KEMB0nWxbGNQ3XPUdgVQE=;
	h=To:Subject:From:Message-Id:Date; b=PuojkFhNjXnAg2LJDxMxUSFxT6DLwTgHeTmZ9YmxNJoEiqFNCi7b1unlkKJJksIc0rQRDwzwkaZfO+mZtcY86k3uLQQ0w1cnvfl5vv53+GjXFWp9Mgpz2sShOfoaz/XHcUqi1K3lVkCBwql08pgrXa7N11PLSw73kl8YuxhTWEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=no/qmq6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="no/qmq6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A523EC433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707003496;
	bh=3YZRHQs6oxtKT7I1e97++8KEMB0nWxbGNQ3XPUdgVQE=;
	h=To:Subject:From:Date:From;
	b=no/qmq6pzEb1N1gOWAeiS4uEreoM69t8+jzs3GKoKqj9Rqhi+nPMhsCHUf2eVpYpJ
	 k2qM1JYy/o3vpAkOoOpght+2/U/109Xy9qp8KpDam1NLeoNEaMBn4jI2u11bkObvo4
	 hBLZA0diBr/4loHSJaX3lq+Rv2/BWq1/c0eobxZEL20QzUdp7KwTmcMFswlqv18XEK
	 v1q/kzMnftdMAPrN1A+v3CmezqshL/K610ljQMp3TCySK/hd4OZeyiey+wGsftmp9T
	 aXl5Fapl4NcuMKhrZT6SP4ILpYp6LfkHJHtwRjczasQhuHnXa4d7isO6FQT+rbPH6T
	 LH7NsOcfnrc+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75625C4828D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170700349644.4333.9814958057608705096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c27ed8970c70086f95552c5294082d3e954bc133117fa53181cb272c0d94a582
Date: Sat, 03 Feb 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707003496
