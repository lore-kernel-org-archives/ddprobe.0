Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B73F31D726
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757087395; cv=none; b=nF+frFrpgFxPXFiBCQ4FvZymRbB0VL8TyJOMbhxOI9sjnz+CZRJ/DIe14h2RVti2763cvfjRhtrvLdeAgiYF9R3qmKbkjaO4MqQ2qnExXre/sHfXC19CASsQrNftp9oDtjilEU5t1tzltYewoRMI1HzaVWsYLw3xOdmq/xEj5uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757087395; c=relaxed/simple;
	bh=tHE8tX0jKsOIx9OTlTRUXOVyCc4OoztZWe2BLP0Hekg=;
	h=To:Subject:From:Message-Id:Date; b=FtimQxU3HT3VR2Ewn5LPs/kd7S6Ig7CjLYqNOkvAcYpxopBVspQFhsbJUJ1vU0uBSxgc9rxQ5OnrHCXSxTfPOYKDDyXgVouhP+MrIrUbqDLDGeel5BdsQCUELAMmL4ExhSPpjLPPeHfTpqIi0jlozHIdVmelp/e22AsSRgrrXVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMtuIXNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMtuIXNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A737AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757087394;
	bh=tHE8tX0jKsOIx9OTlTRUXOVyCc4OoztZWe2BLP0Hekg=;
	h=To:Subject:From:Date:From;
	b=jMtuIXNHnqEANY2IRCcTZP3F73kgDeu9E11C1OvhVDeSMDY+stpyKLV36lzN8CMxe
	 lc76QDfTXWw8ySpm6IRWH38Lke0B+4bwsA10DvoGXhaZxWM3xKoqYC19gj8c//oCkg
	 PqLnP0nidPI/6PXAe/UFzBqZk6CTzfJkqa61yyXOQek9jPNr68YwZlH6lTggJ2qdQ/
	 YXvSjfpOgeH8xZLSfmzM3yU32nK8Pq8bHtVN1Q8jblQyBmhS9q1v9S9B6MAWI4iBly
	 LU9LarKnjqJ4INt6KMQV3h/suChg0FrX1XL1kZPNnI0rHkOegQXSmqxSOJE6LYQTpV
	 D+rD/4fVTo09w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC54CA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708739358.3914.5863424479054686556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3f7d33f20c10b44b9d88442c0e040eb5a861b4ac015a3619b05060adc16f42
Date: Fri, 05 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757087393
