Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D561A267
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783171714; cv=none; b=iPJISZYxl6RIW7YuHdMe8XRNfFqG6Ax5cL7lWe3Hhw5beXntlX42waKtmhVkooEXPXl9iuN5TWfb6jZbSEQonr2PMVn9pLAqRgGWp4YHlgZPeYNRw4nPxoTeh/cUnMGjUu/juanDVEd9cDgr1LjYhz2bLaJvgaiy8TOdOhl4wg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783171714; c=relaxed/simple;
	bh=qqooMZE7g2bQOt/HpJBT3bX/+qymm/lCD2pWq31v46o=;
	h=To:Subject:From:Message-Id:Date; b=JF2XxcMJ8P+fnEqqFGiFSBvPKmP3MnKJXkE7wavZD7wS91vtcw9IXdUvGU8alJmIo0XS4QJEYMdkaDodnfn+R+pZ4xO9xDHzgG1bFR2pvgWvErl8ChYQTwnIwVlCjtFzrhMSjKJ08WW9WRVh63hMi2Fkj3V9GUaBwjXTG51S3sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddapDN6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddapDN6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF79FC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783171713;
	bh=qqooMZE7g2bQOt/HpJBT3bX/+qymm/lCD2pWq31v46o=;
	h=To:Subject:From:Date:From;
	b=ddapDN6LbS7lpwvifo7MLM396yjuhlSDEUuH2QC5V2lbyY86Q7Hp91cWPz4qlOArL
	 Y9HjtpRzFYaUQfA9RAe9xEIck959ggrDOvbB4xHi8/3QY33U00IkL5wjdorwxi1x1q
	 bKWmthYBYANGNZWAfdYMjNzhxa8tOhW4YZtP5yfet1W+9/46aA60gS+1U46bmllNaT
	 9gY4IOomCwA9gdxLisufJ9Ouhz1g9mSeIBaaaLtFwDzjW5D8YaDUMxOYE8dKHoWMdj
	 fRIC+lf8zFzuaJSa/btdswKS9HO3G9Cl/YGCIXxB4o2oGFeGz9r53M7U4+g7fhvR6e
	 H919L+RkVSs3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3A9C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178317171368.12309.4393036565706595395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4098835f38b36106b043f69c4469173dfb5bfaf4868b7de5e0a127957d51afd3
Date: Sat, 04 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783171713
