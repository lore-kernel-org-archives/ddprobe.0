Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321BF1FBEA2
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760732394; cv=none; b=mSuc6pk/zuxs6jCiCoci+oSuOq5zlzr1uUxVptpc7J6tHy6z/BY2c1Xe5Shrw3/R5Tnk/PJfIB4mWbOya+7NiONhE8V2orUQEH4GFAafKObuxIrSUbmkxmrOa1GAegAKj2EKSycmxSKsoaoWklfLJf4uKWoib4hPIoB8b//01k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760732394; c=relaxed/simple;
	bh=0FTp7D+VoYj2aDqwayhXD7JgSSfw94bC/wU6bvz721E=;
	h=To:Subject:From:Message-Id:Date; b=e5do1KaXtPHgu9fkdHJqHsPGc/wJ+r2bha921Ha2yNUp/gkQStispsEThabBXLCfhLIq+6qwrNoKoFzWwv4vCVecnhL/trM3Xh7ceO+UT3oBRsLfhxTaIUGIRC5Yn0p0oyDbGsr0GXaoM7BjDVxlDWw93RanDwh9y9T941A080E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpQD8gZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpQD8gZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77ABC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760732393;
	bh=0FTp7D+VoYj2aDqwayhXD7JgSSfw94bC/wU6bvz721E=;
	h=To:Subject:From:Date:From;
	b=rpQD8gZQ+qyucvb5LWEprAJlctwMnGIpIqg0bStdrymMOka8AJSzRmhc0ZEp8jA4N
	 6T4BdKvW824EO3YwFNLmg+L6ezuUk6Gb8ndKEsThwizYa1R0jtZDcx3ZAMq0lPum+F
	 dMd+hsZNDW/PWUMdcZJKc2v9PgcVuvprUq7n7TgeKbp8U6TxyWul9wdw2TbHCIcKfe
	 CYVIOLAPjmD/7JwyqmfryEUz4mzLPXQUraB9JFIoh3bIqkCmD/91kKh7Ef0QfQNr80
	 xOKvxOvRV3Z9Ek2x4XKnqE2snhuASjKHlWXIYbzqZGADwhe7XrbOhMkEUOg7doW4M2
	 pm4vGmX5vy9hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9218ACCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176073239358.30586.11928952668076747379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc75056ce2145162615792e36626aab7a74d2bfa6da75f2893692130b90426f
Date: Fri, 17 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760732393
