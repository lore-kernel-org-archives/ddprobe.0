Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3868C2DD5E2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756937995; cv=none; b=dobTUIxAaU+Osd+0GmV9t0QCaM5K8olNMKb6m294TCqcVESC8T0TjVFVL1FnFObhzNrEHXbMyWdbC+L3Gwi3uglKZgHACG54DJAghs3bWkOqsUePwnDkhgsEi6R4pCPfvIcd9jAhsLIUvnGJj1dhNd/QBLtobq8ECzphQo41jmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756937995; c=relaxed/simple;
	bh=aZvHjtdkW/q00koLhOyk6An3l4pni50Gn0+WfmQEFkE=;
	h=To:Subject:From:Message-Id:Date; b=g9f3uo0m0ZikrV2oL6XZIMzUWlsMA7IRb1yjmj/FjsfilzB1Yg4XQPsBN8mhDTZuaDnmJKc1UPh8iq3l541GQQ0wqjTrtSnpA/zmeG465tUm46Laghhyd42YI9I1A6g8jRooKKiChX4OF7hLQQkNxa01wVucMm8n/dika5QsS4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTSpjjvO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTSpjjvO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A953EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756937993;
	bh=aZvHjtdkW/q00koLhOyk6An3l4pni50Gn0+WfmQEFkE=;
	h=To:Subject:From:Date:From;
	b=OTSpjjvOiwj12p9iOflGmFmbohYpFwbzoFbPqACW2IxOMDE1YfiJ4YNZQKROJKVSy
	 2Q0M307vhlD80iEzCugDBDnOVZpf4VADigM1i32U2UwolI3CMKBzGfhHJq+Jq8PqJm
	 AuWT8n6JQAxq3Nk0pxm08kOavVjOQO2Glen2h+bbdi2GTdh6G9j5kZdNKsRkp6/bYv
	 iwI77RKOAZm07S+yc1HhVDYJPTczLcpbLvfbEVs75pQxfhpnGtL6AtUxZfllu2fsAD
	 TpoLS77xk+x3DZSjunVjVsgn2v36oR6f6e1ip6v9QFM8KijpBIZccuM/NMU5chrjm/
	 mqr3tEqQJt4GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F30CCA1010
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693799357.29434.8812974045270919258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf51d9450a3fcede12adacc970b5dbae2198fa7a2f9a9c5a9ed197f11007dc4
Date: Wed, 03 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756937993
