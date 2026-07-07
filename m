Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576F12D9780
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783467514; cv=none; b=fCY98a8lMLggbNA6cbcUHrXwFAeq/SbxSidAcqoZh0/1NJEPZNKOGvS8oAfSgAIzOrZlXjE2rFDfgfogjnHtKyaBBrHP5PuYc3SYafQZ5DxsB7W7SKddsdJMz1YyAFwiKHQsIdUlpCbTTuhF9lggS6E3JRmu8cJ0D93xGnXwMdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783467514; c=relaxed/simple;
	bh=xi8VBqsg0YDcpmGgb1QqXI8bhmhViPl9lnusDFLB3Zo=;
	h=To:Subject:From:Message-Id:Date; b=YkaBeW3Oxq0K14ZoG4AgaHXv7TcBbjfLcTLxYLgXEagNSchy4XvgYWYM+30JpNLD+s+D2L8Q6LxgUr7FgWzdsRbKanI5yi1KfyBHGXUcVcc+WOoYahU4YfIvCiKUw4EX7Koe/NScTfARdNdXvwgajvI//q7LgmPE7mvPTK8zYrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miXO9Cv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miXO9Cv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC23C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783467513;
	bh=xi8VBqsg0YDcpmGgb1QqXI8bhmhViPl9lnusDFLB3Zo=;
	h=To:Subject:From:Date:From;
	b=miXO9Cv1Fv4FY2BvVPaxLv+1IU4+3QOnKEB/FBhqEuzvJvpROo+WFk7OOW026gFY8
	 wIM3vOGuNOfOzjVbIlnStCl5Gi+2t8YaVX5M2hmFKUkQVglXdEZzHDPIeZqXB/wV61
	 yU6T9jIs1rR0S5O8Pd2knFRxUas+tYGv+WeAP1/XYV7geLxQFUXQSOPVFzvOWUWPNA
	 +KccHxCHs9nRgYaM03+dcTUomxEMnlD+ddF+fdTXGF0/XXwvcawAPUqb+8V78HWh58
	 sGgEDV/Gv78vGSFQKwJdKuXuoJWY+lgOfZ3wl8eUegdxPMJ30kdz7JVXq51LafYqRm
	 Dk8S9JMeEOl8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85D9C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346751368.13386.14540479443826540136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8964a5643b56aee4f834981db789f1ed9b8211b3f645806a0374d62cbd72f24c
Date: Tue, 07 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783467513
