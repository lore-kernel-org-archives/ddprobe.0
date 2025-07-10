Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135352253FD
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752181194; cv=none; b=i6J1nM6BHPOkc5sPaLZN8mKlYbTMNEARmABYCyXNF2W3KSXERjoWAw+7Xnq84VuNOymKK+iK7Tvlr3D1QLey/BY3DXq6ly+mxKIMNu0bKMiur1IXIl394uKngwzZ8Tu0mNPXorsWSeiIu3YLVqtPYr73wXiGqiYyhLkTArczJ/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752181194; c=relaxed/simple;
	bh=RKzpzoXH0lYiiYWcTeeTbXxKz5/ZPfOTo/VtkbGNGe4=;
	h=To:Subject:From:Message-Id:Date; b=MT0zdQhNrDJfpdhhd4/859h8Fa9m92zNpvko7LJCn4+VFN3EMaPel4hU2zDxxj1M4TanFNtuuPj42VqTQx/fQ4uZfwNzGkgXHx6x21dB5lebSpGcvLJ1JRSl7afwG2leoAJi//lNv5mtPro/WiMosd4q/4970mbA9jKsHlU/G7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+Qhmc3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+Qhmc3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BABC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752181193;
	bh=RKzpzoXH0lYiiYWcTeeTbXxKz5/ZPfOTo/VtkbGNGe4=;
	h=To:Subject:From:Date:From;
	b=N+Qhmc3RPvyVRUhTRbkuVDuXylq2p74k7IsnG5BtPuKI8QbbaQvLC3CUxp+DiJ/cR
	 +C+GofAqtAA7s0gr/vy2P0rGCvx3Fu7YEDOVIAw7dsGYhN+zXLClk6rqJODv619092
	 yCBj2Z//VRIsVw7Qt/5VZe1ePtD5b4exgPzOK3jxfNLq1Tb66DC24mMtssLeWMmhSC
	 wqHC5rFhPeObrLEsFUXhcNXm7+/DMyTiyRhw8l4AcwcNXJRyJ0lo8iPSYcq9WhzD8Y
	 LovTN3DlFM9SJAkBbsi4L9tIwp3RwjIRFRRIuKq5sJktWjfFz6qsQvdNlTAydQhtcW
	 jm9lHTZlixWoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F382C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175218119357.32595.12869627311427628081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8430e9373038ea647a13e4c2d357f2c841aa4829ad6b6af347e6a47050db79aa
Date: Thu, 10 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752181193
