Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62AE1386572
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791769834; cv=none; b=N12nEU/UHvmOCrW053EUGp7boo5umCLtxFZtwYouRD1GmiGpm46yo1TSwEQV/Q4lczg/E01uC93+/C/8qTSbh7pNfoSH7DVH+30f4ZZmTpIw0TP1qeH4xdBW8bPdnyyRn7b/StsDOhk6NNZ+fds2xflni3zP11g0O5/9+ksiD64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791769834; c=relaxed/simple;
	bh=tKo6UtxO4jmoDt/stsueTgc0c5xzmGnHBDST04wiIoY=;
	h=To:Subject:From:Message-Id:Date; b=Z/s8e2Vez2dCIq9BDE0sWLfpsbQAqsb7fVbxMpw3w30QRCq2+LvS0kbIIBwNOZJDyMOdGh6mrFJHPcqgh4WPs8xsMSlR2SIbfWcJ6AlulV/W36DLrsUltLErV7h6Jta3G7QjVEHxz8+AVBE4kTin6rSrHIQpMbclhphRRrjyeQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdTo1Rcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdTo1Rcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D353FC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791769833;
	bh=tKo6UtxO4jmoDt/stsueTgc0c5xzmGnHBDST04wiIoY=;
	h=To:Subject:From:Date:From;
	b=XdTo1RcqENPztbAiakEPROIwz5n7Zj2zgOnPZr71JvYoIoBBY5Pic1BkL1YpOEXhP
	 LO7NuBZitjoYiLHvJqdq1CJ9agU5O/FqJxb1yc1v3VTnxQ5A33120EP9WlYUhHduGr
	 bfn4Yxml36rE8yfZYSEDJrGN1Xue+/dq0nrM/fmDaos2MM4YH+mmEN313NByJfY+Ww
	 pvYAG5aLaeHPt7nh3e0Y6sAEACt1FLaVlyTpjlh979blsjeMCOU/fYkigUn8yZ3C0V
	 +gxG8w3Ofq/Dl9vaZTiF6wH+SunakgOuGIbVUX3LyOegjb1CNdUijF4Co7R+CxlUsP
	 54vQ3+3Q34GiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE76BCA9EBD
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176983369.11091.9646586324350197092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f9187818d21f5a337dfab081ccee16d068e98e83ef3eb856613f4746a512079
Date: Mon, 12 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791769833
