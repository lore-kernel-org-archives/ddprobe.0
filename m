Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E243229CE3
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709643497; cv=none; b=CsXXWkVwtbrRogr4714o8sFDuME9/QJ9dkPol/htKQ1KX/dp7v/JlhGVqWL7hfC1H5A8sQIEuBXAa8unzDf1/K4q6NPEHxOspqU+ksfRAbDJrfA8RnTptu6n4033/lnuEHXxdpP1Cixc7PKlpkhhBKAC4O4ea9njyZXT5dzeqME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709643497; c=relaxed/simple;
	bh=nfMEU6L/V7OkRbhu3QCcBFPjJtnTrI7vivDKrnbQdEw=;
	h=To:Subject:From:Message-Id:Date; b=mAkJtowVmE65RFCx+a/B2f2sViSG2b37tSiz3gZYEtYEqpWGs/x5XPpLqcAJ0SIyYJCCPE8HTxseTtMDD+P+pp0UzWknIEZaBdwcqF3QuGTkaSONg23VzyPCOJZTBcVIT4yA9eMPSD2714lQIV16TAvdaO7Bd6mBJfTXWhw922Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aa2shxPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aa2shxPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C4CCC433F1
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709643496;
	bh=nfMEU6L/V7OkRbhu3QCcBFPjJtnTrI7vivDKrnbQdEw=;
	h=To:Subject:From:Date:From;
	b=Aa2shxPbbbX/M0oiyESiPS0xHFhTYUCC5yfrGjcSRVGrfqu9auIUrEPlugFlXMgAe
	 kaZiA9J4VN0CHlQ7A9WuPr7dnw0DzyLRp29qiJajM7W5XMJ/A4d4oflG+W6iWGMUHD
	 HRKpgdCtD0yRb+kdywlKZFXH9xebbebgaI2x0zmzhs5OS54IPecKJgnFYpa4o6gCPt
	 NxV8R/RgrTnvUPNViFdotRibj+FEVU0FlUhHSdCUYPGUzV47lxn0aY07UhlRvfrY9K
	 mZ/4Y5T8bA6PWqOLUWU6zu8/y5S4J6vRGaen+HpHQMwU7beyEZn+BiEee5bQpBoHcH
	 JJKOKbhMuMfsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A85C54E41
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170964349638.22129.15232716187393899892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23ba427daf472b42a54f826725bfbba18d8f80852fa80b1f2ec3b6b2bfe7127
Date: Tue, 05 Mar 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709643496
