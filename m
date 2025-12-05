Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0E6398FB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764914574; cv=none; b=uTdiw60O4EQgmO08NN0tP4lq00dNx/j8KIOVRulyNNnZ4WaCts9eiYikgoIrlO6TWPpISYFh4szU1gQ4Y7QocftvZt6+Jb45J9hhMqKtc4KUiCe5gXZV4aKCAE8T2T4hjaSzsmYfQ6H1qX2OzYjA3idqc0EO4F+tL+Yn3jPicII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764914574; c=relaxed/simple;
	bh=xvtyWZVLUjlnv43b7CFSEkfIpRVecIPXWNpsC6ZmMxo=;
	h=To:Subject:From:Message-Id:Date; b=X6fxACThwmecXytqGB1IWd18OH3np38Yg14Ltqi1ID7pGpo4LIWBo0PAkyE3CGtLAdyeeVTi5g3MlxOYOqxPZiNsQXgjns7HHhAgbx34DlSvoihFF7WkzG8VCtdOqfdjd1DnyM2Jxwc5woGr87LszJ63JRAEnle9c6YkNc5lngk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnAdJOl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnAdJOl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3355C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764914573;
	bh=xvtyWZVLUjlnv43b7CFSEkfIpRVecIPXWNpsC6ZmMxo=;
	h=To:Subject:From:Date:From;
	b=YnAdJOl+xb4zuvyIHLBltdEz61DPy8/7M4TQBJo7A78O8jwb86DtVDxd4Z3JLn+Lb
	 Cq1Rgr03u9AfaHbX/wvz3iRY+u8+LqjROmYyoo3iu5/ziE6G5h9YKGxpJc1TLtoyRv
	 m2z9LrXX4WsXDjt7PMsbDEX/3QRSVifSdUUJRqRsQNavJVIOFsx291SUeT6fyW5ykn
	 xC3ahVWPA7qlXM2xQ2qkowYP48bApXMdstdBMGE+ny6tlQZuXMW1wpUQh+54gZvBIT
	 2FGkMVQVy5X2mzULOw3Xph32XzceTqy9pg+iZNKMRQqMUfm0j7Sug+5Il+VQhb3rTP
	 Mc3lO423Id72g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918CCD2CDE3
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176491457358.7441.8317976299517291148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf45557c5b3d0b6b516fedd31ace8d81994189620a82a3e168a4f88edab950c
Date: Fri, 05 Dec 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764914573
