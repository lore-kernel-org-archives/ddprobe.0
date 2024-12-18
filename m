Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458C42572
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734482754; cv=none; b=g5i4gBnniFOVhlwocMNLUEzHWjIzbixBXbPDn3kz4z5wx1JoESRPYM8xnMjgmmMh3+CkSODHdNYcZCgXs+c+mMqCbOyhxooI51bit1IJOfepr2b9cDeXELlFghVafkiRwVS/MlGAH7Jv81BgNxNcg27AehNGvStENBbNC9RJeQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734482754; c=relaxed/simple;
	bh=uNJd0pySFkMs1vhJe6/oi8W3tD5SnSH0kkt4159ngrQ=;
	h=To:Subject:From:Message-Id:Date; b=LqV82EiVKmzy7ew+EchjX5Wey6fhXTR6KkK5RRmND+FJ90iTSyMr6Vnym1xPaY/VYy6vRBk8WxuhAkNoRdV/cNSLTLh6Xgxoof5O/mX3BWI1D9iclH1Rep3A4QUl2OdSDikx6BXnNMr0ZoeJZIkZ35wmBuX3G1oZFthIdxlfTMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNxQCPer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNxQCPer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F81C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734482753;
	bh=uNJd0pySFkMs1vhJe6/oi8W3tD5SnSH0kkt4159ngrQ=;
	h=To:Subject:From:Date:From;
	b=cNxQCPerNlgl2x+jAaEGjX0G2VNc4vFi1ZwtuMAnUECC0USLoROFXVn0pWzRS59y/
	 5rKJV/Iti7mI+WdUXBiMYKZQQd0eDKFv795Pk+Md3Ct3qjjoFOc3vMGmw9EoZFwCPl
	 4V+4nhZE31V6935yXD5WWu5lWfQS9gCWB9jLJvigMHUOzWTTY0AfI3NyTWIJmQT5aY
	 mMYhAiA+9shdaIIUeoPDw5Le+8SYM5S7EMiqkOKSMSSXUs1946wZJ5NV0LHp5uBQiD
	 0AyUgGg5kXulpTKa+Kvtw4Ww48IPCafFEPq0EAuFW5rUxaKO7FkEMikLoguaDV/tG2
	 KNFbfKQnZYoRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A523BE77184
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173448275363.6761.7807767569138720316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f503032a286f913f35afde261757999607d12e907a1cb531dd2994aeb0fde9
Date: Wed, 18 Dec 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734482753
