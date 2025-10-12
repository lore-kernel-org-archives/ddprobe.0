Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD84215789
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760306994; cv=none; b=k+VmkTILzKWyrjlYp+pHqzaBqRq1ZwCtoGjd6USjqXgVI47sImILmbXJXW1Q1fZQkfNUaiU33bRT9C39Ig4LJV3vrmY6xn0qcXDAuTlHEjG8Z477P5mmDkqTi//6/MMTExKMbZgHV1ySCCodiahVn8T6bBcEP1+3BU9SaWAdbxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760306994; c=relaxed/simple;
	bh=55SHQn7whGn65gRgUjXks7lUHEc+MPkK0HibexkhT3Q=;
	h=To:Subject:From:Message-Id:Date; b=lbjmbZcEY41HV3t92/qsBK9u6J4fb/y+3Kv4Iwu6tBYEXv5e7ZxowmA2adKCOpsMh7XWzATosNWgwdDn1q9ibEAhJPWGWuTetBpWJUL2J4sHMXPVzbu9ct3Dst0A/2TcL0w04jFlQc5KraVzNLcVuFm/pK9TfLGluzXpd89w+RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIwYua6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIwYua6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1C5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760306993;
	bh=55SHQn7whGn65gRgUjXks7lUHEc+MPkK0HibexkhT3Q=;
	h=To:Subject:From:Date:From;
	b=VIwYua6tom/RQy55GKYt1kw4hioVcEEcwHIws1Ea2Z6jRQUhPCTECpNFHBxEC36aN
	 BWvkF99mm0CuI/x5ED3v7Uen7au8BXd5P2JgGqbqraYtGhM5X7IDW1X9BPVlPq0LO7
	 0iIa1AF0PwOwyQdTV65Ac77erBun/O4c0fqn1lmwSQJH5bp2TFxKuMlOde22mEKsVl
	 mOHSl/stsxKhwd2H9NbgrXt00PQtX1cnRtEiD0DmdaqKoGDg/yEtlLmAExq7kYP9Sp
	 22XggxD1qGZguV0S/UOoNj6g/US2CiF8L+vgsU0pl6ZnmwvztvgmGeHM3E6pLRRGcQ
	 H+Hwxrj1smK7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9649BCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176030699358.19151.2340181450356794162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c14e8b5a53cdfa601cf13d20026a078ecd4c4335f1ade829c013eb32878c994
Date: Sun, 12 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760306993
