Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15E03E00B5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788169834; cv=none; b=s965QU9TMFZc+CnFepjVxRhILF6vgQBbQf9GYMHMJ4f9KAt9C2lHNOfKTS8sFU+9aPDSIbwXTV8bP/nE6cOWznsmmxKFjpuSjDvjvPCIoSDRukU1YyOTIm6rdhKl2mNCOmRd9MI2XApU5Nhn9KCcWgub9gPgdjalQFQJUah6H2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788169834; c=relaxed/simple;
	bh=0DdFt5dKJZzSl3QEQS703IxxsvqWXy/3G2058OJlEiI=;
	h=To:Subject:From:Message-Id:Date; b=Yn9P7HEjabdR1kk7+vEp5AH5JXgww105DSzlTrDiq4Ab5MnlsrQ+3HjNLnSx1MpCpmgcr8JtObEfEfMN4wTSyoSr7oEDPqhhbiqmEbIwArGdsbi+D8a0kkOWFwkk2gCjFGrsZ5VXF+SlBi3yi3Iwz8tZrFDPyKGyG/sAyOO/uRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZauA1CA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZauA1CA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03E6C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788169833;
	bh=0DdFt5dKJZzSl3QEQS703IxxsvqWXy/3G2058OJlEiI=;
	h=To:Subject:From:Date:From;
	b=XZauA1CATAIHzx6RH0+26b2jFtH1c7x8CGmJe1a8qjQU9kacKxj8yJ2ou02yOIeiD
	 wb6nVPmGrHBmRZgs4e6D0fvtkolQTMar9wmYbdxnjP78A7jVjIA22uyhIlTcYhMp5m
	 fa9yqugl2Jt4oI2c5eFi4CMI/MJt7Jc/zjftLi3/z82mE5moJV/2yryGX9qu25CQ6s
	 HRdcXgzHIECvrFtrJJ3XkUc6MCIL3T9St9B5Co1d3Pu1eHSE+AsHiHUNUqtKIwPwjo
	 dprSWETPuRw0ZI1QQ2NpiKbfJ7F/tWQtFnkFraCquBbMEIKjOY8a2Vb2PhGK7mgKOe
	 GTP+waZbVXr5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA54C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816983369.28979.2534696166531747531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd65dc5c077ce22fe93f1245144d37449c0d93890438552698093281a3a7ff86
Date: Mon, 31 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788169833
