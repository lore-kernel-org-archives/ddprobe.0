Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CD3EAC6
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742294994; cv=none; b=tFjeuyBNn2HNXiXnxVclHWw+33HdWChbPoNgDmMDwB8FsoIda0GaojYw/3ag0XSyaeodyZ6y+2ddbnwdZ72KUi0rWfTlqHgHXRjnVsewlcnOz2jvpPWfKVJUEbza2tqWtALQPmx/AR3QNWj55m4tuYy0q+0q60n2/YHLxQCx9+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742294994; c=relaxed/simple;
	bh=16CGoutKuZsMYJZx2x2mN8hP5psRMi7bKJYCV9WEGxQ=;
	h=To:Subject:From:Message-Id:Date; b=s6HjjdbVLUz9lAgmStI1ud17VNulEJBTHFnhF2Ylzm7G8rVivMIhnQTpqcQNKxwaigp5dNTG/2EIEQ6YlDCYjRgthHPvknZxEUUEFBPjsQbM42X4ZIXWX7v/nLvpUhUpcJklu23NDwGzfW6z9tSJM48w0YL/z2quXWbOaSAHm3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cP1+ag7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cP1+ag7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F9FC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742294993;
	bh=16CGoutKuZsMYJZx2x2mN8hP5psRMi7bKJYCV9WEGxQ=;
	h=To:Subject:From:Date:From;
	b=cP1+ag7B5Am8CtpaqMytcuNMS+3A48+Xreue0PXFWRd+8HAC8/G4zhDtUNKFqc23d
	 eETnZSiNH0wymsLIEQdj/TGK4qtxlHMmbvgdzLXQukDSo4LS5EB7UqYJDZma2rmi88
	 wYR3rUfEDielXZCCb0vjbSGYwECaP74T6KddUxW8PVez04hh9OHv2QL0NF4ItCVFfe
	 RSuzvlQkln4IerAL2cPrjcVqf6ZSZxzGmslNrSdeSIJYchgXp0rlKE9SumBsPXCEin
	 OIaue1yMzM9ruxt9Kd9awtuFQmXCoOzIAdwzh31lkcequX8fn0KqfmgOToFNkhV3aK
	 VfqInBhhzrQIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB79DC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174229499367.7484.13752448020256815139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb2f6313ff9e46e8740c2956157959d0c5b7c90c72363351b13473172594873
Date: Tue, 18 Mar 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742294993
