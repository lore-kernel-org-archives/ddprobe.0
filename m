Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DB31B85FD
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761736194; cv=none; b=Ma2c4YQLEhWLYAc5xN1p0ziWkeW2x0X4Os+Tv2Vk5Vz8SwD+BBDLzgLti85Ih2ztszNW8emTFYBCMEa+QZnkrTby95+tAhEeWIdr5hNWrcCJRolgZmtldFLhyCQyGNubUdCKXcvV+SOVETpMFrxr8iKzBVYfn2nM9FVe6R+vD2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761736194; c=relaxed/simple;
	bh=D7faLTlX5Y9EC6RGHvhKdmVH8hwlqLzcWmRqC+lgCQg=;
	h=To:Subject:From:Message-Id:Date; b=bq+/r9TQkOmFs2y7GZRtrgyNtwqO8RxfZHD1a0Hl+iA3ipoEStL7QerbWLD05K3EhPjWA9XBMZSoCNXsRD2ouIRHgGixAI1v7l1J0JUXdTOfTlOqaqbO06hCd6QJ/CCgNdJmp6I7sXHWGHla3IPxw0cdxtozrG52brAxm3bSwf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbkRdEca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbkRdEca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FEBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761736193;
	bh=D7faLTlX5Y9EC6RGHvhKdmVH8hwlqLzcWmRqC+lgCQg=;
	h=To:Subject:From:Date:From;
	b=JbkRdEca/HXVCrSVuNzkA/VOUrGFCtKfmIqSL0xyG2Nj7x0cFgyVySre+aG7Q5kqO
	 WmpFtIxD/I/eEDqFi2fdTdPB+cT6Xki5KIi3y376FLVtktPdmFgWAGth8pZ7DZjl9l
	 4gQhSgZa+td3d8ruqBzKwEq1KaG7tRyYL5pJAyB2DbjCOJ18UPQzyr8kwgihEuTkaL
	 kdbYFnCDlX7uA9Vg/8cAMmLlQy4vcdT5oYYIdXVe+3y3GZ2oBeQvmD/+CpgL6AxBLh
	 /uEeBf3Or7IUJvOYxwb5DnuAucOm3qxtvNzS8dcf9soiMGxCevxrbUMtYBjFQon1Hv
	 E97ap0Gs+F07A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F717CCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173619357.32196.706491635046265400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa174e32e492163b61d1558e2f5228e2a9f8a9aa1e5b529201da1e1061472a5d
Date: Wed, 29 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761736193
