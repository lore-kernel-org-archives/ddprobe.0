Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202D7D271
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759111195; cv=none; b=jqDVrxGkRPrY1dkJHJE4DzkcFpBbNHLqOjVA8++BI+od2fO8lJGqWGqaz1HUXJg6Yiwf/IdRaDZz5ET15Qw24rmuMAPNsgdVWcHBBjFgmCQLGCyIWXOJ9UVTWRHrasLHy/mzFa9Gbtd9L05kaKxTQQZmKiJKfF280qdHovLJLCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759111195; c=relaxed/simple;
	bh=Nik8CCRkWQa3k1pbw2TR/2eFLUEneANkk0I0lAVzIbg=;
	h=To:Subject:From:Message-Id:Date; b=fAz4WnUQdO4yFfgWKB+3Xqq8kiUuy/D++rT5faOdp5gYODPOTdCUPVGqRCiSWCNRJyDUx8Q+TM0gqmLuZ7ffL5J8BwN0awMpJEJQfMd/u49kvuKIuxW68vfJVYrCXdIZ+2IUUcK6/w6HKIoQHW98+r5RUYntfDigTyvTgsCEuO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgFLszqc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgFLszqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2DCC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759111193;
	bh=Nik8CCRkWQa3k1pbw2TR/2eFLUEneANkk0I0lAVzIbg=;
	h=To:Subject:From:Date:From;
	b=GgFLszqcovbHz8nQ4wt9XS01vZ4Gqzmx+ZAIgEEdPylZhf7I8zeoGVbpP+idMvs4S
	 PbQbAUPMuN1g2ukhmYRanteklLbfEnMrWLRrMNjwbr944G9fLUWcnW7+G5i2zzfZfY
	 NCuHGa/1GCoRGq0/u9m0X9WVcdf5d1o1+QywnCpe8b8gqPbGMNZzTGiXjE9M0lZyLp
	 IHOtBtkRUYlAVGiPce6/ybtRpXkv6yOzVsBV3PR5s8Y68NGWXLsg8sVd0hojWLaear
	 FC/UikYT+vRWNbx9mgv8mOUs4imF+5UKW/JT89sU6DtQylx+sDIybRsGx62W+mUrEX
	 ECTbEHp134NXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBF4CAC5BB
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175911119357.21986.11794666063140288230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef8fe89ca9c7b3284e16d92413502a37504e858db4e8f66f906e43715bc1621
Date: Mon, 29 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759111193
