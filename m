Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D1D23C9
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744001994; cv=none; b=CS5y25QbMwYsLWPwRDpPNhWN4CXyzOnn1jliE3BdW1ATcHpC6edNzup2Wkk3N6ODBHuX6ynJvAGqb9XRwpPXlIXbOs8cLjnoVoyt4RIsA6UsP9NMBt+Voy14F+e+to6CYV035vLiD0gklcMnb+pw4IEecxHwl3rxwENp+bR3Ni8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744001994; c=relaxed/simple;
	bh=RHjs9Ls+AzamD09O4WSSXIqpnBYLawj+QXxUklBEIxc=;
	h=To:Subject:From:Message-Id:Date; b=lCzcHF7GAmM+XgIM3fliduITJNMp/qAnx4BYq5jeLNR8wyWIZrmq5QDC1qjqtIPncWlLieT/nQ1dVXPJFbdIcHyjIYgHOVlanF3oBGCei55KycfiCc3ECJ0aFVHb5a7oK/fSJ7mbe3LqIBE9kawJL4X35ZNTp4z4db5bQBYTjTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W82cUat5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W82cUat5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F40C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744001993;
	bh=RHjs9Ls+AzamD09O4WSSXIqpnBYLawj+QXxUklBEIxc=;
	h=To:Subject:From:Date:From;
	b=W82cUat5bS0jxxtfVOngcQaTOSRZ/bDSKPM7Quf3D39ZW8zUKQJTcmth4QZN3ADsj
	 cEjIIgwPRpzQrjxYi5aDloM2umQOvd9aGo6H9LP0p6F0JqOfE3oQ0sGLQmtMMCwYrz
	 ns138IHrQrywfa1nnfC7+ffgZLzvHQFT/iJn+iUuIhxjN8Bzhcp+mi7YfrFaIDmP8N
	 GNeC0shNEPuc80oNFo9n0IYdkmkzrz4T3PtbsO8REFjTVdUf+AOEN8O5Wx4aVqXkgo
	 5X7QqzOJPnr7xVldY6GeXkmzKyVVGqg3gkUgMSe33CVW4yVfmBNNnelEoP6iM27exQ
	 4YqHLZtXo1/jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BA3C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174400199359.10155.14306331875307112347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f37fb4d139f77b597c9f0a713107986e1c77e9716434b732fefc0d9a41630911
Date: Mon, 07 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744001993
