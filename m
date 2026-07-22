Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC3E386C31
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784704714; cv=none; b=T+L4lqPD1wG9PPGHkOVMCIUXnNgR1lNpmbJPTJ+LxnBlsf+NAEXHyyIcBDlZzExFR9oir5iDAEeAJJAWynQ4yDeXVTslMVaIzJc8A13yGNH5HjoWW7W9wBsDcT1DefyFZ5NXGt5LJaoTdAo9fDbz37rm6M1eHbbZEmwjbPsNjmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784704714; c=relaxed/simple;
	bh=OI/ZMRW1xt8rePUEzuVHmgnxNo4cOoDQOB7b2bH5iwk=;
	h=To:Subject:From:Message-Id:Date; b=PyZrROARyI6wFvMUE26hah5TFAzNks6S9+LJEm9DdB7CxK6TCEMCGf/t6+ZPL3wioQNm0jK03XWEEKPCEVThnZp8KTTGBSfTH7UfbGi8ah57xlezcMm/Ug7p3kufxocEzImXeYVdd1G0ZecU2CzHncmNqojbtKg2bFgyMav+ydw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFOeZnd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFOeZnd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08A8C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784704713;
	bh=OI/ZMRW1xt8rePUEzuVHmgnxNo4cOoDQOB7b2bH5iwk=;
	h=To:Subject:From:Date:From;
	b=MFOeZnd/n8tP4IOWO+euDBGrZxSks/mb06lZearLwWxVl3tC3Ef8SOgFkpD1t3M5V
	 so6DlelxgNZ1aM27s6Yo/OpcSCW5dgCY5jgUySnUCuL3mMtsEJiYxvCw4iA4FdI7ZV
	 Jd7UP8jp//NBcAS7yp/KqFaYVFE6k9QMp08MKGgjV3D/ceYZ0bFbAZFkJKZ95gD0H4
	 71DBaB3Ydx9vhOVjm+DpT4vfWU1NcUQUBRVekKGgq+1gwRQu7DObRkh1kK8BA0eclT
	 xDEX+HELENgQsTWV1I37/5GY6TgmoESb4pIKs2sflLltOaC5v/1gOAffOsC3ep+N6x
	 Tuac3QEev2sDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8EAC4451C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178470471369.14261.12799178990184820064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9bf9f558e38ab4ffebce1b8cd3deaefbac393bf2beac6a80a3b31e42fde05c
Date: Wed, 22 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784704713
