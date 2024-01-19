Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9FF3C28
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705631897; cv=none; b=tBQjy1UMgvbK4QObps6y7fQYS9sQc7EBtVcKK/UwRQekP35VnFpfs8rqfMm7NgHDL6any/v8EAx+QPdMSUmk88Ekzd4B7MSvaW1wR1Vtr6mIxwflz4i4P6UhLx63AFr7CJ2AYSPacVo9MMoin9CTQBJjD9w1CLaVXPZE2O22lxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705631897; c=relaxed/simple;
	bh=TTS/Qn3vK56f3lQpU55PDhL/kcRaJS/XWUhfog1ap5k=;
	h=To:Subject:From:Message-Id:Date; b=g+Sw2wcm3MCbOOIcLd+OABJmJc2ww1uBE3bawol6XWmJpaB3It5ejKfO8mFRM9eyakiscigTR+wcGxxpYnqmdkxhYmzUtOVCoAwqdvtljXr/34R5sPKWlFmFLJgigUL7zDPaBmvvBBHlwv5U6G3okXC2H6i1Cc/QA3f9oqOpqhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRmEHv2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRmEHv2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA35C433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705631896;
	bh=TTS/Qn3vK56f3lQpU55PDhL/kcRaJS/XWUhfog1ap5k=;
	h=To:Subject:From:Date:From;
	b=oRmEHv2fmJMu138rF3EMdiooVK2Q/jWLht6/D1UdczDIrlSuu//lXjdUXMA//VhJT
	 AkhtxyCZ1+GSZ6C8WEYAQQCJtFGA4DM0EojAS+CYCacWoWhBVlTUUodASnrO7kq2Uy
	 aEZmmkJ2LDb//lrgmk42JkqiK+qw9+9VC1YRyMDZYD0fHN5WcikMEn6YlCrQgP9CrC
	 zMOoozEvIoNh77uKBpJFdH8mX06GQDCvSIOLLyQ/oPeWeWxPmSiCw9ur9zr8ti257u
	 ftx3DjBeuhI3gRo89GzwWINXgpQiAF5izcNj5tWlIvLY/L3EtQgsBuZGwFfNOhxt9P
	 SoAtRx+9ySrUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60279C47422
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170563189638.23171.16734186012223557792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a4f77d93e05265bafcb9df6fde9b40fe82ee0c4f5d0fc23b7685c2270144ed
Date: Fri, 19 Jan 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705631896
