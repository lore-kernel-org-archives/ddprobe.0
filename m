Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC9E7FBDD
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719903923; cv=none; b=La4DNjap2V4oHOzqoazwxpEe4zslxU13yJeUC9dKXTsMnkaddN0GhlApNL1CfBdM9FCAsbPyC5sIK5QktQlo/iCwagPXDiBrfb3gK7P5vXfIivNG4FsqraCX9+57IqSaigDspuic2veJ3iT4gy1WAuMEpiDZv9UftiSpv5wC+eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719903923; c=relaxed/simple;
	bh=TQUgOnGNKDKay9Wwmce2B/QarKL/zuEkjy1F0KNuGnU=;
	h=To:Subject:From:Message-Id:Date; b=mLbHXza39nY5RUWoMC8OGHlx32FWKthgQA0YLBF32pa+Z/WPh373Mxjpz6V2cA/fjOc3CUOhUG8xC5d5wE/ADeVL5SQAhwKkPSu0uYywwdcJISbEWMq4REKTzpoprS8M7tuK1rqYekNmps/TBSnTxYkFsiVI59YNId4nLk14ObQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGAZTubG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGAZTubG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6649C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719903922;
	bh=TQUgOnGNKDKay9Wwmce2B/QarKL/zuEkjy1F0KNuGnU=;
	h=To:Subject:From:Date:From;
	b=QGAZTubGnHg4+zZoASSpjZrl1EG9Rri+vS+3z0gHqwl82RRfJZAvaknJc2mT1BxIW
	 RMjOQeOho8Ulc4PUYflM0bNzJenfsbrQHlvdj2iIDL70bzB7fl+m5pWzYFVBGvklvC
	 dKeGD+I45/eeXgkRGhJIg4IIfXHJPi0hEF0rEvo60uG3ekjuI1o+0c8qJ/40Y3xR23
	 4BPYb1Sl4flXCK69/otBQmPL/7zOjIq2iOyu0/5wPxlixQSZn6OEU6Nb6u6VmaRZCW
	 35aZ9PTRJ8zYQFrc7H3WlbQi1orR0TPo0iQXU6TeWVy3DSOhrS6ylZ3XGGjQeiuHso
	 xeoS2RAiGtRxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4087C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171990392285.1531.11464397588541483780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e3f3aaca7b3181f4e8ebf34fd87d80aaf5c8ec2aac39bf551d3e32c570bbb0
Date: Tue, 02 Jul 2024 07:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719903922
