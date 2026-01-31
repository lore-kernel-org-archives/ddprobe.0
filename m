Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BD133D4F6
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769901234; cv=none; b=Hi4vdLhvrjU2V7RL9kRa73Z0aO7h2myPOg8PT/VnUBpmltR8jaK2iWt6dfCvNum7sDUIDbGeX3wlOKvaXKLbFDurO6KfM46lvc9QIfBjBqLK/DR4kXA0VB6uAtdojF94lw2tDjZ/G0+l/fpTVQ9iTnt2JefjkuojIbIFEQ0qocM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769901234; c=relaxed/simple;
	bh=Zam68Y062Pf/HHs2Jb8eejlmQkXnILfNmOzsGFut5XY=;
	h=To:Subject:From:Message-Id:Date; b=W7BHQxxnAPkHELx/i6eXVI0CByb4RNxb0BK8pG2EH2Obfju8gu5NNC++C8NjTzdRIRaKYwWNUpcGQ8sg5FXV2CPflKVjM2bWFBgz3kF0wK3XtJi46PMymJnBF8aCZSTUht/EyCbMKrROuG3QrEKzaS2f9/eZ/pb0gFLRaIUICAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktp+73sU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktp+73sU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E86C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769901233;
	bh=Zam68Y062Pf/HHs2Jb8eejlmQkXnILfNmOzsGFut5XY=;
	h=To:Subject:From:Date:From;
	b=ktp+73sUCa9lkexzkFPA/o3bWqmh4FdhBAp+7rgLqdK5VHbpQQI7gsLwBPdBmfAPf
	 EQR+Wno1W33xN2kv++XByndUpEftJaMpIT3BxmWt4Mx/p8PHLcS8rJDSWuJoIqEeh5
	 /eRiBO/OZ3OryJmnORn16ha1yNubck4lBGXbvVI0NlvZjiLE8bdwhSRXV9vH/YC+at
	 3fUPp2mgxtt10GjxXqWseY/gE1FhbeaMVYJWF1N05Wz/KnMrpFz0sF98p8uHvSMh2g
	 GcY0sQ6r4yen2bWVh0E9+gv4z5IRtPPBI+GkppaimNrVft5kZqmES5wpLbJNcDK+M5
	 OGRH8HUkwRX1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AEBE7C6FA
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990123357.15963.10250059938268914806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c5532f8d84829bb31f74b22eb26e1f30bbe90dd66db0813178dbbf8f2b6d2e4
Date: Sat, 31 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769901233
