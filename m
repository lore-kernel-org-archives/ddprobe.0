Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6909D13AD05
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 20:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721075123; cv=none; b=PPrHx+3/Y1jbyea6JU5NpSJXAOlptJ9PJBuuMaNxLasZArreITzJysiA/68V7e74Os+au8YeTHxSJJu6B4jIb8Vhyp4NuAMt3zSBKfiPlC8Ef0QgscPyHXlc6Yv7hA3ltJWwcUTVDZlcoUIZtx5jWvMRII7Rc0hcHVjZiFwSHDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721075123; c=relaxed/simple;
	bh=/KWk8pYLQunYhK7tZpnj/CJGNgHPwUu6VjY5OaHVrcA=;
	h=To:Subject:From:Message-Id:Date; b=kK0ugE+Nc3EkUUtYmtwz7vk3tOmjFrJ9wOFJ5dm0XxZzsfFqLUu0XE4b6ccfphG7FOOr8sc+PblmTYBeYHZwYZ607lOoT23cDy8uMas5brf6VumeVFhASOZfklQs5Y8plTP9PA177avK3XplQT2Wy1wMIJYKuwza+e9v+VvtNOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNeUFjpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNeUFjpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF93C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 20:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721075122;
	bh=/KWk8pYLQunYhK7tZpnj/CJGNgHPwUu6VjY5OaHVrcA=;
	h=To:Subject:From:Date:From;
	b=bNeUFjpbZ2fJpX8QH7ZAmzO6HBWV6lRuDNvc18URm8cMdrr/2jLvWlwdHmS3c8uqU
	 numfe8fVgzrGNFkCV5c1QcmLjJ6mu5zStmJXB0/m7/SccnYWTTD2t1DZr4Pz7aHlJK
	 jwVzpCCoDVUrLtUtiwlSijb041C2mDwhAlP87WxHcWXpq13QgAR9eF2o/eqQwW7AZV
	 6yOiCopXGei3gAdgGWn6jFr0w6BF7A5EkhNuDE8k5bQ3ArbAGmJp9rjncztNOkeNvk
	 UdcGilYv5yFnLSb82ojCmxMSk8hd71DeqlfKDrSRJgxWLLM2Tkwb+kvxtrqqmPynU1
	 vpA7hrMCL3rqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A0EC3DA4B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 20:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172107512281.15693.9349518428553707436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a427e9b69237b7756953407548fd8b2dea92c2852530bf4fd948f2f366d30aa4
Date: Mon, 15 Jul 2024 20:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721075122
