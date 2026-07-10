Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFD6259498
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 13:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783691314; cv=none; b=Ti52exXaR05Nq6IDMzI9/xDl8vbTdMlQMI/QC33KM1SmQVatP08b6KSHCFS5+zPus0XgCynafjhCNxcBwLd5apREJC+NbvNSN61iBG7Tx40PEdz1wxSWPSYTXtpxPz+fG0RflvT4G/648fmhfhjf+IcxTL3XbtTG9934zrluE1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783691314; c=relaxed/simple;
	bh=VDZxZRiTf9j337MMyUAaXihXpD/w2L7jQw3bPH/dagg=;
	h=To:Subject:From:Message-Id:Date; b=UbGHNI47nNbGW3SPYvXSHlmd9SQImE37ENNxKvv8hZERzbW4BSp91wqdJLkl9eIp49eFP7uePpACZHxfJXeGHlZYY7d57he6GxIlOz/nV2gsebdFXKbrlCLgDdkLm+ZCebkg4haLirFG9LC4D8jz34XgkvL2I+1hzLeP+BurXs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTzSJFbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTzSJFbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A87C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783691313;
	bh=VDZxZRiTf9j337MMyUAaXihXpD/w2L7jQw3bPH/dagg=;
	h=To:Subject:From:Date:From;
	b=tTzSJFbUmbJv/kijf4dUyByMlBsKUuRgj4PvS8egplWWbRnl1yJrIgnPriSCnHRYl
	 MW94aakEz8tzgYGAW2+9lZHzuXewoKHPVleYFP+5LhVhAylW2s6LKzdPXwG4oMifM8
	 Im0iSV2yPoJI18TnF3MLWLu+XAESZSw5WUOSlcXCOTG6ljq5auoB/b14NXSN+NHTh5
	 9z3gg4Z2l5U8o5NdnJo+yQ8GYmqAom+JvaceIaUwa15lj+B5MQ1keQ2A85TSxGIgdl
	 dGYaSuOzjV/wdAGE8cMXBjZy+FmA9cEpBkQT4KiVAc8Cy79w8YFRg7v418OxKB8re8
	 NqPipwGjk3/4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D31C44501
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178369131368.432.10003322745421636213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03043519a45f3e76dd96fec5e47bac48edda72556d0699bb63e592597ca4ffc
Date: Fri, 10 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783691313
