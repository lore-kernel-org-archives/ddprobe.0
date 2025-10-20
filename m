Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88651EDA0B
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760984393; cv=none; b=K/NJwQwuBtKJMunfSp+1vjIGyjqIU7AGc1GUYblwihOASjamPxP/me2Q63994eLdv/3AJT62vmW5EUB2kCvKuZpIm+nEMfEKoKHG3lhP2yBNwJPaXVnIDaP1Vf7OcuvQpzZeUL0b5D3TKCTKQ2FW8eePNZbneoPBhhz4yXONkV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760984393; c=relaxed/simple;
	bh=5DlvIAUkcv25+RCgu5TorHH8240nfnUGkb96ndHMxGk=;
	h=To:Subject:From:Message-Id:Date; b=HRSijdqBCnjLekAneFtXOcuqgbZ3Zu7XlkxgseCO8zmrihkYJvN7XRov1+8E9082dJoAK5sfjWnS14xYotyvytqm9vZITqi3PsBqkAjmxJUZ6Rv4QbhUmbXuK39zH0+hUNUCFR/IEvkkrRZfjQaM+9MgHa/uo231l8otTDiehYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOwvtppx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOwvtppx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A18C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760984393;
	bh=5DlvIAUkcv25+RCgu5TorHH8240nfnUGkb96ndHMxGk=;
	h=To:Subject:From:Date:From;
	b=sOwvtppxFVO8CO6PmDMFJcLf/xfFBjUe1WARy39KH3XGv4gxQCQ+yWn81jJ1dSgWb
	 bUsQ50zSa0X2RtBygzCreLHhJI3vR6QV5+KyYI1r9yvr7bkyppNyeqYDxGBM4pSzSR
	 iG1nLJPFA7oSFfYLv8oYx1hx/cOGusWHkwpu+XG378nhKyipcCNWVQdxLpPPKymH1C
	 PnzmZ5UjzBXVL2JTU36q2vxQ+c31y+0PO1MOfU1HGp3G/sFjV5+bCxvtfxpUDYprPH
	 /zYVDMTSFL/3XJJO3E+w8IZw03CcXMBz7K8Tkp4AyzvNBl1HoWV8Fe1kMR9EP65kK+
	 9RYNn9vZil9CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90161CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098439358.29965.18212559639100378701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7c9b4d69e0240c9b4f9ac5d5fca52f8f09363ad75c53dca469719d74c6cb0d
Date: Mon, 20 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760984393
