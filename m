Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216581BD50C
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729617954; cv=none; b=WEYzqUzWd5+qWv/Sgj0iMnKLzXm35yAM8UnQF8uiiNoGuzFOfJ7hXmZMBGhIJL3GOeIm3mKo3N/fcK1D4savhE82gQW2g24IZbwKhvnESrOAybYy/713Bm/zFOPh1e35agCVUzrLW8GNTGcZwOSnTnwR/CNcSfR/M5Jcfek0ihk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729617954; c=relaxed/simple;
	bh=KxloxfOJMvNOy5zea7JZUg6ZZtygz1l6k3kObg4AD0o=;
	h=To:Subject:From:Message-Id:Date; b=LW6KJqd5BbgXIV9WTH04sTCCJRRh+EJjnup2e6EzwubVBZfKqDGyvKYvaKcWfNDmI5BEMACQp3Jz+j15tVPn25uSuISrfzhtsb5WPKtcxzwklf5ewDPaqw7PQYRxQ0GYF/m3E7iaF4YiBdngH8oTS76+iGoOrNNMoj2iSTMlops=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIGKMsaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIGKMsaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BCBC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729617953;
	bh=KxloxfOJMvNOy5zea7JZUg6ZZtygz1l6k3kObg4AD0o=;
	h=To:Subject:From:Date:From;
	b=TIGKMsafkwLKEMIhFmpKxQrKazRmZoo6H9Y3oqhuCbgerPBRxwsnO+Ogqbh95IlbK
	 J7Q9DiRW33t8j7R0CnJggOGLkysa3gYLi8Eu6F5qilGotNxcNKfR0Ks5cHRZ8p6mqJ
	 l6JDxt2orrs3Z/doUSIst7Z73jIDgkZUwAcQYHI+RNBFmWgPvPoJir2ZdGLZLY/sxI
	 O4liblUnQuA6EkCZi5PNdK+MKySRz/1v/hDKav7pkgbVg0QJ+AhjoS1cwjlNmkiCFa
	 v6R6A4dnkbbB9u7b+GDjkmosPhfy/wb4gK4Jd3cdzWlCKt6n3hn2v/kMFsStMDUAnA
	 LZyFxm7dKHUyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973CCD2CE0E
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172961795359.10935.8893976177853283812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac78e20a0af350c6be4a29fc058cdaefa7bbf709ee53efa19e380f4a5d171a15
Date: Tue, 22 Oct 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729617953
