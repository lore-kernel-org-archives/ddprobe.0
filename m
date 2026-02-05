Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146CE38F92C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770284634; cv=none; b=ewEWOWEb2tfic2SoT+5woaxTyLwzqRCJeoOq5VczUYdPfx32cwD6C0l7uvoifZEuoZWJ7HsMDoY3kB5q0MyeR7407+9ekAaF2gdAcAurYrWApB76Zf72ZizPpkVMFHVwkHL0btE68ZLrburM1uMAowOfbbmKcMzuHNyyKuEQpXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770284634; c=relaxed/simple;
	bh=p/sHX5J9DkCnY2oVTJwRn4eNHVJlbZxOtxmN3eRXe+Q=;
	h=To:Subject:From:Message-Id:Date; b=G02dT/cGoW6W0h3opnLq1m/5sb3PkCaRULEFjCu/oF7jLogFGs5AEvAYbSqZRyHxdldZqJp/KIqDouwy4DQY0tbXOhEe2eRTtSrgh/IkPqWepL7w+P1p1CpmFiUM6GeQHWS0nGqXeun2RqtRUqTaO+1FAfT9LuYGtpqmooAvRaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRb3T/B4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRb3T/B4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7611C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770284633;
	bh=p/sHX5J9DkCnY2oVTJwRn4eNHVJlbZxOtxmN3eRXe+Q=;
	h=To:Subject:From:Date:From;
	b=nRb3T/B4HJa3jt7lKd14aSd0BKnn0vAIiceo8AXv/5YxvMAMrhV9YFpOz4+DKqaBk
	 aEGCc9zSLa6+8H9vljc/CJOaaohK/+K8zlMJ2Vt4dz62rZt3ELSWng/gj/bG0D5Bhr
	 bekR0Y3XCNQbmyOTwLEgLxBtPaSJbG5XRsT+H3Fo+YJMca7xvNuknRDmHJWavZx8RE
	 JCSzMzVwYi6xvADB5TrGtTxh+ghGkOv4/ngXScn/svhcg7Qo8KR3Gy8zjh8wXBpa/g
	 JIkKtfDEaYAUIMppANpUcjEQpLbqmJ7Iu+WyOX82+9O08QPb/Xi50tFD2PQE6eeOFi
	 ybYv8dQo3TNWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97729EC1E84
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177028463359.13352.119438549345974756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2eb8748bf9832ee1d423351953a3335cc2480a97ac885c79756780184678ad4
Date: Thu, 05 Feb 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770284633
