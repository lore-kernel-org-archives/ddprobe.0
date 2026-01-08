Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8448F387349
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767864834; cv=none; b=MEszMLy9HuTEank57dewsmiFJeezHi3GtT5bzZTdWOozk9wF6gJrwFwtD6alRsxZpry/tzNLi4QJXHCPJ5zLMhOPDZax4ChIG2bbmenUgCjXPa8WLoHEWlx5nCMesAddgdBx0D5nwYklqCrbUERTQdyv+/ezs1WSvLEfiC8Iikk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767864834; c=relaxed/simple;
	bh=Ohstqupp+85qQto79DrwFXS+ahN9NYKRekGJsE2kzpQ=;
	h=To:Subject:From:Message-Id:Date; b=DQlUSwJJjVnXTJM7uJspNYRNJBs+loUg8J/cyVJdxhQoTmcGUu17f6PHiWPyADZY0G3izsmdOZ3YNf5G2bVZjaqVxm+UnW5Lw8Rb27yGPGYIAHa6y4kY1n/igSnrYSkEk80wHwIZmO58LI4ol6o4MEObUDpJaKAepsYAHsf8s2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWmZDQZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWmZDQZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA9DC16AAE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767864833;
	bh=Ohstqupp+85qQto79DrwFXS+ahN9NYKRekGJsE2kzpQ=;
	h=To:Subject:From:Date:From;
	b=SWmZDQZrCzrt8XljBUZ+/FWyBMYlL9swjFexzUpN4BRwk8XM5es+qqPA2iKBKqXBe
	 5MSCQpeA2M1eNqe/w/UHAw1Yw+5KnjpPRqAZ1L1oXYZyfwv8UKBtcbExTqZDCBpc47
	 yCzQgorAnIAC43bb0SsK4AbspArwkBHa8g6HcDMC/pQZuzNIf5IaNUit8/Q1I+kVvf
	 uA+VErJjTnpcNfkv5O9I1RTwrb8aFTrJ/l3Qb+TUl+cIuwyoqUcHQx92w+fpzuV9/C
	 QQaFWonnqBKAlqnTJ+dbgW1GVAQyt7yYjNP9f9sG6/TZSXB5kEeotUVMqfnSpWwD/z
	 yC25sqnstGIlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A9ECF6AB4
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786483357.12495.12594980937544033797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 431c7182969db6476780e0a7e2728880134d2e86d146a29bd5bc0d779dbaf18a
Date: Thu, 08 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767864833
