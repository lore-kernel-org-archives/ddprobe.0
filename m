Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1853A13E02A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771978494; cv=none; b=gYrzue+oTZ4jcbyFF/qsmamh6NtrRDlLRsPvlD2KGChuddUe+P8XqDCcA2F/2v22pvH6oGoMpjnbi+Jol0ovXinGyRbXTAN+6h2JjWMtjvvs8I6GwPMRqj4HJ0KVtguuecPtuc2RAtW5y7tkei1a/JrJuYK7lQWkzIhc9UXZynQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771978494; c=relaxed/simple;
	bh=WpGVMlKbr4ifXivRAqX0rmglCiewlhHl0iOA5yy0eoI=;
	h=To:Subject:From:Message-Id:Date; b=czRfLmfT2Bj3EPIEajl0b8y4nMdz8nK8iIduHBpPrmopIX4a9xXQXhCJIf+3ZW2aFUgBzsmP/REEOT23L8S2EtetEV2rWhqk6bFmXgoQAcLxfSk0WJcuwS5jCmL56bXtJ/GCRoLy03fzCuIEKhCCX20qrm0S5XjETDCF7u21i9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Metf9G1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Metf9G1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3E0C19423
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771978493;
	bh=WpGVMlKbr4ifXivRAqX0rmglCiewlhHl0iOA5yy0eoI=;
	h=To:Subject:From:Date:From;
	b=Metf9G1vLVMWffFK3yRpJkxaS7SRVtgDKr6I1UuImd1A9BJO+zEgIG1IkuO1YAB9z
	 ozOtbmV+qOy1Lqjj6OZMPfA5cuOZYC3R+epWQNaubXoVeHy69dUwMKT873I2EGl5CQ
	 b5XeTDqzQM3XEXi+M329fIJfAryLOdZPoAR9Lv2ixspF4U1N39R5fibuauHo//tq7K
	 WJ0/5zbicY+gyDc2Bgz5IHRCJdOFa4qNIE82sdgQaHlO8o4Ocu7Dgic1NXKeEbs7uG
	 D1raWjuslOcpPtx3nZb+j9gM+EojbfQcJGo5neH8MwqNzJgYZ/N7zTLOjYlwasotKz
	 +qp92S36k2vlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942D5F55425
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197849359.21433.9249081031796984613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96d0a34ab883dc91ab585170f520e88211618b4fa2e1cd3a69c5fe62f0dd166
Date: Wed, 25 Feb 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771978493
