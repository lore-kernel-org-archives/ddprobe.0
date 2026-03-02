Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4181B31F9A7
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772486694; cv=none; b=nMY1sHbTlG6aIk+QpPIuU1zcNqxjopHt3SenciBw7HQbz4FTUOOuspr0o5d9hfvaA6Zir3gQ/NV5mrOD/cCKxhUZEFf3FhVu5Qfc4tbxOZvnt4wPqqYwXazUBeMPbElXm0y8KHf9/fh6SRca0kPWdmZjnuXLHk3idFUXxIGHIfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772486694; c=relaxed/simple;
	bh=0EDETTFW8NTChIFNzbMlTTQy1x6gsTbT4l7KVY3DteU=;
	h=To:Subject:From:Message-Id:Date; b=WEq9HNLCK/0konrMBfZ5UJHFLunEsKZUxE9nEC54LNr+gLSg0SO+V4qI+MmjACxA0CsX0VPHTwWOBXhM1LDc39tfFISqc9ibJ+8ActX7kdkNtKlr6RY7OGtAJJ/7N03T9YNhexyPPDAGB1kP+ZYPvrZMSFzf3P+rS/+2jwTgzVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3AGYVqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3AGYVqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4434C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772486693;
	bh=0EDETTFW8NTChIFNzbMlTTQy1x6gsTbT4l7KVY3DteU=;
	h=To:Subject:From:Date:From;
	b=I3AGYVqX15c0TE6TeBq+729HnJL7guomiYg7krEKyse/FJ8WLFlnZcHFWVGR+dTxV
	 kX9B5wn4+FUlOX9fFWwdrP/FhcoIc9/3NFkHr1XnRfS5Ryszz7rBMq4l6O2etNTz6B
	 hC++C45PPSCI+/exwU0YMhoCbW2aTMh5xosYczHfsGdiEeUdeIwAWCtIfXl8kBJRAx
	 VFbLGpBC69UuE0Eq1vPvripQoiKaEHksxpL5kQ8kCgVkCNgAFm0JVTrAsvZA8MbeJS
	 nxPexfpGCfiMYEuKLWmsh7iPBu99gwHCUEWpAHAjnxcBSUDXre8jn8RdbtI2C/yJ6y
	 tLoEa7aUoZBMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBA49EB3636
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248669377.3386.17166366063168611767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73db1fce359b3b92ae73ec2f0eed5461e90f79708a648478393ab456f4290e88
Date: Mon, 02 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772486693
