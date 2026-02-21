Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362BB329370
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771640694; cv=none; b=ux2HbjdsVK3G9JKwpbHafIYHHP1IYtdLnkOOtSnLoweM8wPr3im9GAQwJZ15zxDHjWbADawQwh17qNmEG+L8DpN4OzSzCUfyRTARgbCwM98z10Gp2cgVQH0hyimqKFBRVSRJEbIuvxSbD0ec+j2VWZsF4aiFz+0tC7JR2uV7Sik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771640694; c=relaxed/simple;
	bh=hbqKiXEGiUbzicDG5h2AC8TGvlg/VHAKlFwpbt9HLRc=;
	h=To:Subject:From:Message-Id:Date; b=kvwZjD9kHZjypYwbcaxgBFG6mC/uMVG3k5xFDFb6M+prt6uWGqHgexpwVi8xvBCEVxJ8m1XzF3mElnWFdHivUQHj7IyFHJRDVyo6t+VDrGH5ewNdLAcuF5g6PqerGyB88yFoLEMx/nKVXGEjNJoXxfo/NnoFenr6UTGbW4R8B8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1BokIac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1BokIac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65E9C116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771640693;
	bh=hbqKiXEGiUbzicDG5h2AC8TGvlg/VHAKlFwpbt9HLRc=;
	h=To:Subject:From:Date:From;
	b=e1BokIacDVXZtB49a16rsImxrLMPhIlyuQkipJ3ljz4hLPRXGhRrfTjtLUsASm4Bw
	 7oGGBy1NhcFRyJvvTuX/b7iYwNe2hP3l7geLRsbPn+b00echPNgOKaIX5Q0RST3G+D
	 i73PQYThzPGKj/XAOx30crygxbTtgdjjLK/t3nm5CRtp96i7+JaRApW7zAX2yHhpun
	 iiJ/N8qvPGX9Hz6r77JUvtSsOc0Md1p1nEO7pL/Mp9yZteMiWxeeVMBilzJpzy6Bq6
	 MRqw7emFoZnKMa+HC5+GkRol+89Psb89gkGQClcFSFewwLMnHV8okqXHBT05g3UUGn
	 YIU8EEzEGOb2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6650C54FD2
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164069358.14934.5707772888499457392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec40711bd15747975095eee9dde9b2749c059fd4788b34e0657b9e40f5933ce
Date: Sat, 21 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771640693
