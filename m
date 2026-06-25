Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CB61E7C18
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782407854; cv=none; b=N9upNU8pzp/2orEn3Mvw/lcJw8x479+Fm22GK00QDI7/egTLoI7i6vd5k+ICQoON4nylIfV3VNojY8FO6VvlwizXiiNk14CwJzSWDnSknWaxu70bXzb9XkrZbblN/hTKF8GAKNeYZGlBiQ0G1Lsa4dHBcQQvuk0zbotLf05XQgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782407854; c=relaxed/simple;
	bh=iMrvhJTK3kuodeQUL/XUzfJLlqC3KBrdVMNg7d/lqgc=;
	h=To:Subject:From:Message-Id:Date; b=UnI7kf46SoeehlfFbzZDr9+iVPBTcSJngPkppvm5DCHK3NJSJpZ42JctR+aX3VZ1Q7/VsrjFsXWpZQHTPIcFVcrpcfhZfOeLBAhjMES2I+D3LyB7QdHlVoxLFq4TI1dAIYktNAEaeTktB9j7Vhu444qXM01NbWLF7HC2jp+dbNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlYDjaEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlYDjaEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9CA3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782407853;
	bh=iMrvhJTK3kuodeQUL/XUzfJLlqC3KBrdVMNg7d/lqgc=;
	h=To:Subject:From:Date:From;
	b=DlYDjaEGiRu8Ew5/Yqp2cB/+G8vAvLfmTlHEcisCgh7z495kSnRloJ3X+nsNfpXSl
	 TF55sPBbd57ZAmZ6poiJL8IanmkrjaDy2QA/Wm3ApTraqK9Qkmupc1YHrmPhjm+A1l
	 EjuL9ppCaM5WMQm9h20dxbz78C2oC0hHPL4uVbjrC5IdTc6e6eKdBV0Z3wmki59swm
	 ajaPFdGIPLs41Rzpn1vnUk0Jnu2Tt8cgqIfyQ/Gc1bADO0LuA/AVc84D29fuGeu6rR
	 9JIUxXXq/mZJqmVk1JYgeG1tXR3vkCsko7uI2DfSnZESyFZPF3+jGqvY+YbMXbO5tQ
	 AJ0FeQqwhe4Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F11CDE001
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240785374.20611.4569439744492400253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f919f7107a9282fc2f69f6e514863e66692572b038467e76e557c8d2981ccd
Date: Thu, 25 Jun 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782407853
