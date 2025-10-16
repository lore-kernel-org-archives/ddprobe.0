Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A120227563
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760592594; cv=none; b=qrS+2Myk5A/+qukWngc6tt+Y76TjgV2VVmMvJD7Co6dlV76c0qWXeh/kCfAZwB6DaEAf0dYl/f++Wrbdz06SxL2O7+j28NXaaBA+7LwCn50+xAPW1H8pN1yRz77bRyRFClP6fBVNZ2kpx2Mzfqr+pcitOMo5GTBK+AblsexfmyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760592594; c=relaxed/simple;
	bh=LpqxQ23AGcHPhB8r0yZGgPL7mF0jf+3BMtksrpMhDEk=;
	h=To:Subject:From:Message-Id:Date; b=bZaw4BVJwpd9OG151lVJql6M162RsuDjGxNUwWZvyHmLBhu38H0X1r2jTfe8tzFhRqMufXjHFeaXqilZzHioMt8HD4RqKm9b4pGKzuI/SzN5M6GrrJJsmxvGrGBTqDEe2YtYVpiEdfYB3/fOQ8jQnF7aQ+SEFyX+Zg0MLROYwIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHRdAJK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHRdAJK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC99C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760592593;
	bh=LpqxQ23AGcHPhB8r0yZGgPL7mF0jf+3BMtksrpMhDEk=;
	h=To:Subject:From:Date:From;
	b=dHRdAJK7HcvR2Ud6Oj4HKUTaXnuDQLU9U8lXsA8RjyhuCw/8zfqPGpieTMiMhoFR5
	 jwgAaJ4JTivMaRYvdYaXJqF2DwR4bWE97UiwEmkIer2Jv1KO7G26LjpnHzPAvoTc+y
	 wcXIIrdInrOqq8mz78CbRnlzTCYJuD7pRmgHHOy+WsLtaZ8xnrQ2zeRDBp/eFMqDJb
	 nIlodQRhj2YJ6ugdiikFQz0vDDi5GxdXgylITNATY9TkNwqUtWRIANXGujvbMo785t
	 ygtA6CcKs8pRU6TmGHtmMIyDie/LIti/exwdjZU2nDgSeimkQBOaP3Cy8IuzNy1KJp
	 Ky1z5LFBcnG/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB2DCCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059259362.21251.12231857480541112883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f38307e60c0dd8809d9a1fda9fb1088907142a923621f5399374ccc639d6e6a2
Date: Thu, 16 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760592593
