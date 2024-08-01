Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA5C17084F
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722515154; cv=none; b=nukJwDDW6Ukarl9axwJ48yw63GLvM/PSMtX+q8SquWZtOmO9cChkmDktmWUYlm/F/0tgzNq8lnYwoTVIX+sabQ2tOKlnYnQFI/+H02JDPPvhM9hGPXSeEnc8pvX27A/N4vFNKAAoAz3DO4++1sL3lDMhOpFie/pTbWhSlKE6/Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722515154; c=relaxed/simple;
	bh=rvKXPXs91i4lx++d0YEWPbZYkhc891KGfFMqUitcA04=;
	h=To:Subject:From:Message-Id:Date; b=luuOPF/Atv4WHMcKguEeamEL6O9tbpAmg5/+sxTmHJuG1F8KCgSbu9V1MuiBRzY/8QeI44aP8wyTqenlujCaPnYpytPM1DLuy0jAPCEi0BZ8ObWrIcm+681SoWbj4dtIp00FpdF2cuvACERkzTF7Z5jZP8XAa/db2NiHAfIVOBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMLvmy1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMLvmy1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE07C32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722515153;
	bh=rvKXPXs91i4lx++d0YEWPbZYkhc891KGfFMqUitcA04=;
	h=To:Subject:From:Date:From;
	b=DMLvmy1X9M6atPXlYX9X993OiM51gs3GGCGBbRa3lmftVaFrwl5nujK+RDEQozlv8
	 7lYmS60wGPNHzdHbLFaxib1Isqo19l958kNPD3ODfY3HS/TRTXZzI3/KN8QDnBYndi
	 N+9Xd4mwRi4oXgbL/r25YsMDkuU2tSeSNt2bTCMewFdix9OyyqCsZ3WjiT/vbQ4xmI
	 dEJbe4XJVtiMPnCuMoY5/Z2ld+eMDM/5SmGdyExSfW3yUpML0JkcsnwN6XN22SzLLg
	 I79xto+UJxqvcL/qzIIrBsTQ2F87mnMO2Y25VaSEdDbXAXaNpmxNazU2VVC++RzuYW
	 u4Cm5qnDRMJJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98954C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172251515361.10342.10976533089272992515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7995eba6ef06a429b672022fcb77f0c59d918a0b32696a8062e8f4511095d5db
Date: Thu, 01 Aug 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722515153
