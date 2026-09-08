Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642E837E5FD
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788861634; cv=none; b=Cl/Yg/AjF0fLLbiFOmzBLafg1q0wSbwWW4ZdoehTS+ilWALZYoiiLk0STP51HTSiAghgsSOjwucK/XT6jCmtpIww7PAhK/jCKGfUWiIfgTAHwS3J3I3lzpwlhxIpJTn/zuGNX4F7gTRXisCRugaswnXXL/Kr3JU2z96+lRYKrFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788861634; c=relaxed/simple;
	bh=F3UWKRvq1aDThIs64isahc5KPvS7vFHpmlU/WaXz0X8=;
	h=To:Subject:From:Message-Id:Date; b=GjpB/I1aoWkJfc0UUsj66YbHRyhAyPf3XAt0k5udqsF4MHXr7QOMysLlfnawQXAwAtkGxcU+TAE6KGcJ4nXKcpAADZovQNV3QrL43rKmpS98H+BTvNYdBlIO1wpw3/70vWu5jiiXKj3KcUsk921ajfebOiZ5AH/qo+cuPLlYagw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0EHU9xR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0EHU9xR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2654C2BCFB
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788861633;
	bh=F3UWKRvq1aDThIs64isahc5KPvS7vFHpmlU/WaXz0X8=;
	h=To:Subject:From:Date:From;
	b=m0EHU9xRId/iY9QuQP40ET1/jkon3y4Yh2DHCVB2eKM7p43nq6tJpD6qK6UdQC26v
	 PRGkZBqBpnOIK9L+9DDJs5OwMxhx/Rbc1OfMe8LN4eGSLQwvfp02AsBgh2LnwQdrqp
	 XkgGgZiR3PJVUBpdORsSvBLbPe2McY2Wcf6WZ2VQnj6FFZFfv18cR5/M8tWNoDJL+q
	 sEdRps+nBrJ2Kav09t0DDB/SPSlcYE0jYSwthRFYhI1A1lCrXd8UExiz35nIrMNbBI
	 DeBXdgFH8XlaFIJm5boY375bMnJY8HjXvZvRJqkCsjCRpnYA7f43Pdtum9VsjtsMNy
	 cYiSMLeRPawRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA03C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178886163370.16248.5582692365748051500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9d907edf4ccbe9b29c458ba7e19c76cc81665d6325d4a67a8b06402a883905
Date: Tue, 08 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788861633
