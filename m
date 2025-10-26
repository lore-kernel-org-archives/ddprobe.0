Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9D5221F15
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761463194; cv=none; b=V4bycoWYGD+b7vSeBOj6sCDxnSt056xft32rCKn4Z62SFH/3LmpuaWd2COO//DI7Tp5MH9AgXczUCV/enftFU7rTZR4Nv3dJ4ym12TWylD+BrEhWZ/s3Drz8L4jxPTaljdLw7je/uXKzTXf/cEPXOnj1vUPfNl4Zlsa/OGJ4vx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761463194; c=relaxed/simple;
	bh=pJmGjA+ozmlOg2YYmoe7NR4UPbFljoE2LcRyYAPveGw=;
	h=To:Subject:From:Message-Id:Date; b=tcFvTFeAdX5GW+gyRsNEWKLodN0w12bKGpX4V4XQumfx42hy8C1z+uYwIKNpKdIiCgYKT8+/1HwnMCDuWUv8fbagc8plL+WFS/TqIchv7SahfmieKV8AfcjHazw6RFRyhbWHO8JbogMDrYnHGEZp0nord3wBZGZ2KDQi7JlJzYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcLxz3mM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcLxz3mM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9280C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761463193;
	bh=pJmGjA+ozmlOg2YYmoe7NR4UPbFljoE2LcRyYAPveGw=;
	h=To:Subject:From:Date:From;
	b=mcLxz3mMQG3HoXCTGEEhBFP2vP+hzquFmueQkHN7qW57KUbd5YJm5aSMIk9LSFJMK
	 1XhONmA+dJNzmR1et8DxlRU1hWNMf2FkA3++SNeOb/jZ4yNBUNI/MDUyV0qTKTOUwu
	 glFixKvhA/eXryGuIOSX90NmuaCK4x1NGKLhI73kQbk2Rnjf96X77p51wij2+sBYK/
	 6Vw4y3OBJs83p64fwjsCBrg9aofrEhyh//7pJwP+lV9PRC5tmcMf1Hn55QmGN2XqED
	 uKxdcRqceTQHG1cTaAHveuedjVKlp3LTiTS3qfnah7hBY2eHHNqL60GyzEmkIGzUZ3
	 NwU8OArNVX+8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94555CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146319358.19335.14694414615032250468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d1c6362d701ec1693fbd0c403be6ae295971e8743dc8f0611d1eb7a7f571ae
Date: Sun, 26 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761463193
