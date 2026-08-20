Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3904A360745
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787238634; cv=none; b=JyKMrUbF+Yg2tkDMRVmZzSSyptjkRRwtMgDSvzbFoGwYc0XxgrvMQZGAo7BCTg5mmMyzgi1xL0iHZhzwhEElxUIkBJ090cUv9q2CiyIcAnmThLktGvxq/UyGZSNFpTBjefhv4wK09uLNUXf2m9+s9lvGeAGsF3C6hSNnohbfqDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787238634; c=relaxed/simple;
	bh=Q+tD8OYbomxxJyKC9IJ0GGkJ2z1ME6j9j7v43Vr3UZo=;
	h=To:Subject:From:Message-Id:Date; b=RvaTTi5lnb1rz9UqEPQrNcgSgIJb/b6NKbQgaS0X2gDrIjxo2ikPfXbyQwCrIOT32P31FEs/iwPPPRSiXPsPn6in/gZX1yE31uBlWRoDjG7hVfqkYvkIInl71AJpiqu3uVi5hxHiJqnvj9tYuzuTV9j/v1ZgyIDvF+w03s0eEU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7zV00DV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7zV00DV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C82C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787238633;
	bh=Q+tD8OYbomxxJyKC9IJ0GGkJ2z1ME6j9j7v43Vr3UZo=;
	h=To:Subject:From:Date:From;
	b=T7zV00DVYK9920b0zDNCH9XxySlwqDWheccXtoBshrZPp1SfolPn/rdrNNan/VWWC
	 rkLy2dt3PU7zBOO2WjCnqCFjI1B1DBEEq+KyTG+G57DtLXSS43YFcmwwXrda51U6Mg
	 3ST01jIoe2EpRRA4Q70opgUA97qqGt3ku+8tHvjJRrywEEJq2bDbvlmc1xggBcMo4r
	 /tHAt5rlOC3xEFnXl5NFUChOJPps0XCw9Mz/dneqk634eBsdjL3w0eNZh0Zz4KuMlO
	 IiOg4or9SITlhMZ6jQiPerM8uE1BzlQfxRxrdqH+fN8Y22VLl1BqflcRowY/8qwZgY
	 N4MyVrgI7kigA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0134C5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723863370.10981.13879240547550309925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40b217e4a9f0761f6ce01a8621aec25ad50c3086d99f5120df4e6248af2ea43
Date: Thu, 20 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787238633
