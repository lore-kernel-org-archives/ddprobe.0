Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1495223
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727222754; cv=none; b=IW85BVarK5toCxCB6OootrYgAW5viLabg6pMA4dyOcmI/Kg/uD0zGkQ+jaoi62tbgyaagXrZbN49Xt/jxHMGUR2l6MRO0sUvibmsDFtciPTmXGIhnztYzQU2lBijHEVUFGuSRvRaIMOY00Pw/j66TWcsAqy5OT+WlmvutNocNXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727222754; c=relaxed/simple;
	bh=PvzQcY1xN9/iZtaE0yi6P7AhNJr8sVzR85br6VU2lPo=;
	h=To:Subject:From:Message-Id:Date; b=OEddh5iEWuVnugGQUHdbCpQBgciUDBS8KAthgOjb4LEExq+T0OgDBzTuIh8hgKIt3o1zoEMIh+Xztb7mCPtujHqofrZEEeRqgeZ9iMqku5RwvQhVWtf0zCYLdkBBoTN121nI5TH5m8T9hnrCc4LhyUdHY+lhxSjsP/aLJqHgugA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqZYdlxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqZYdlxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A082BC4CEC4
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727222753;
	bh=PvzQcY1xN9/iZtaE0yi6P7AhNJr8sVzR85br6VU2lPo=;
	h=To:Subject:From:Date:From;
	b=CqZYdlxMUl0qNY399zWHt6/eIgK9GCZWYotZX4dnour0TJaacf+GI7uob1ytIhFAK
	 EF9e0dXCwP9mHkmR3pznhpAy86mHoJfIR+QujOgNPFpz8Q1LsIKDgVSHQpwyjjwTUq
	 yMH20ji9pRLr/75mDIdRBXzKnRDyLbqCbC8QS4v8Le6sv6IqABudWw1xX+2sbab8X0
	 40nLivxsGQqbNQ68+YHZG5/wiJhfN2hkaEF2KdQ6zGqD8Kq07hjHGp7MGUDsl704YY
	 qa4DkKS60xN7GZ7AjxpOo5pMJMfv10p734nad3WqIrkMnULMMWvdS3Oiel+b8DQ/FV
	 2Woi9oCK6OpNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9142ECF9C71
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172722275358.23441.5157567406772374050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2bee8e45c03c88ddf973f5c0da78d351c84ca8cae4761ecab9aeb3607ac9c89
Date: Wed, 25 Sep 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727222753
