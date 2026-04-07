Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C3C25CC79
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775567734; cv=none; b=DTuHjZKRr4dsZgmT2COFtIuXMcLW1qlXzKX+P58W337Jb9HAe+Abp01pOUjLZzUAQdDkF6bD4eYg/O2EnpMPOHZJj2/4NdMAcmpIfgO17yd4aqVc5oHfXBoZHPhl1M3BcrU0yFCr4okx8H2eRg0zDYhKPuLOX3ArrBeSE+V0V5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775567734; c=relaxed/simple;
	bh=Bpjo0NfATpvXvAxFCpMKLhjvzb5CjtVGv2c7tHiVy5g=;
	h=To:Subject:From:Message-Id:Date; b=onWxmCO1YpzI/B3JqbaGiPOgysyGPqHtEVgHDnq54Kw5FW+jVH8CI9zpdpB9TxLXpM+IFsXKtkeqrNvLwItDt8ftKOPRI1QAoGecIhCx/oOgX+k0muUQSmBTde0K8o4nBnnSqz5q7XkwWqESE0o/zIGTfjOoZbik8eEg4aAL8qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZ10xgko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZ10xgko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F1DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775567733;
	bh=Bpjo0NfATpvXvAxFCpMKLhjvzb5CjtVGv2c7tHiVy5g=;
	h=To:Subject:From:Date:From;
	b=WZ10xgko4D3wW60Wn8as1M9wmUmJfa/CfgVpvUdlZBI7GYXCO678lscpP/NvJHLs9
	 STkMJAPRRZZroWeGwiulyaC7C7uMjEVhsssMh90avFlXt4S3G4JZ+aOOv9mA4+sdqi
	 ZQKtpyEKGfs6p0OhYBn5vJOEvNAKPD/zeqsZRti+smFePEHDaGToxSleUAO0pBwhVi
	 fd7NKvwh0uX3cxsROklwjk9WcAs9um9p3lDtStx4cIku8YMcYgoRljT/e6lXyFyN1e
	 W9unbG1oVpiS0X1YHn4q8HUIi2v+JrxnJg4ZBjKjIqv5nA5sYTtpAH8670ccPNRjLU
	 CArT1aM9ZllVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2C4FEEF3E
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177556773368.17558.12036065818580658748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c85fbb762e22cd285fc6287643b48f171ca03f87678aa68bc3494b4b542b342
Date: Tue, 07 Apr 2026 13:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775567733
