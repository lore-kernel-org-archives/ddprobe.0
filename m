Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B931B0413
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762816794; cv=none; b=PtImlZpnX5KQdvlQxnqnNcFhXqCdZ/1I3sVYkjh8JuHsUis3VjJY1GOXhLBMRiDN1QXSjjvLwQdufK09eDRoAiiUywlbi6bCS0xspCifhNpvhgXyIvCGFxb3ZnVhH/WASd7/RC2Lvt+fGvlShUcxo6XnehxOVE1zin7HZp0PSLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762816794; c=relaxed/simple;
	bh=1b/Sw6Liqa7EfM88PFexHJFRv2NZP4B5kPYaZV+Rk84=;
	h=To:Subject:From:Message-Id:Date; b=sCbRhIWrDkJWCzfMBZQfEzcWUWDlwFRoN17Mcy8VlplvPF3Eyfnz1q0Or4Ul4iMasD3CEcvsTGKhqGZ5U4Sv2tW8Th85/Nm/bn8FLoUtDO/pgCNajXZqf+LHLz0kvE/VlFEwtp2zJ6Zz0tWTxdXQvODUA1kYh9ykIP6o1NgmNyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZSZYVOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZSZYVOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A39C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762816793;
	bh=1b/Sw6Liqa7EfM88PFexHJFRv2NZP4B5kPYaZV+Rk84=;
	h=To:Subject:From:Date:From;
	b=jZSZYVOGMrAessyyahyd9altrC3lmgiuqgynSeBGog/tW20Ced2bzBBbm+UgBcPId
	 Ofq68QeckydOeXhVeGq9UbTGdc1jHIhnIk394/FpRczhj64njvUMXx/UeRR1OM01zn
	 3g5rZ3DvZuavZuYHPpoS2nmvzj2y8nRM9E7lp7KkJwMQig9MIOrx+heFvN0MYVAbEl
	 bLb4i55Ysbha77oqB9Wp7+rprBibixkUOLzpQFlrEG0TnWyaI1lEcW7gONzBuoICuD
	 HtNvhzleSAaoAEnE/HJfUgKymmMGV2TUJigrSoT//gutUj6HP9EttHwChHqidQuuwg
	 vudDPiTKYLhVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4834CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281679360.28718.18249679118138057255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3cef453a85cfbbb8ecc72a5e7beb6fbdb665f1b89e2b67003fb17aacbb19e6
Date: Mon, 10 Nov 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762816793
