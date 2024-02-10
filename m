Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D1A23DB
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707555497; cv=none; b=Hh4GpT7KrFS55RH6+FitkX9foYOkmvwfjsQR1e1U/C4tVA2vplh7NatbR/1J9KsxsSq42uHhyXwTxA5ca7EHEkfpav0/gQFZYMtZIvLnZN33uBvHGB5C6t4iO1ErOwk/PZuflo2n9A3CP5FuiabBzvIYVdxSOIUbStIc6PtvAvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707555497; c=relaxed/simple;
	bh=mv5RccGAHjVVDtRratK7x5eAMtO3Mi7/x0f4VWk/82c=;
	h=To:Subject:From:Message-Id:Date; b=rrEcruxPfj2DmW638ZAUz9P/IDFrCXpon4OCSnwcp0orFCjlCX3jrdUMcL5+k3LWxKKbLZVSyA5ej2PtH8etbzF3D5gjOOr75owtViWkUBC7Cv2DhRzwDEjInk5SyM/XapaNkzxncSxxmcdguIoSASjMtDyRlJZCqbrIL7G0nos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwXsiJNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwXsiJNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84920C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707555496;
	bh=mv5RccGAHjVVDtRratK7x5eAMtO3Mi7/x0f4VWk/82c=;
	h=To:Subject:From:Date:From;
	b=YwXsiJNS6ezDGO7i0gKjLua1RYacRVNt1b7K1UlkWZLCUrw3V1lB4u9D6fWrmwFaK
	 OVNnYo0HN7s2x3UQ0zIwEsOdJegsiZXluqUxGzTI/BsEzLlOTdZJlkX3NAdhtdxWO/
	 HS2aVDkS+GnJVTe9162h3dfWT2STmEbU/ZSmBIEJFu/65OjliPAtAgXolM6ejIEOd0
	 bALEMi6jGT8caPEjYda93VikO7e2DiJYWkrn4KEsyE7DZC8jT14O/NSDQK8DLBbz12
	 oSp/KM4StBZIdiW85WbYlfPeV5u9jOZVacCm6vZzliPDtCq7sd8cgZCl6vDVOTmofQ
	 6F0AhnZU8eNqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66171C4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170755549637.12916.1995925614788913055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0280f3c7f50f7bfe539ecc447af3ef2b399c52c5cfa8325479590b00e5c9cad8
Date: Sat, 10 Feb 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707555496
