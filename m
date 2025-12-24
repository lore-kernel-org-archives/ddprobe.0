Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD3F330305
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766570634; cv=none; b=UgguhbgAFxrYbYG9twvNqRc0BCAvpDtksPDSUGkbXH90+3Jht35W5ptgFW0A1xaFqSo5a/+OD1AM/uIZmT75H7xgAdvPqKtXRacQf654NwhaFqohRspyvJiszvX44+ACBIJqJVpExOOValoeKkmztqFaNGQnDEE0DP5M/k1g+dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766570634; c=relaxed/simple;
	bh=A6oVVwXLzTXJzIUWP3BI8vW5qJWOo/IhZZtOR3L4YZg=;
	h=To:Subject:From:Message-Id:Date; b=F0c8U4wi8uGc145kxVO0f4kUuSHk25GkRWYNvQZjrQI9FVMQsETcyKylFCPfSUodphD+bA1tPivTIYLQlCdkaqt+mh7pg3bqAQfISYPkKCV+PfrWYuO40qwrcuopE8LMb9h7yJLZc7xsaMOwjgClfswq1S8EXMWeISURAthcbW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPN9W5We; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPN9W5We"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3147C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766570633;
	bh=A6oVVwXLzTXJzIUWP3BI8vW5qJWOo/IhZZtOR3L4YZg=;
	h=To:Subject:From:Date:From;
	b=nPN9W5WeelmdEFc+I7zCva9MaKWfXbFCaBVw00YJ2ANexlq/U5Hd7bVImWzZulurW
	 8STDSigMKENh1PxEriCCkzWJP0fHaQ1ZnhUcX7Wp+KTNA1EhgUr4TMfCKZvrF75ygp
	 FPawBY2rPUgtdBKyRarxzC2hyLEO1nDxUrOHA/NF6m6Ldyv1Rtnh8yggLVUyf5RHgO
	 59DzEQ31GwbCh8mNKXDXsepvFarood12k3AFMCoQgj/jQTfE2kyQieQOV4W/iRezkY
	 MDG62qIZIb4yGAerrAS0dABvXZPUVdY2Vh/8nzr4Kj7+wwIEl4yrLi2txsQfeVvwvL
	 Lx3P8/g0PTQdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BD3E75448
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657063360.26626.11167886472960956997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d840259d4e61ec77f96eab9b5c9f9c257345f62e6cbe39db883639addd176e
Date: Wed, 24 Dec 2025 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766570633
