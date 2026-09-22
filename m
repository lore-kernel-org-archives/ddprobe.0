Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695B8345CDD
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790082034; cv=none; b=tBYuYG2Rubz36GB/rN6Oj4tyCMSe/glEM1FJmwzb2E98RjReQQe7Fic96k0axW2Zrn6eDfhsmQSUaC6YDCyxtrNeMjzAjiY8xO8L66Zp13w5s1NPSXUTLC3xmNU5L8IgVW1hT6FeUnIgr1H6QensG9q7I8zhAvDke9AMi8+4OqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790082034; c=relaxed/simple;
	bh=TDmkoILXTw8zi3T63p+7fB/4o56d5x0LohcZkFx5XRg=;
	h=To:Subject:From:Message-Id:Date; b=VKXK3xm5sUn3O25Ik83oZlDhqrHR2ImhDVgg7no2Pgm6VFUGNJ/9zg8qUjpnDf3d7pPB08Ccgkxo2zH9Rj3ao57a662/xrmcLVZpHq+DzWtmccOn3yv1kQCIyQOO8EgBkvrS9gXb4ObS/6gxeUZTJ2ztWG0N6YBNxRBAi5iRHhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvjV11IS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvjV11IS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5887C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790082033;
	bh=TDmkoILXTw8zi3T63p+7fB/4o56d5x0LohcZkFx5XRg=;
	h=To:Subject:From:Date:From;
	b=rvjV11IS5kCSxrVxyfNWZ2pFC7wgj1O0gVZvJRwIIucAicl3caFmvDq+Y+1EHw9S8
	 mJAkY+WrCFoiCnajETx3czviG1+v8yXNDJdlMTlXB/yQIbzeGFQ2khw8a6oAAMSlBM
	 INHw6llEvMijuELly5Z/0fC++p0nIowv2IwcxWOR2KNgAl+KNme/N+M5MfogT6mVX+
	 rxyLmn3QdH2EtuNl1QXieCMnfRrG4ZgPh/RfYlrg7WxayDdwT1KxrEZoU5z670L80L
	 1PHZ3dHjMhLdjZsEqqSzkZQ8S84mJyK4jhcBzgD8TppNdvo31ezsJyrxocQW/Sg80c
	 jGBoDX6Z1SCjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B328DC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008203371.2508.811122985378575378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0346f86d76a9eb86429efaa73bc5f9266227e5d45f8ae7e484f70bbb55bd5607
Date: Tue, 22 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790082033
