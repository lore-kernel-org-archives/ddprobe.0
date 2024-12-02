Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7EEA50
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733116554; cv=none; b=KAvsLcolPZnFVp63PPlXX0ZnJwhMVyTCETEy90nzS0j2sgry9UwzOfsxuyW8H9f8hMsjuQjry9TcfpDWAE7gaYHmsNZdEy7ruV/kIhpB4Zm4Z+pK0zjOAnlOSN28FeHflBo+eab5ERU9l5LwCqR95N68V1gGtSyQ5FGjpDZ+72A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733116554; c=relaxed/simple;
	bh=PlkYCwN3v3D/7iPTUA3CcERI/pW63GaaYUfxIaXYdZk=;
	h=To:Subject:From:Message-Id:Date; b=lIWdbwuM+k0bJkPRoUXco7MOG9PKs328zhPwY09ZUQJ7oZG/hOlbWkEJqZN9YTg5+r24pkM+eAqsubFMl2vRrt6zn1ZYKzYLn9SdC62LqQOr9g4epqewWm2LmFBhxvpBF/kF3+CD9iWDDq0cLt0S3sjLRaRwYKCAaUI+8AmZODQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEYomyZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEYomyZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3282C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733116553;
	bh=PlkYCwN3v3D/7iPTUA3CcERI/pW63GaaYUfxIaXYdZk=;
	h=To:Subject:From:Date:From;
	b=hEYomyZMKLGpt7Us2mEVw1N01CkTYOswaeW5cqEUJYEJHdg7jeA8qQFDNN0L4tsbb
	 0iAw3i28AgqVSdzUvTxA1LzopxWZIGpu9Z/znslCFsG0shNcdurz02d79nv3pMIOJb
	 s5LU154ba63Uvous2qx9lFj0tRLJV1Utlu57hG7lIJcDK/NIfTt8zB74DzbpJ1tU76
	 VoJNifRdWQInyjnPw5Bqi8R1GL5JyFplwV9bWyNAgYprX7UTIAOSdk99ah9Zr3CvYP
	 xpvh5a/FIy6Igsd37EVGcT5WoO+cznBY7ic7PGu35GTtQiV8oWvlE4Db18QCDsSkhn
	 TSrFcZT/ump7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE8FD49795
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173311655361.23139.16541474694328803334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1978d99403cae3da4890e4a7d03357069d0992a36bef3387931301bf230c42
Date: Mon, 02 Dec 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733116553
