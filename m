Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E232BEFED
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765770774; cv=none; b=e2Z/7Fs1WPWpoZDjcPJ5T/hpIpGxI3OEk5IGPh2kIgVnHidvbOpgR4IlvpZFK9Px23TThQTKRkMYAKjV82d1l0CrhSZ6/uFihi9w0KDCOg5kZ86+iCfQ2oSYfqH6B66KBZDdo66H5TVe+LdKx1LtGIg5QGMld42PqEtxpkHrhTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765770774; c=relaxed/simple;
	bh=A/zNAnsC9X1LxjS6kl9ZS1NqV3ga2g0Of1MXbz0jmak=;
	h=To:Subject:From:Message-Id:Date; b=lvLDjzPUowzu2nOkb1jGndYIhE8BnMNOM9F1Zz1LvGFLD6nDF9d5NkkKQttrseyYnsrO7Pj6d7GiSOId81/6f1f1TQtv7xNjLNnevmRf2Y9C6XbF9opb9j1LB3GQdcT2pgDPg8QIcBlGJ046Jg2CR4gLN3cQhYZYwXmtfgvlLc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kg8oFp+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kg8oFp+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E961C116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765770773;
	bh=A/zNAnsC9X1LxjS6kl9ZS1NqV3ga2g0Of1MXbz0jmak=;
	h=To:Subject:From:Date:From;
	b=Kg8oFp+Fz1PUkBo1WlvHmoDofkmaLW3f2MoO+a5Juihq6mLo5ECLUK9RZA04ATA0n
	 MowrXez9REnzA0yPTguid1nnbsyjvipXPcxwtKUm/HVgeDi3nTBLOROA1KXLdK3CZD
	 8eOpQNVOoujp9T4D0YQGTY4lk1YzCOlBN3tbqaagjLlrv1zaW6I/RqTfJRUbLimlrj
	 2HOjMtkTKugy0DFPIAy2hYtjJc39sYKmBKsVthEtDGEtr/81ExC4BL9oCX1Tgwjw/y
	 wBdkecHGuG0f1jgMYP/wY3dP9Um0RefURdl2RHYJqMIrLtC3NRj+V21MzEFJBlS+QA
	 hL4ofE1RNcuDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90500D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577077358.27722.13326466653562247496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f8c45bc9c872bbd6d277bb0a0fc81e47b50b4008d875e316b28994f6b220649
Date: Mon, 15 Dec 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765770773
