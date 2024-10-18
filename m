Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E37F20E30E
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729210554; cv=none; b=QGFNV9duRzQs4XRFEYwQJUc9zbK5LL80bt+zcAl2ao6ztWx33IpfQiKkBMSpuydn+cF/LVz59JUjalyHNKb4zlxfqyNxD4kEbpZ/QREzo4ffycALgri9s2D5G0LhWiB2o38FlGWjXFHtIMzIBFtUwB1NXY1RnVBSqEwnmdynz1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729210554; c=relaxed/simple;
	bh=mN4fZuuAaU3+KPEMHtBxlnzUhIboh22dHlzT1BB6LOU=;
	h=To:Subject:From:Message-Id:Date; b=bfkHfpx10jb2X3VKx56F3lXb/YQvCwKWTltk79R5pVjMeLK2lViR3aNz3X+8vGaAxDTCdGcHdOkPE20ZR9q+MI2ErAxgPTAKne2J2sOdZm4NRmVwCF0CFITfvcEIuUTgkmsxdmKHtuIBw/8Fjxrp/hgI/5aW0zRGSB9x0nwKumo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOizOiZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOizOiZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7022C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729210553;
	bh=mN4fZuuAaU3+KPEMHtBxlnzUhIboh22dHlzT1BB6LOU=;
	h=To:Subject:From:Date:From;
	b=MOizOiZmXWxHYmCKfi8e7mzPJXbeZviTkiCzQJf70gpgSLOn3LC3sBlYL+W5ZMB9v
	 96hhRZ9xDS1qtNwVso8rZkj6YKR7sibkCIftCQiBc/SvvU3xmqaDkNIBLC+M2yJozD
	 dDyB1XsoZ7kiSnv4keLequNCIjrs1L73+putOetSyHs/xAWsMkXp/5QsdLORCrCHVu
	 IthOf9t1ANKbMYers0IG4UIiM96NpuFJ9mMsI0Fzh236ahVPmGNREHhXVvCfCug550
	 ESX7Vb0f3kJCDHBJYBbe7C4/hXHJjMztK+Sn+QCjDD5jJwtjK6olBBzEqOYPfLa/CR
	 PXp5JVFJmXTMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B0CD3C538
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172921055360.25339.11517098690605429554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bd0556d72738a6891c53c3f7057e92c86727e4114f9407030b9e6b73d6309b2
Date: Fri, 18 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729210553
