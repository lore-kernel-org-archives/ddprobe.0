Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095163CBE6B
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776160654; cv=none; b=Iqeruoe1dgSZLwchcA7qkeXcoJj7DdLZ7nxYynfq04dP6YoENWRh0+YUuTj2P/GN/7eUlhriw9PwmyuBtitecNGba6xtgBPOWu2f4aqcR6JKTNsyj13K9x7JeXxUcRYJWGYTIUQAmb5PYg1uXM8meMMmsjyAgCSCJNKPVYv3dGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776160654; c=relaxed/simple;
	bh=fLbgIou1YKDqLZV3IHQiDnO8UKilCOksNmofDZkrR1g=;
	h=To:Subject:From:Message-Id:Date; b=kGH4P8CMvltwiakMRbYjI1WmErYFisOtV2458TFf/C7ByEfA6wJaw6FLg8LoPRm80fTLAcOCB1cPfnzkZBW6XCtWOsYlbmncnfr/N1t9n3rgqzXok70vkfnmILdG762jSQcu/l56AdhElL8wRXfAU0D9xu6/QS6fkXUp8NOAXP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rc4hV8Jc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rc4hV8Jc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C41C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776160653;
	bh=fLbgIou1YKDqLZV3IHQiDnO8UKilCOksNmofDZkrR1g=;
	h=To:Subject:From:Date:From;
	b=rc4hV8JcUlbL2RRq7fSsanM0H5NN5AYI8SHkYCPOszrUcsyg1gLk/WsFjfYONr79l
	 rfIXUDvVdiietJFBxBevQzE+9UCsD1k4UcP1XP4NTq8FCPSNXwS2bWwMLv8zqCqn/e
	 hE6p9IVWcmmetAJrgzqgU7jwd7JommZ0oy9ED0opkXrjVWBjtid3PE6hMiB8nuC7no
	 hmpK7Tf7ravPxGGUCheEWx1a+/k0n1v4I8Ug4n9Pd9cLaYmosaUwb+s41yvI760DTt
	 pwcnlLEXY6RttrceyB2kP4epRpE2dDM3Ossf2maks1Vl4rL5NikoUMIM+lB7nU/lua
	 lOElyHi0LXpKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA14AED7B93
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616065368.18000.3552162608853268321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d9dc7e1f321baf9c81737a14fdaf9cc30b21061b854fb1f0689902c0c7c4d1
Date: Tue, 14 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776160653
