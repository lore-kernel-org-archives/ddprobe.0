Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E09483815
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788525034; cv=none; b=b+7tb4NuMgIllo4zCaXioeZS2BJuNglzCJHQWNkCd3aBeVqdaO0FdYuHIbbsbnjcY0vvTQt61u/E+wGFrZnsE9Kewg55tRRc3h19Fytl76a/K5fwB3GykJUeE6HeCaSfTJ6FQEq52MYBJA45Tg4RH9BVVfaEOjAJaywIN3IQG+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788525034; c=relaxed/simple;
	bh=DeIaO0R8JCr8byGMGgZU3IE8Z2nooZVKoig6p2leTtk=;
	h=To:Subject:From:Message-Id:Date; b=STsslz/nhDHeSLXUY8gyM8d0YvCXMLeOLIu/e1LV8gD2af1YyBh/PC86KhVwuLAbPd5POIkvc6SIEoJu9f7W9Y40HbLehiAYHRMnT2jCpLr5jYg1EwdCPLl0o28hoYyyacGpv1HgX52Hk/g7dE7SlYVrLcn8PiQ/fb5sd2ZBJ7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wmy56Cct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wmy56Cct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32D5C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788525033;
	bh=DeIaO0R8JCr8byGMGgZU3IE8Z2nooZVKoig6p2leTtk=;
	h=To:Subject:From:Date:From;
	b=Wmy56CctBlsj0cmxp8hkXuTy6VEUW56bxtXJ9zda+/q+OiNACKaYExjA3RCvrE53O
	 b3P1ch4Tg3UAWO8ksqBDSMn3mmlrw5EnCE/PeKOEl7vfZpW1hshlZHOZO5szpcxice
	 GCP1Y9KUHHj/PK4+v4brB1YrqzHUIoo+1k6CWb4CKsqw5S9PP6/Bu7lixoKN5NaEd0
	 /yNqr/9H0na5/AJeYfNy4V9TKFLsxyIsi+N2BAoadPYZoy3sBAz/2Z/ARNeYPIQw3N
	 SZ9+thdd+RsGSFUk1wVrxr1XqebUc2ExGpu/OYM3j9ZLjhNhjP6wXvt+sHIi0RL+OT
	 sKbc9vcFioc7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1A8C61DD6
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852503370.27052.1060755838260297742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d35bd5937cc0e43e717ce816587499e091eda68c17a579f5f67d5f5d7ea5e407
Date: Fri, 04 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788525033
