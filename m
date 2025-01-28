Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A241BE40
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738073754; cv=none; b=pfo7zLPgFNeCkwolcbvQoASYx0CVyFTitxyz83YZ9pzzE7+ZIOaWr1ZWhFVypwY6B7TeAl8JNVOFgCD34v+jE1pTGeKPCqXU9Zj2sBWygDeyP8aHzhNnUE/Bp8gnPhCEZ3sgTZkQntlh662plXNeoKd9EQi03cZIuRTI+RDVo9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738073754; c=relaxed/simple;
	bh=ZsGknPdRMeFte0SLkpXDu8HBpeJqghR9u4jxSqNBg7E=;
	h=To:Subject:From:Message-Id:Date; b=tdph5Us9SqKwKbFThA44Am7WPV382y/lhg/KGSIo2EBCD18fxR38PrU4SdSDrxrjaPWso+RL3VT9jhaHQ+TJGxM3e7jijcbdyf7NMBoFnHLGGV8RQlVfV3ew/AdYDWUY9UgDmjxHCf4LXxHxUPhzdh8uBsQimZfDh6FT0GPtNj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7A1G0Pf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7A1G0Pf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE29FC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738073753;
	bh=ZsGknPdRMeFte0SLkpXDu8HBpeJqghR9u4jxSqNBg7E=;
	h=To:Subject:From:Date:From;
	b=P7A1G0Pfq/VC1QELDNyfOQqxNohSpYo9vCSiAkO0os2qROkowOjKxoh1NsGO8eufh
	 gYRo05EFiBvVEQlQdgzmHyftzubXaHTUun1L7HKqkZ/Zt+8jsrZKCHx8CbFlMScMKz
	 KCwxEaiJKg8S/guwUEbwvy0gq1FCk26JRXOzwk2yXWDk/jrarDb7HZWNan8ABE7UxR
	 Puvh/ipyltMGb68zCZPNZf/n/v5IxIvqjLvsHRSznEa/1jx9E9m+IUNr1FmRpI9/Nk
	 mlpULb/nWEo3Ovzx5+RD6CZm6yCFf7jHCrCStSrQUYhly7ZcNN+0580XkFbSG8h6/G
	 0OAP1mHWBcWDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB93FC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173807375369.13319.9913228954743740928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7995e5c3156f1267687443012167f797d256b5cef810c70a6f3e1512129a971d
Date: Tue, 28 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738073753
