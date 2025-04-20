Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BDDD2FF
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745111994; cv=none; b=jqgz1GbGGetP2mVdk6QH0AAgv9K7CpzlWGLjhXLsASe72nFwOuhJ2GnpAaIX2PPha8C3zIpfHew7YL+8WAyiKRMyk+evRtQ9m8dwopCBSl2WfF7FrsoPt6DPq3+Or3eGa1pPBOFDO9lUnCjVUbw0HNPn/R2hbOYfjUYemeELd2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745111994; c=relaxed/simple;
	bh=8dYE2VhfZ0UFaIvYv/bb+ySH1ttnKM4eorYuqM5aP3s=;
	h=To:Subject:From:Message-Id:Date; b=BvNPZIEihpjoXCp2i6ngYw1OxPNOv8Zp16ss/hyThTzBUdJLigVTYLhsred4JmEIMpwYXCMQAhGYi7F8EFqXm8kiRBeM/MPfxgsKgrtrzGVMB3CWDOlVr5a+anztFeaowAg5e+rThsb5sToUsVul66agKgfGi9bU3gVl6roTXP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQ8RHqye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQ8RHqye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8905C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745111993;
	bh=8dYE2VhfZ0UFaIvYv/bb+ySH1ttnKM4eorYuqM5aP3s=;
	h=To:Subject:From:Date:From;
	b=DQ8RHqyeK2f3mU+8fDH1tyV51NXlRNT0f+2lt9kXQqXgekhGkHK56lHAxu8Rbgr/1
	 gN3ovVOmN3xIbsOnauTNRRj4c+SUOuNt/YVQ+npDMq1L/pNHGdj8oI9d676t2pVu8P
	 8IpcwOrUeTkvMlbb29bNe0GCWAo0OixkMapjEfwnj4t8pXlbeZH6BudSDZ3q9PKVVK
	 gsIwSJoHuJXWCpjjAVDvrXBJPSyrp9bHJ4FZrZ81gI7hB4AiZuThZyy63H5pq6nhC/
	 VKlue2U2eZV0kDlWoCaxsFtGj9Q9mRNXtdQHrLoqF2onIc0nLxDTke1Nlr8BkH9p5N
	 2FYN4gIu3Y+JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4031C369CF
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511199363.27684.11593489460815245331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b82bcafd356ff039df28f6690adc316b2256c73d6d2f0cca69705adcced01a4
Date: Sun, 20 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745111993
