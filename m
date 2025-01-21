Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D23E1F1527
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737485154; cv=none; b=axS9ZFsnrvno9CS6ofuy5Fso5WP5PmSM16WMAryx/F5YvGbDw6mt1jPqeQfmyILRKD3XA/zPbujDmY8NiQpVDn1zauNJigwYhxFcFbqqldTHuGEcoZN4Aw8Jz9rWNNRE4eRfJ6tjdqf4FgxawmQXehlQziYD1TYc/Tj87OxromY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737485154; c=relaxed/simple;
	bh=MJj7520jkNoJ3gM2/zU7Pcpe7AqC+BNmxGLg0PwbtoY=;
	h=To:Subject:From:Message-Id:Date; b=XQ0+9UMiNRf30cYm8Ld8BetcEi+o+aUMyptcfOQ7TiRwlibN0pkOWlGYlFcmg3HM7g5xrBEarUimuk2iSoutHWqESnuBviLm0I1jpupDGrmz0EzvF29WqJFwXCdBbo/qan4xbxee7nPQTddVMfadYwDNLKE7pVNT6pDeTd3GMPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPYsTIl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPYsTIl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B377AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737485153;
	bh=MJj7520jkNoJ3gM2/zU7Pcpe7AqC+BNmxGLg0PwbtoY=;
	h=To:Subject:From:Date:From;
	b=cPYsTIl1ztPoiy6cNl5vBj42xJQFsEuBGnF244mYnw9H2WRbGDyDLHWN4WAdqWPXc
	 MkFq4IZirnaktFYy1PKurZNZaEg7beJo7F1xjw3r3wWEwNVAt9ZPrzoguFa7PW97y7
	 WB0yfivOOGMeuFIASOpEhIQJKtYlVgJ27fYwmha7cAmeKa+6qjrtSR/KIvPxi9P1kH
	 VokgbO6Qs9JhYH8ER5UtRgMmd4xtUUFzCKc7JDqcGjfuDMZkEKasQfNmCJDwCUHUBF
	 ugjXJC5NSdFiX86+MRzCcAcpfSyAsZHgKwIWGOTAn3kuuLOxwN+jmUiwXIwotS1bv7
	 5PzdgwNGusyrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A93FC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173748515360.23061.8254009566926575106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639eb648e7fa10f52960b6f76c9e48b30b32c9db361828fb369a22cac09c1a05
Date: Tue, 21 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737485153
