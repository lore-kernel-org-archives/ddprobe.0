Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2552C29E0F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760943594; cv=none; b=i6CJ3+8WZq+ELCK5OgjQitP4jL1r+W9VxeC6E610v5R19XY9WwluqeIhasrPgHchsOxQgu/nB8OO5tXiGPdDdyuMBkXc6PnGaZPd3AGt/z54vlkDec3Jqu19ztywA+5PCsXHlrhT6+GT+tz/xvBCefughCkzuDTO9jWNAB0OyCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760943594; c=relaxed/simple;
	bh=DiinboXzVMQQh758fBhFrS1MAb7zczB1UqahAHLEzSs=;
	h=To:Subject:From:Message-Id:Date; b=iYKKuwCDeNiPBBHD7/01AsA36gqJswtrZHdEWqtImQSRqhkYpdwpWVbZFn16y6/cpvExop8DRnwkQyv9K0oCvG4B0nawbO6V6SymUDFGcbm5x0hqzJDj3muB1T8rPkE5flxhZflHWcSO7rdN1umOTdcSh+rPr8O6ekmgH1VO20k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DD/gqW8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DD/gqW8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DABFC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760943593;
	bh=DiinboXzVMQQh758fBhFrS1MAb7zczB1UqahAHLEzSs=;
	h=To:Subject:From:Date:From;
	b=DD/gqW8NCninkToCbxbIVCwDzEOFjWv4hb7KuccbvxPkISRNMFmQtPu0V3Heteqlw
	 Ax+KujX8fAMSMjQ1ybYtqePAcRYskzGDxd1DO2UxoisKWEg12tkvIWxKR2ZC8+6+KI
	 W4ZqlSLm7IuzkjL5u6P2tfqJI98NU4y3OIcGS40s3IS145INECY9vPgukkDslvfYnh
	 hANhaLarbrVhD/klIIHX+vJz1J6ILrextNR7S1+vE6/Y4DOgNpKKIAFMip8kI2xrWS
	 OBQjb4hDhIMhv7RnZeWmqGVfkMjUJnVx3JgfYFkmbfDqpbq1+aV8gCZC0Mhpz6TDai
	 5H7k+Tny0FCzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F666CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176094359358.9732.729123878606463480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c24db65af102b68f389958c0c81c12b3bec11aab17872004ae1fdb8dbdf2c560
Date: Mon, 20 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760943593
