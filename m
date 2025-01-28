Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394F5A59
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738055155; cv=none; b=gSEeHXGDy2Jp1mC9eTo4kmNCZTi0VSv3YXy51QOkDt04L6+uOdEP/YlUJvMLxxMwIF+6ecek0ZmdaphI6+EqFFXjoyKbh/21/EqeFbJvz8PbnaHZsxQERmi60m/A8sS9b8x5NRWDn/U5/jIYuDX0l+0xjS3zknDz9RQP4IylWtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738055155; c=relaxed/simple;
	bh=3bWELYbpWaFVjh0WErKlW0TTF/ucDAltuyiTXIJc6b0=;
	h=To:Subject:From:Message-Id:Date; b=c6QdkICGIK3moAwXcuXMNAPtf9ycJzhF4aIZHjVlcyNu8a98ldXEHqVA3+6pwelWoIKAviGvEjyYgUW6/d1sQ0wJ28+wBGAlwogtAZLUQXf3WL/zEoxu3TuX3rM07LPfKnK6ekfq94Sh0yzBznZ1PknZ37MVPkQ63V2ejUitvDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPlmnDT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPlmnDT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8007C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738055153;
	bh=3bWELYbpWaFVjh0WErKlW0TTF/ucDAltuyiTXIJc6b0=;
	h=To:Subject:From:Date:From;
	b=VPlmnDT+RJYmw21OZyk6hEIM+bPfkDJQvf6CzLQPVY14dPS+FjunVmLvPhuiqUEHi
	 Vgcnm0RkkQwlDaep1xRVQiz+ziMuqBbxM/qnLr2GqN534Ho84Q2h9WpYPXUBWg7RDh
	 J9AAZdPPgTee06kShofQ9JNDlVaURrIIjMrrB8k0v5YqjvqJzrjB03F/+/zBi5fViS
	 GC2EwCMxeq2zezmhG2OLX/u1KT4WyocNKajDej3qfMYZhR19lmWUtLECQ0bn9LCyVz
	 CbiXiIwwAYHrEIP6aiYy6mIifi9BKb72VqimltqJZ6AAiz9j+8Q+ystv+o2mPLbj2R
	 fmr+9q4HrRoMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C6BC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173805515358.28756.3224716448831662861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1873c57da52a1c82f11eecc453372d17b5be1e1f5fefb9ad4601d63ebbd54a
Date: Tue, 28 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738055153
