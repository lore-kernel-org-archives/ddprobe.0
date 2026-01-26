Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4533C3314B6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769426034; cv=none; b=QW28JHpIeYNVKoyGi/9FkGPsmAl3wDZ3Ifain8xA4GWUijTMbkU7YFK3lt5DFgh4CPkkpdiAs+wIwVaqODK/ccGMP8DjBFQg2WhKgZsAosJh5WS6huBiQq8pgHeyDX03e+LRa3nZb9ojyTMGUefAnSuyIVyHKX/imBlPv1uQR5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769426034; c=relaxed/simple;
	bh=Pst/2JlMdsQw0OxClWdpbw36Ewfk4H7mMycYsrfdEu4=;
	h=To:Subject:From:Message-Id:Date; b=KgHK2cNYCewSajdZSiBpLVfD2C25ZVW7uqjFkoomVOWYBpeGALGCyVhTGYU2D7T93fVQFjfqtVR7mYFvm+db3Eke554WmF3l2PVzxRq8ebZchha+d4D5JBfmKvPy+oHujrZnKssozw2fJq09QFBXoajkm4uUv+R0hGi8byRb5xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWeLqWNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWeLqWNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0FBC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769426033;
	bh=Pst/2JlMdsQw0OxClWdpbw36Ewfk4H7mMycYsrfdEu4=;
	h=To:Subject:From:Date:From;
	b=jWeLqWNx9S9mSl0jUbu1Ea5BIYCTaJ5GpL8XvxM43MSqUdiNyf2TQHG0guxGWt8O2
	 ZfcJ+Yr30fe660/djwp9l/oRgjXHoCOpMSPvN/AM1ijpe5MuyTH7F9nL41nxDoaYVY
	 ySHlTTArde7xB+H0AkFzvjeXoGFEAQZt/Ie3CRIHZIM6qph1k/TibeijAjkfLPKw8Z
	 p5JRnBTo7p7ZB4p+zwi+paziyyoXc39worUvGhV45UIKpKH/cKTMhQRVN18d4TqegH
	 OO8CHybnUUWtcjJSbdbI0QvBK9uuvumi6wCBaqz4dGqdVOoEbbQk0Y/3BmsYpfYh3F
	 6cVhs1PDMnoNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDCCCF65DB
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176942603358.21633.11028149247495445325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d171840e65e4bb993b1b2f96d39c7ba9d3310293989d9a1f99cef8eb50cc597
Date: Mon, 26 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769426033
