Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F77D296BBC
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772472294; cv=none; b=T0noI5QLMPIidudSwih8/aiD6vIn/DicaqWEXvqi8DDr0djpcZb3dr3xibMErZU1vYVJ7iXpaL/mQQYqrFacZoufB5Y0FQxN5JmxRrI0+DMJ1VhC/kEqPX/fNzRmmAIUgeuBkRbqkvoxDT+PJ+FkzAbMRPhFBuJfrbKJ3LOjnMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772472294; c=relaxed/simple;
	bh=Hsgzj7+D1gDzhphCMuL6sPHbnU6lrCW30OX9tmzSfok=;
	h=To:Subject:From:Message-Id:Date; b=gJDYM6u5WallIwnPrSxXou6kPF5LF5PDpr+38ZjCG4h1EMbgHPAQqm4XpgcGal8+tos2DToeY1wKX13cPPyf4cfFQYsVw/jqAh83EwpTvf9hwh15KMPwn6upWFLPvZVjLO0Rr1IWZL3vjOAxyr9LKP28290ubYuMDnKoBt6WaCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuzP0jV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuzP0jV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC41DC19425
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772472293;
	bh=Hsgzj7+D1gDzhphCMuL6sPHbnU6lrCW30OX9tmzSfok=;
	h=To:Subject:From:Date:From;
	b=OuzP0jV9k3bOKnFDIdNgazw+29HSWeFGXDlAA/HEt6dlnEFnr7Jcw6+3Hc3SX1eda
	 98oAZK5Nk4XOdt3vPqJ7Xwtsj0Bz/LVqfFZWI2po3/9I/hxM/uuky5BSIiIh+xhrTn
	 wCD8CugrRX2fbRxZu6NV226dBqfTSLCofbsg62mz5bDOLwExWigYLNZ8HxjCJHbXn0
	 zYVNYRvT/YUhP+MmppouLkxIam7pPaIJABbiKH7SLjcFAbV6bNw02TrDPZ4fQwxFvu
	 uMP03UnHvm3czWqfaEs5DBeV1x88bwUiBS4c+GiBCLKxshP9ltsQhLJSkVqmqjmZ/i
	 QpZGRZmvq1OUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B77EB3625
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177247229359.5753.10999867675689035831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a3abcc5629a9eb4cd3bbd4444c20b673a36ab1a314dc2e3005d8934d10c6d0
Date: Mon, 02 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772472293
