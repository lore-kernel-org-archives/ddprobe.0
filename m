Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1764C1990D9
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755674395; cv=none; b=h3zLxOf909PeTBrktHNz2jb8GsgEjjl1ADEp3DI4Gas9c0RJlkalOWLXdRAAi1xQuVuH56I2BQLHCp7HIY8TQY7KcopKJc8ilBdFCKAf6gEV+AtPZEgpFDndnaSOzoK9/DS/dPxrxOFM/rF0wjGeOyPS23S3c8E1YGDwFHXnrQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755674395; c=relaxed/simple;
	bh=r48xYsEm5tScbs0kXt+GYToYYYGanPqhWMccUHM1ez8=;
	h=To:Subject:From:Message-Id:Date; b=Unm7RA2P3c5qTOxkhkY4eDw59kcR9inKabc8+mE8RXyk4J8gyDb+IK9XJSQpXJrO31Li+hTXKTkcoPFHurDbOdzHIn5AKwg3jNmk1uYFi0E3ASN7p3oH7mAM/R7VmNczZmtVNhDViniUBK3Qistz2c5N/OoRX+zzEqL5rIaL9Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9KR0NbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9KR0NbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5869C113CF
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755674393;
	bh=r48xYsEm5tScbs0kXt+GYToYYYGanPqhWMccUHM1ez8=;
	h=To:Subject:From:Date:From;
	b=d9KR0NbYzfmthIjVQwyU15Z8C9QumgRysL4Qj/9TdE/bZeosNmPdLTZDDK70v6oPI
	 pQo/eHpM1bUiHa+uGk4SE7QeQvk6comUNjZ4zKxb9in9NKjPhw01za4KtpRm0nqP3R
	 TZx8OFPWlg6pzkYy3ZMugzSFsS5ml/SxvMRai6YdRYHkb/X/mNQwCGp5CgkKEWI4na
	 P0T+KZvJQ8EsBfjp98GoSFUOfS+H8r7UeshRu1gfPJCNK7Aus/nefYPg0kUtdGSXlg
	 dFoy9jQEwzx/6BitetL6jbsBXqERXcGCVy7h2jp5KF2KjuR2Dnt0Ap0Uc6bI53V8BW
	 vGHXUWbJ6jqXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E478CA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567439357.22762.786539203501976012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a4dfd3f0e4383d231f3e307ca0be18ce5291eaff3ca30b8b1c6000afe8bf052
Date: Wed, 20 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755674393
