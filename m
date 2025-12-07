Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1282F39C4
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765150374; cv=none; b=a4deyMPtAtADr7hlPgxZKN8s8sXZG36W/cac043N92yDENLfh3VLU8gfpm19szH02uvdhWE/+JsFPRqIwjpjh7076fpu5GsDlR8Jy6sOQyohHVopNkGk7z5dA0Ih01mBHF9Oqu4WjasAd2HRJ3Vsfp5K2xxuHCpeT3ei4HaH1BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765150374; c=relaxed/simple;
	bh=uZEbNxv6yYr0rzABEmDUzpRDpQoTcaSuMsOnc+jRK5A=;
	h=To:Subject:From:Message-Id:Date; b=i58QpmPRrlFjEELDWNLohSB2q0C3qcmhglaWsWtnC0EGNNu+ekhfAEB6MaQ8G4bcljv8XG87kBERwJivP9Haa1/KNhO+3qyEuWtU1suonR0wBv21Z/XHJBr8TaZum6YZSCMsnTojZi1tOpXM2tCuArIKQu7l4BNOlL2GcRzmI98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlfgZKdl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlfgZKdl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5FAC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765150373;
	bh=uZEbNxv6yYr0rzABEmDUzpRDpQoTcaSuMsOnc+jRK5A=;
	h=To:Subject:From:Date:From;
	b=HlfgZKdlxdFWxEdm/O4W8jrW62yMAi2aYeKzrePsORfeVswb5QGDn7g+ZCBUjUtWh
	 OA2q/kJqCS0yc/ntfQKkE7hLEVYilitdF4WOwU6T/HsSt0VfAryL0jfwrA72J5tqba
	 nMGFEf1zHFNxRy9sk4hwUD7TMOByjlxnMrUbRTUEj54KctJmaomqLprfEKacIf5hnS
	 tlpD3Y2AuZSYsvgXZM0JxTpORQ4/WUQiZa7QcFXNRew0p3sZnPqlgzTGxwaIZWzHE7
	 cUicD5qPqsWHq8QDueJR6HNAEkHCFUXjUKupsdSiMkElP2VLtZ+iiwDABdQhQJsBbM
	 mHHYm7rSs8eig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3DBD2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515037366.15766.11183241796753655814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 421b3414c2a717e21c94669393d38079d6b48cd7ec2f2922f8facc2d59cd9b09
Date: Sun, 07 Dec 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765150373
