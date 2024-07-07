Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8D85227
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720337783; cv=none; b=TguVfj+CbSQBBqQF/+5RhKacWX0eNY1ar7KD+tF42DFrgjn1v6HwVnAWFm7iv7x+ISWZPWDniccVz5fJ1tEA2fz2/jx83m0c6fVKaQDx8M+76jiik8b7RIFgae46mNInkPHG4BJIu5hx2A0gsH6MIrrCS5xLlrTR8eyU/tXS0FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720337783; c=relaxed/simple;
	bh=urStaRy7ype5Z3ac9fyXfV/QzHEmVbhOCF17y3Y6aCo=;
	h=To:Subject:From:Message-Id:Date; b=JBfZduP3kWQq/qbg/LswrrCtTLsc/XFg9K3ppC4rakG72+UTnnj+fkGpki8sEdEuj1zAVv7g770ppjiK4Sl6uHgWHyeh/1XRvTkZSjkRvn77AaZc1X73ifrmay5CS+l+rd1IFzm+w9XyuIc5kAUJfMoKtAHkI1apvj4JW1f4evI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kz0kFqHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kz0kFqHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86B7C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720337782;
	bh=urStaRy7ype5Z3ac9fyXfV/QzHEmVbhOCF17y3Y6aCo=;
	h=To:Subject:From:Date:From;
	b=kz0kFqHSD4lav4qNX+E1cavle5SnwzGEgQirTZ/hDObcx/tsa467Vb7MsLo5TPj2v
	 OQoT6pJHwHJsQXVEdq/D4+wGdsTfEtio+1G8hT0p+MLYrTlLJSNSs5ygXXyxt37c2A
	 C33KL7yoG7H7bOweKZu4KOU65enubbQmProc/oqQDgWQ6Y0A1jGD4hJB2GzI2/L/Vb
	 xW86erUmPdMXSKw+/VPWKWQYY9OkY4ARI9lEVaGuAAmyVgmC8KPIakCsctLy1DoYIM
	 Lk7yDRH7EQaGYOKTVVwbCAyEtH99VxnNhn2v02tnnAV3sV5D1P7wog36nFn4FtO4mS
	 3NTwok93lhA5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA38C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172033778276.6051.5479319780458262433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f30a3eab4d55e8d7cc26ea562cee377af4fe074f35eda835f4cb440ac07d5fe
Date: Sun, 07 Jul 2024 07:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720337782
