Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEBD5B1EB
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773452094; cv=none; b=EbPtFtTD+BcspF19jPejApy450FGYnmfa/nYMg0+yinYFEiKODapv0+cXq23LaKoMPjIaFFfTF0VZsQn5vExY0kyzMHgiZAn+pAG/vgtNcXZ5YGWWaSCwgQjScOVXU3L0t9XzqC6myqNuuwxyh6S0aRqEX/H1ZxmLZxUahz1oZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773452094; c=relaxed/simple;
	bh=87tFSFjPJYKRyvP7EjQb0IyOiuclDmAqxKCtkxsK39I=;
	h=To:Subject:From:Message-Id:Date; b=As1cdCQNJusxmba6rgjOu52UWkYK5UYwJnYrpoWBuOLDP6CTtKd3sFUhk4FdffMhSQbmRGl5iOevHxitc3WmE0lgg+I72teNj3DiMq8KNkp/L8d/JLP03JhKzfE5migG/qG3zT5EP49ZJ5FEsThBRRMhK/ei2b3LQSGjsXnEfMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuTSj+2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuTSj+2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9C4C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773452093;
	bh=87tFSFjPJYKRyvP7EjQb0IyOiuclDmAqxKCtkxsK39I=;
	h=To:Subject:From:Date:From;
	b=ZuTSj+2r7RS5WzcWxpCc6eKajk7PpwMazWqmExPqjA9vctFnu+ykM8PmT6F1U3tSt
	 da97DZ7QQVNxD9MtBrLKcDM0+P6LNNnK8OYLF0MCEAIARH8Ko8WhexkPzxkOAToOCg
	 WwJ57jIEushDC/1Dg8LfTj1G6+4C6s3pDlIaqBuKIAANEzjhE7ePlQQjVOLfwS3Zd3
	 CCNQdMMVBbQuvZqmbAdhYclRD6ok4RS2bkj/EOM6rsv0zwdpFZb4Glw1xyD2PXFNAH
	 24vUCLwhksqRzCK55MaEFPgh3gQP2CDMjRzO31ncYnyia476pdtbsdOVQCLOuRZJED
	 13/qJtxdbd6Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F2E107BCEF
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345209359.4030.8462348247303628940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79883f9024be11b38b02a6233795ad3c2168e38b7115f2faee5d48fbfab2823f
Date: Sat, 14 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773452093
