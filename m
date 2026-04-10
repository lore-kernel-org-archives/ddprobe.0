Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E8539F192
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775821654; cv=none; b=OhQaWKc2FyBS9pE9sGYYtaJsYd7t6Ld3myP05/f9B/ZJTwDshBzaD5kYM57N7kjDo9cG4uwWpAon11yPQxGj1IabhhB5jAjqAXlG9kiDE7PxatW9rBDsnwfXtG7uQtrc+vDFEDL37ILHl+1hYjGvdvO3iZhYH+yOhRqecyaOdNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775821654; c=relaxed/simple;
	bh=k9/BTjbpKdqftk8Sxn4M1BMoQE2eQ3aKyrGCRs6gsB8=;
	h=To:Subject:From:Message-Id:Date; b=eMP9sfCO8q+As1fywqBN2b43D4h+NHcmuBM6o+BRS262umtH7Vt0e2lhO1U46kprLDXb33d7U9d7G8I/HqhZuYpiPC1J2+08iFj5yFsNZ/2Ls1OrbifMAL+QsPMyaoZ7Ify786Y8UPJR5cHKWM8tctz9prWqm+kZTH/naqsuAWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnyXDyy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnyXDyy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB83FC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775821653;
	bh=k9/BTjbpKdqftk8Sxn4M1BMoQE2eQ3aKyrGCRs6gsB8=;
	h=To:Subject:From:Date:From;
	b=mnyXDyy/6g+O+chU99WVLSPePhwkna5e6Fz302TPxlH33wejd4JQny0R3F4KOJ8JP
	 +P44ZMD/WJHQdBYAVpAkWGwZyllzFpZy4FaeuJ/WgPRwh+R1yxoDCxNZMEloM5g0nF
	 RSTfnJs83Z+/dPvAfT/wDOqRX5+4J1yAo7burjKmyyR5QPOuF5+q3PpClaPTEioNE6
	 dByGZeyFiuYmPA/S5FdW3JFdtcfre+6rv8EZ4FZqayVoZ1FOY4EQw2nGZ6/YIH1NrM
	 Ibjae6wscJtfhl+u0VEIp29BQQtS0vSDwZNUZLDZPtcIfwz+X4ECtn94L7ws8LAa8+
	 ALLj8U6hKgjuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95BFF44841
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177582165368.15303.10236276007459504073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd110ad504082117591d89c91070225d0f504a40853d561e55e5ee5ce48fcd7
Date: Fri, 10 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775821653
