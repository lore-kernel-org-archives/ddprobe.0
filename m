Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365C21F2B8D
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758680994; cv=none; b=hvKzoeRz7rCuSRAGI1HDOVShZhTnHgQ853UajvlSZMDrC9URep4sLRqoh0Uy20TJe87YClJlDO+k/9kKXdI4mDHHfGEaT+GWEXGsFGEe6cgwDlsHw1ARMRiel+gu/tATA7e/zDVBJHQcqQnBs5iHy2RpX63xssgXUInzXe75RxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758680994; c=relaxed/simple;
	bh=m2ORu2RSkRkarHXkRzAG7rocujmNLnVcHoL5ArU28iM=;
	h=To:Subject:From:Message-Id:Date; b=Ukj8S7RU6AaoDpnzqtcrP4tVy3H/zT6dxj7FgSwUXfGLQHgOOfjBH5VTXM7vDjqrM7V6xSVSr208PeQCm/JyiFM4bBGkF85UTMOTSnsNrk7nyExob7LGvXPS9xRc07+2M0zN9DCNX8k1LW4/cF/MGm17eWEsW/VVS7SfEjgRu58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EysrVSm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EysrVSm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA01C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758680993;
	bh=m2ORu2RSkRkarHXkRzAG7rocujmNLnVcHoL5ArU28iM=;
	h=To:Subject:From:Date:From;
	b=EysrVSm0vhLJxIKNNcBrJhBLHOKFv04DFIgiIKbno0NAoS+UMcOpKt/WEBSxpSCDB
	 o+kT25eY74RZHH8RXsQ/KBMmQif7nvxJyVFQnCv6vr90MweBaH1TK4hM63HOWZW9Bm
	 FXt2nPFT0Mbo9HoEWjJAHg6gHre/2TW5t8AKISLs8tzYtTB77dP/7qvb5bQu1Hj4qv
	 ms+T9VNt/HL9OhXX5o3U5YZBHMGs5ey7erYUoRbhhTsiRUHt2Y/jFl7S2gwdgGWvYc
	 Gb4Qs8e3TWAFV4dXTuRScw8CjIBWBIOEty/DCVYWV0sKSEITQtetC8SBB0yVcJOH6R
	 uhHHuqEz7hehQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B33CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868099357.12601.9617127317884368677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb46c6252ddec65e4469b67ec5a928ff1d4c3bb17334a601837f2474edc1483
Date: Wed, 24 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758680993
