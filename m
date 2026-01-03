Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8DC223DE9
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767442434; cv=none; b=CxnhdrPA3g/N9CdWyZbFb4trEmPrQhXnAddJlEdL2UbBrN+VOZeYaXiDVdtUuyQzc6rhabdBUbtbyh7EIexIpvdHo7y6pS5OxO363o1eYtZyoxIjS+922wyRwIb5PFWCJW2ov8fDOHCSsQPzFo+/cw3lOjnvwtTvxZYvOFb/Ulw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767442434; c=relaxed/simple;
	bh=23h+f4OWrWodNAnOleCDGo4+nbM7HxY2pdbA8T3qviA=;
	h=To:Subject:From:Message-Id:Date; b=ketXjRJSQK0hbnP6VlRh013vRRxxVE44Jg6J0O/5t4u2DAp0uVbDYInX+VzRLGwO6jGutI02O55hGz76SHtmlKetFklbNEI6iLPX4Pht/0/loUiH+VUlGuFq3Rrh/TohJOu8rHlqWaARp/Mx7hhSmKYodZCOaumgNxVVfNAeNPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwB2bgWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwB2bgWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EA1C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767442433;
	bh=23h+f4OWrWodNAnOleCDGo4+nbM7HxY2pdbA8T3qviA=;
	h=To:Subject:From:Date:From;
	b=TwB2bgWBqeQ5GxCEOCLx/chOu5vuX0UAEBnGnOBbu/twgovOo3IlRuzaGAg8Atro1
	 AouQE38MQdWd3RO8Gl+G++EJDtqYOF39nGeThqONNZUrqQg8GWuE7rR5drUxaY/MMl
	 P0pV9kVoq0LSaWrL58aaL8eL4+UkxZaK+CxhT5D6MVlIct5MiU1iMOa0Bv3265dXBO
	 PvpEk1DQsK5X4PRoGmwrqLgAr5PF/MyJh2pgc6XIKTvESFkn+NZ7NDD6KC98Aj4e3g
	 6LtG7t44TPr14+Jnxk8Mq6pY3+o/ACc2qnQuANmW02CRUZtfgmyPmDc8Gm5UxNmYQI
	 8MMxyWu3yeQ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94717FC6179
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744243357.31196.5323251085326098635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f48ff6d15975b449a0ef1191df7e2736d6481a67efc2b7817abfc22b8496b6eb
Date: Sat, 03 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767442433
