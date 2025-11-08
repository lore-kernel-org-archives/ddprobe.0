Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4411F171C9
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762589994; cv=none; b=ANObAIfU0MITtX7hOVJeo+9V7FxUJHQiubs/aXzxL/eLOG+ijzl3S45d4uCI0If++sG2i8jcAN5IwD4FXlQ7hmRA1Il2Fw1lmBCWXXkinOeV3UwcqMJFB4D6pWAhKNiTQpOsNF69sLY3SZBcBgcHzyfEWZmJuaAMKi9ph2kiwYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762589994; c=relaxed/simple;
	bh=l/tjmVxUTYQSN90HkjxzZJSEC2VCQ5IBdtJM3WILKsI=;
	h=To:Subject:From:Message-Id:Date; b=fxzjk7Cx+ueERqMnSnD/waJ0mYHyz9ToZ2RPfBDdc+IJaaTTaDnRA3HpP6oXTpWV+4snFm6RnY2hEpu4EP4HvNTj2oi3+NfQgy7OMyNIsvjEpwzX0eoR+7/NpijrSOnE1vD1Qb0XEu5TXLwCplrCuPvy4PuaMHSLanr/dVUG2Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpOwMgU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpOwMgU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8E3C19422
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762589993;
	bh=l/tjmVxUTYQSN90HkjxzZJSEC2VCQ5IBdtJM3WILKsI=;
	h=To:Subject:From:Date:From;
	b=VpOwMgU2pNOg3qaLoWCvorHBqJt37kNattVDcjMObpPx70pCTCa3KbYQHbZTbneqV
	 /FBoJudi/wEi5wJg9Y3KjWigzfzywJL7CnIKDcQtV5Xv2n+kVP+GcwFqSybqfPhQR1
	 MBAsD6YWg+JsCHOoZ6SmILAg9YiwZqQQxAVuKQvlPHHqrNcNuREe88m4E1n4p9gF56
	 qOLjEO0PtZxKcCaYPgXo0jWjDPwldO84rNfhAKjNLmv5U70K8Ejb4daKeKLzGZLkCY
	 BKzSQ0LspL2KIfcNovn3z1TZe6uLLP9WLDGM1vZA1uYmq19gsn+0S6oDnX4UtxTWql
	 GyhBlj5TpRIRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9666DCCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258999358.1807.17777285621619471329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232b4209d0788c555acf36a4e9e969654af330b374ab91c60153bf3c33be09ac
Date: Sat, 08 Nov 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762589993
