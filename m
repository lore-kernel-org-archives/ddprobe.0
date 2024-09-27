Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244B9149C5B
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727436954; cv=none; b=ONfXzR4duRe8oP/02SqcX09buNMePXp/6cPQ3nDyPoagbZCq/Df5uMgl0ioZVycCPqOLgzXHodeYW22BIHXXjmKjHKUKLg9otLNDu35xAyiQdZLIk1ISm2/UfUL2tj41E/OWqOxnDaOOPb6qGAntrS9We7ppvMJvUzDcLhW02eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727436954; c=relaxed/simple;
	bh=fRBKoNIj7AxRoycG/Txtj318WiG+cQ0WmeeHU7nEUyI=;
	h=To:Subject:From:Message-Id:Date; b=jp02zM7YC8JAh592FKF1z72RFicHMuD2zS1V9g7jSQ32psQ4mIRHTFB9XClO8IbWX7E/1A789tu/k/NyCy9wS1JSJe0SI/qva6r20kZrgJHqruFHoGyNqTnzNpmoxdRwTJ2vFbl3XxWTR3iHm+nUnP1HglyShsIKe4R4UZuzF5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+o4jbM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+o4jbM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A770AC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727436953;
	bh=fRBKoNIj7AxRoycG/Txtj318WiG+cQ0WmeeHU7nEUyI=;
	h=To:Subject:From:Date:From;
	b=R+o4jbM1vAMHsy/hIZwAcJ7a7FxjPXQx4QyPZjcueOKmTcYB99LEaFKt8SBYkin2d
	 r7FUwxsuxp0dSEucMNuqU1vzD0yx+nSr3dGIodsZleKmKlCF5f0kEebyIjlFwLMn20
	 ZYT5QzsMOnb8HiF2a5Vx3l9vnCYSsExFIYMKazx7IUnvCg1GJHyV3hwk9BYybXvvNf
	 gjXKsmJG4Niow25fLthz6Nw8dP1YuFgy1E5NncRtgbUITyEOjc6Yop9rydIXqByGZW
	 AdtI2w9kYIFjyfs83BIV0xdS8f27u9VlWuAqkaLHx2Wf9W1dRGMVpp/PVyrls5NcWw
	 Q8rlDEVSsMqQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E60CEBF9A
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172743695358.22495.9436495227501879863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bbb8978f57a4feafb2bd216e4bd50f9bb5e4178e3a46b5a0913afc7eecf26d6
Date: Fri, 27 Sep 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727436953
