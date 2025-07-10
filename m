Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F533A47
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752109794; cv=none; b=XU3hKyW+UEZgfxkVNA9/GHm/2sQOm7jYXSVN2afSnqsKfy9VtiNaw7zDrVWoQ1Ktt0C+vV1IJcwMjUuimy+ih6kEbku1ptIwYpO2f/MP5ZM7TB2WKXiNE1FOhakhTqCJfHRVMzxzvbDEDLJ2xZL4W7Uhpp/zWBfQ4Ko8KaQcOAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752109794; c=relaxed/simple;
	bh=ivJfNhQxYqkpFBAQW/LrYcyDc8Rae2CwpfAVST9jxc0=;
	h=To:Subject:From:Message-Id:Date; b=TKBkxTa2JiYuV6dlLKy6X0S+1XrP7gWdG8Eea83fyHAN+91CpGr/aEq0e0aIthUd7RHJWc5t2gL0QNc6Mm1kf8A8z6LL1Dqn3Hug7iB0nMEW1O4GSxP8WvdJAuMey1d0GlRRoVQzuRh+zQrWlNHc8XoifF4apUe0F+OwdgnDwZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+4MJz9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+4MJz9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72BDC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752109793;
	bh=ivJfNhQxYqkpFBAQW/LrYcyDc8Rae2CwpfAVST9jxc0=;
	h=To:Subject:From:Date:From;
	b=B+4MJz9BodFxFZkbWT6ULuH05KjI0DGOp5LUoDqJmhlmJPZyz2JLCm/xSYIU8XPh4
	 IF4pwdLTSjZqwligkfvYUsbJGo/dL7gzeNDxcq5IJOLNMg6VbQB77nT2vgcQUV/Rz9
	 QJx+ueSW7+TbRlX9LzREJxlrZPEB+kKMhLftEMGWHc2gwMeMSa1NffklEntaEn6Fp6
	 uR88EsMClW62GWYzu7z2mhPqApoJTW/epIUM/dEg4kkBHlg4ItWejIbWWXrOhzZwCM
	 0PZ/UrU6xURWule6ekkft8aqH2tL8VrZuUnyhj8hTrCcPU6mX8kQ7Td4bLS+4EEJZG
	 /rDa7P8zQbcfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93455C83F10
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210979358.28150.1256648410281876049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ad9373432b7818a9f0e77d46c89ddc99192eeefde3afc93f4e76dad2015c862
Date: Thu, 10 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752109793
