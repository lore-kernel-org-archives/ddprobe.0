Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152352F4310
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752661194; cv=none; b=fs3iRdywT7CBtrL9mZpiPV1YSfekCXsbwFJErYzGcjpLeDf7MMRXkvs9TzTP4EWGU/qExj6dEtKfzvrg1RAqpB0C2Mn/EGoOkcoOvSoM/ZONiUW4BCN6Zt7+1GWaoBaYnBCELxAd1KInSIjYzNcrRToIkXQpmm99RID+kpvrTzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752661194; c=relaxed/simple;
	bh=AzEW/lHtSixnZGK6CeNnSHDrgm3Rb9QpQRvGo0ctebU=;
	h=To:Subject:From:Message-Id:Date; b=gsMs1O/PxK6FlYFRKEr0Pb3bZlUhPznnDkSf7GCSetfzhwcKXxqUTe6CuOfCEjoC42/vTQ4H4SIEH9BGNOXsCHpOflZdgE9/gWgxrll4DpfRRQTswaELXTSI5ldVEq/g2fWbGC6/yPtz59lV0FS8hse5bveGm/fzAiFT00f209g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMm8IQsC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMm8IQsC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB52C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752661193;
	bh=AzEW/lHtSixnZGK6CeNnSHDrgm3Rb9QpQRvGo0ctebU=;
	h=To:Subject:From:Date:From;
	b=LMm8IQsCw8F8Av+59I58hP1lS8Qlq/G1dK6Euj2jeEakuaMZfcy92CGoBq+dwiYed
	 w8vMomqqK5EKAWco41Cm8suEys3r5ArOmfslUryXrJUmddhdATF17XZ34GYpchAL+B
	 OkekyLqQbz3iKn3XqroNLkxcL9mnuQK0cfLOtlKfZiMD9g3k6vjHUdi4cL+aAHvEaT
	 a9Dhp59EbrCTA9eCB/7dJ4gM0MMZagh3aiT1nJxhKpILJdlQygvXYiv0RUe+9WRhnS
	 B8bpj4tmJcGPpCePwB+SxanYMkgEPaEZcVMchgJjQgdz8BRbN4JPyEbfBDR0ruT3/1
	 B+uwC4AVWD6VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9042BC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175266119358.16358.60798746549697681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aca2a9893ea5df268279b10f023131ecc3facbddadf8d071fe48a7285e2c50f
Date: Wed, 16 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752661193
