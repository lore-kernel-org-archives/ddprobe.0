Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22ABC23DE
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749863394; cv=none; b=dg19vzdNPn6q07tXl7IAPMT4bkm48eG6IFpU9jsxgcR8txSD3pPMS5bPr/t07akuBqmaO7O1m77pgWuo3bMLDJhjtm1TAYpiEO46D/whqzaGHIxIU2n1wIkwKLWUMBCK+l6RJAYq1MS7Ic/ArGS6SJxt7RjZiI5EZMdaVDvQ9rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749863394; c=relaxed/simple;
	bh=h34Jxx8Wwi9Mhs/w0yhZKroWfIVk3tOFDYe62/CpoN0=;
	h=To:Subject:From:Message-Id:Date; b=qcj2KCb/gfeH7utuNXpPrvwN0QhWSMwhjdlT5fpo1Y9w7s745sRNbhED1i+0O+QJteOVKLbi0wPT+4wmvcK8WzjXfP1vnJi0dq3D5LVNaw2VtP+qhuV1gf2O6NVXo3SYOzp2bCy6urDNTsYy4lcjQruEZL3DqlePOinFek/XOlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlnXaPsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlnXaPsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAF4C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749863393;
	bh=h34Jxx8Wwi9Mhs/w0yhZKroWfIVk3tOFDYe62/CpoN0=;
	h=To:Subject:From:Date:From;
	b=PlnXaPsjMRgfE8XnpVUsU737131fYXhScv3bigZYehpUxK7deOU01d75YRI/pt6RV
	 IOmmaHqdVHVNUW4033mIyIcXo0W+M4L/BbinGdgW0SCJG1f+QLRzYaCj/r8qhjSRfp
	 dKWcg0qAPxH7MgaljagLs6+O+dFCmA8DvFVChg/k2zuxiUmgK+hj56Wj3NE4Ch++EP
	 zsM9t+dRjGWn/f1KiqYrJnx+MiRVg7XVJNXvAHUnd7DojvnL1Z1ECu51CmiJS4+RMo
	 WEKtVl+ofG/NnP+7Nav/vEuHi8bFBfSACdLbtx1EEuUaLjrRDUcfmYZP4RWHNbFHjE
	 ctwQzbI9T38Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6F1C71136
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986339357.28553.15483610429674530126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef0c99a31dc26e77a5e47bee0c8037ddc6567d061e10ffd5644555cbe75c007
Date: Sat, 14 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749863393
