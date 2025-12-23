Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309D931353C
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766483634; cv=none; b=chsfWYsEePDbp6mb+FGJxfjIqJt5FcZbkVuOqTRZV9FWmBIdnsadwDecqe99d6TQjc6ZvR1GkPQqzJpxqxD3rzgDOnxPzBL8KHziZm7azSzmgA+t9pkrXkqi5JmpN1x0qRAQUP1u6Q4TXf9Z/ZiRmnt4hpg7ThnKPllCyHcdOf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766483634; c=relaxed/simple;
	bh=uFx2Z3d6r9ICaKsnQ+nPh6CHAmA1Opy87kUifPq+Xd0=;
	h=To:Subject:From:Message-Id:Date; b=Z4coB2+YMXrihFgbvFYbtroYCIwA3WmlTWn9bIUhyh2H5sOZX8OVcWw6omIpfU4vWfw7e1bCR1K3eAVvnT8/2HR2wOgtXk26P8ypQc7eZ4rIlvDmcjL5w8lLH5Q30dWI9eBlKqMwPucoSuASzdoM5fmDpbRPizq+wHn6C+FnY7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwx3XTWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwx3XTWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED1CC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766483633;
	bh=uFx2Z3d6r9ICaKsnQ+nPh6CHAmA1Opy87kUifPq+Xd0=;
	h=To:Subject:From:Date:From;
	b=hwx3XTWnwf8y+fU0C1tmNwRmE3RBAZdaShhbBk0FyRs+N04JxaSrXP3RQBZSsHGnE
	 dOauzoV7alYoWB10iAvQCCP7FMA/CRth459DiIjhp43BabRjenAhNdZLiNAiqRRzHu
	 3qaHQ8AWEiRQwtG93DLoSuAnJRUTXodZa/dpqd0jNNxtyGH+Rumerl/qad/5/j9fFF
	 sPP+CnC1+bObgPEKK9jAc6qAotrSQG8BKQ6xBVNJy+pidgzmCsfhbScKG2wfUCv1M4
	 Ork88HHpWRUQEej/JQyqXubqVD5AxBibK+FyW2xM573sYfKhhFSWzMTrGcQQDBkPZe
	 pWldqQFYOC5Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2BE6F079
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648363358.30156.17380210258494991889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347d8db591d7d6a534e0cee11cfd8fdccbbe13d430782c2c2c3e636641912cb9
Date: Tue, 23 Dec 2025 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766483633
