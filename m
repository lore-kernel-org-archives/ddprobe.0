Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621EF31ED83
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772432094; cv=none; b=kiSTf2wERgKD58snXcepn1TqtmPJ5rGSQ8/vqcPanEpMVrxqfsh9cMTkwLLXxPlqn2jrp2P7cjfQC4MxEdcxN38ohFgsL1DAeDEO3WsxCo1434qFJ+osfOYJNWRaijCkwLoYA4nFbFbEcjzAhKAIRMZB9DK8wshD0G+k0mAwkmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772432094; c=relaxed/simple;
	bh=K5RbayKPqVJWjctlFLULMLlCNpjxT1wmWj3ECLqKuWw=;
	h=To:Subject:From:Message-Id:Date; b=b4IDIUSOFHm4bR8uvEiQTniTDDN1NabYx1RhLv/YI/au33QCRR/TSblMqaRV4vXOzT/RnFoZj17yQZQM6mbesCRsZ7XNuPmyQvc3LpfcqC/y4hvDMZx+++rzyHfT7TP4y/gV0eWB8KlRyGXppAih96FsdWs+iOZBpAXKJB/SHaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItQzkvhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItQzkvhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95B7C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772432093;
	bh=K5RbayKPqVJWjctlFLULMLlCNpjxT1wmWj3ECLqKuWw=;
	h=To:Subject:From:Date:From;
	b=ItQzkvhg47zq6yTqg4eP+upz8oVmeaxJzBVF2EO2jbLOylJeW3vjLlX3CKalTtM00
	 knZEByaXaCVoeIwIYZ2AppSK7oV0vvK9LQV+OlilAq3OYGwMLLnh1v20eQtpBQouUQ
	 9/tx1gYzmJHYbTlBi5wYu52zqMj8uenuR1OsgXLurM05Emk2zR87OsvZRX5/rsFyBV
	 3qcBpYeadzOUlH2BGhTOJ0qrCZ6b8pNL0cbXfqfmnN90SnGTGuaZjLxL7q1F3BdEjH
	 8YlXErR3FdDfO1Z6Y+SX9f7yZsAYq51+VVoyx/1lqUMMgOo1AfCCzzOpSOJ9+noUMt
	 Y/6rXz8eSeOPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6BED58E5D
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243209362.23983.14721210955497618738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e519c96fa7aa5f7edfbed9a52e069553db2df612349b71d3263b1b6e5e446a0c
Date: Mon, 02 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772432093
