Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D0B5361DBA
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791595834; cv=none; b=acYL/W2AX72WIRy9I99pRc9QGUthK8HJkG0hF80PCKge8pYAeWXe6tbxvuOIxwb7FtAcZ/ayxhSZ4qdkBfmdNIrvxiCB/qVZcDoiS7D6VfHGP36Rx3MI3bIk5WyY2qQX+kIMBjCdqp1avKaqwNw1nKIwZe6MMF1WAzjZ5B8Eg/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791595834; c=relaxed/simple;
	bh=faNq0O86Y+fMxLg0zjwbo3q+DjMugKUW3gvAtF63K2Q=;
	h=To:Subject:From:Message-Id:Date; b=W1X2w7OpxsRIFNNMa8EzQhbYWBGj9Esf3HJbaP2r2qU1/mqs3/6UCbGAfHX77dJzXHQkVxTSTcbnIweNsPBCaSuN6+quMcnjR6Mj8ijfzVpv2e+HNj/CFJacK60/Lx9v3hkvrmaNlBU5lxzDcRwJIl3gfgfj4lseSqtEt2IA3N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcP+jEnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcP+jEnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E74C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791595833;
	bh=faNq0O86Y+fMxLg0zjwbo3q+DjMugKUW3gvAtF63K2Q=;
	h=To:Subject:From:Date:From;
	b=HcP+jEnPEy3MxRztdvknBEpJ2cG3OUa/URx57hl+xD+sjJhwHBq4TlgfDaEj6T+61
	 7RGRN9S/F5HHAhO9TJpDFwllm3KQ+u4EoES9nNTQ3PvNmJOXNKEzEpv3wuYuIsiONH
	 dHedJHzMT2jqJhUf2ajwtyGZv76uZ40fg44CedjT6gh0/kaLetfTJTeNapAmR1Fs/D
	 yxdRm0ZOmlvMIZXnpX4GcTENH9xem8ZkSRbKe3+XzFgBtX445COVA7yXqI8QSOgkkM
	 GmudK9VeZcLpYO6AHzeM1pBvn4sAIMar4e9jjKq8AzQcIbK9Sq5BJA3qJIfoNHyxUp
	 /Xkv4LezLMWEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF472CA601E
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179159583368.12564.2602172223530160829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f31d8f022f160e64968de7eb02cf5119992dacda2cda831c6e04f00ab0a8ac
Date: Sat, 10 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791595833
