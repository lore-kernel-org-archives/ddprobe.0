Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291862EC54B
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761043794; cv=none; b=BnsuA6JZotwhzxChBt25ChFg1cwiF/QgTPnlDslTGSPVj7uliyZEO9bJyOPvfbCDg1mqHFxv/o61LAWzkMDvvl6grePvtTrHdzgT+fhyNsyFfpR7cnkM5WDhs8wx0/hOTvj7PBzxIyVWpa0smbi/S6jSOgQ+D7SoL8WCgjhBE54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761043794; c=relaxed/simple;
	bh=FTBBTk3oEVc2aH/rE8VgjjQjUUO/LTXUEhSUQ9EaE4E=;
	h=To:Subject:From:Message-Id:Date; b=bd7lVUwcYNhQXBDgs/eHm3d6b6xANw42GOXgyb4vTCDV4/sqgURFExzLq34p7QwHE6lSCoD/0elMaHbl8kwNOGglGwwx+rc2ZmpL6to5uywXbsw6H3W1/XYvqudbwJduXucDLlAsp3I62sfRNMMYyxzF+a+6LaFWhmOeTzs7Qr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqkJr5Cp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqkJr5Cp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77D5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761043793;
	bh=FTBBTk3oEVc2aH/rE8VgjjQjUUO/LTXUEhSUQ9EaE4E=;
	h=To:Subject:From:Date:From;
	b=IqkJr5CpycdqUPPF+JupeH0NW7tWUPJzG++ENDReMet/fHcyJYfXQGoNED0SeOrNn
	 3dSvzZNIFCc02E1AWiEdGkn1kEMkIi/G2CMc6NV+LVCLP/egE3KXHZuRHGqoyUYmyt
	 T8+F3kwHGO8fSCflmCWK8ddD7iPHpGrROo4JoIhqDzffD0uNRAONh4fjiponh3b08B
	 qpH2KXOC1BMgt7ZRMVbHmdj8slULD5j4qactzdIMiALhGWLYZzZL9jYOGXqlPjoXne
	 +Xnpqu5HTQHbJt/fMLEGevo+sndlU9mrLdeavGQF/ol2QvDqrrIoaa1fFGZNz1c02C
	 XibteqlO/c8cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E4BCCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104379357.15749.7151416402203843443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d2caf1cb3a70106a1cd7a3fe8848905ade36ac712a8e537a8125eddd6ce4c7e
Date: Tue, 21 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761043793
