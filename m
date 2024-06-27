Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A43A1CA9F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 04:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719464063; cv=none; b=NROvu8RNRspJBBwJYk8A5bWfO8UMqLkc1ZpXij238wpQyWRNlx2rA3QCv9dcn6x/9hPhGDPZiQcXgoLZ8MHrWrpp5I760WhbEoYJR6JAACrRdK82UdDfGdzsDRIk36SjCpd2EYFeEqrVSVpyIucqzqF69SKhqyGtx+425YRSbX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719464063; c=relaxed/simple;
	bh=CnT7G7Rz/f3Y7uJfxxQuvzYxZ7y4XozeR+w1JqYY79g=;
	h=To:Subject:From:Message-Id:Date; b=gSbkFssdmz+RvO5xN/e2tiJvPi3dvXbuW0KEMnK94tX+NNqYes7tddMG/hgvuMT/vU7eCD1cJ2BjO5qV3SP+kX+TwZkFnedX+pw+VSJPPNMp75QCur0BLedPkcCpVzYHoD4vFq2GF6BX6AUoB9ns3FDwekD09KUDLOg75utPVkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmJ686cv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmJ686cv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7610C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 04:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719464062;
	bh=CnT7G7Rz/f3Y7uJfxxQuvzYxZ7y4XozeR+w1JqYY79g=;
	h=To:Subject:From:Date:From;
	b=TmJ686cvV87d7KVex702dc8/mJ9bcRJW2vlv5p5zJd+eguzQjoIgJ8OdTNFBAGM/y
	 Phm5lk/xhq1Ex7e7tn66v/ZJZfPFJBX5A9EOXLVaFjqHixtU6rLlkcU70KAbTDKayC
	 8ye+jrDz5tNN9vWPykoY4YZOP/CCAOMJ7gSNKgB3NWNd7hXbIQrjHryemKrslH9Tr1
	 trszSmLNEB6L1+qvXU93YAxGBd747RVDknAJwtMzcT6Q+GKpr2LPHKzPMSHFzEegud
	 m/ALq+F1m0dxK+QRu0IFY0orluBLkzUPGwZw5WNGy7q/avNn3FcKUP+TQGiAMCNLZB
	 h43WeTgvRWX5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2701C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 04:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171946406285.9049.14180909940952093665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2326ef108ee0514c0cec5d7b3535e0bdafbf93dff845a6d50cec3597e55465fc
Date: Thu, 27 Jun 2024 04:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719464062
