Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5CC2384248
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772709893; cv=none; b=B/4Sz6QVfkPK4AYGJsxxd+kEkmPyRPj5iXAocDiU/wypNsw94gZwTriexlVsAuj3qmi8patFp3GEJH9OWDBKGcbZPvp1uBhcF/tlF6dvdc1/Aj3yx3nUyzuKOnNzalMNznfi1jhIirPLJDfs5C42TA6XT3iA8M7ER7IfPNPyQF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772709893; c=relaxed/simple;
	bh=r7N9jxuOOrYD7rS/y1BFon3/KTV6DKkEpUVX48AlAPk=;
	h=To:Subject:From:Message-Id:Date; b=Mcon5b5a7JVis5aFDz6P69L4ipFUokgcCMAIXp33sklZ4GlRinm54e7hIli51V4x+vz9CTC1lxL2mNgyp+FquexwQq6ebOiOpFiERKltJ3my5mrm26GHKZZlBxFIzcpmmswn24vqyolyBiue8+gCtJor7wWM2qzMTwQxeQiXqqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0GesLQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0GesLQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22EFC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772709893;
	bh=r7N9jxuOOrYD7rS/y1BFon3/KTV6DKkEpUVX48AlAPk=;
	h=To:Subject:From:Date:From;
	b=L0GesLQMxg0JFADt+OnWG1Ubmssj0OmNO/f8dliPTyY2ALYA61gV9LMe07HlPRjz4
	 AB7vCtqdCs4ROVCJ365aaWp93thtJ3Xo2q2TeIC26wV9UElm2x2NZ9PaRDHWtxlZyA
	 88QGjyZ0D+60zHf5iX1PBWwQD92yXoE84cgX98vnwEjv/0RQX5U7sRUVdrMqpi7spa
	 4T64j+qXpa8HhCLsxYLR8ZIoH9cXam38miBfBUbc8wA0Nrx3jnIrk+Uogx7zC9MihR
	 r0/97VPwdqIK/RgDDjfmiMN8noH0gmgqJkAYsOtytIRXsPD/VNwBwUSbiFlyZp26C8
	 JBxzRv5purh5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900C0F30946
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270989358.31721.5874467183669035918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836cccef3588ecf1a4e16c26c78c77e15919c132a55f0d80cae3d10a9891e418
Date: Thu, 05 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772709893
