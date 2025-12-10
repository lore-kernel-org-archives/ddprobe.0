Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83EA22128B
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765338773; cv=none; b=Mt4EZD+Q8awIG8itqkXGgJo78y46nwU2gxSl9rSmbL9T02wmdFQWKR6BSzqYCVMg1UgIUoeNAMxi30mQr85fN5tpRWc/WXLNgQZNYI38/Gavb6tGVhWn4pxOYDCoJaQ+JAjN6EfkFaOAtDHZJaRh39Mc86hSE7Ll3RXFE5dDy/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765338773; c=relaxed/simple;
	bh=B+wEynYveEn6GKsYvisnjzj9Ym6B+VaCt/1vVt24m6A=;
	h=To:Subject:From:Message-Id:Date; b=F924UGDJwlg6PR+aQ4SjwTLVB1MU7qvLTUsMHxsOGEJiyKeVdbm7s5UWZ3C7C2F6MnJ8v+hZBD/oxIxgaES13gXS4X8k2GdHGbErFRCu7LSyxVmN7dKqNVaSyR3vtyDEiAcmzaOm4MxcjNGScvSmxxUNHKysgX71SsGKG03gnCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDCS3H3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDCS3H3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D20C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765338773;
	bh=B+wEynYveEn6GKsYvisnjzj9Ym6B+VaCt/1vVt24m6A=;
	h=To:Subject:From:Date:From;
	b=LDCS3H3W1TkA16IU6RbX0suKArjvbY2euXUndh/yLG2JLlz3RoN4WyyuB1D0y7ooV
	 Y2koVY+BBkSFMunRmc+a4YVpp8cOuFc8Ts+uc29W4w3uCwre0Csz89I3UNHcPZIGdf
	 rxcv5F0nxzs0r35RRgEzSVba5S5V3YhsHex57DvBA9pCEZnV+qUJO9Gce70KZUMOgK
	 vG0ty0uhimJVFtMpqIjGl0wjUtHnEuTT4bc5RHF9rq0UdRZBBnnzVQpZZtOt8avf39
	 /+J13IA2JIwLLfyukRgm4zm9kfJ5TGV/ACw+redHune9w56sziBPrVDAaRysOLzn3u
	 SQlJmbU2AUPRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0200D2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533877363.20844.9196200039302986280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf57392815345809d4f6d830ff297b2c656087b9c92ee4578393ffc1d8e6257
Date: Wed, 10 Dec 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765338773
