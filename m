Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3969517BB16
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734902754; cv=none; b=RwY89OoyyZRcEUKZcYz7gzj8i2yaZpdUONxZa7lwOtTGgJvYRsjxpyJnWO2AAGw81SLtgjiNE8CY9mkueahJFT75yIdM2R/z/LIcm1DbcpCdhdFFsjCdWbinlNk9EPB0MZ/O3lIb7cH3oVKZJsz1UfwwE6a0BL434bP+DRAZ26E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734902754; c=relaxed/simple;
	bh=W+uBBjDNvpHhaiJuOZUPLO0audws+d5O0XRQZWvFe30=;
	h=To:Subject:From:Message-Id:Date; b=ZyMhaCaXocFsxjbt1Or17jAwZZ/JDpBeZE5vm9sKfwMI+7ytU46lq8ktC+CBMC3Gu6p+begxk7oFIyk9WEtBwN+EDz/KZfvW5+kxYBqQMInKkG19QSEhOhhZSC1ovadyIU2cUkz4QYnhh7ulce2m9NVUbNYA6xdsoc21Eni0aJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gM7Qw0Lq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gM7Qw0Lq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DE8C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734902753;
	bh=W+uBBjDNvpHhaiJuOZUPLO0audws+d5O0XRQZWvFe30=;
	h=To:Subject:From:Date:From;
	b=gM7Qw0LqAbes9E5HOPbR9LX8LLOJJMuKI+bl8+NSDrZeXWo+CPxHzSzpnOG6bCdVL
	 UToBtkRCqa3Kit1sYSKpDkjoWgWD8683/5Lrsmx5T6NiazI83uemT2M8A1xKXOYpOI
	 VlcTxMpJ9KQhuWJksP5OZMsTtCQSMJVWA7pu2VeLwRBmlsGSYTl/UEMkgWBbWvLzjv
	 PX4vjhsejRwG8dAN407UoARQrqnY0wPC9QxQZ8knhj0G5JLRn836i2crZu3QDt1e4j
	 0RC+ZfafbEpPBFRRy1Ue7szS1NH6RDvQ6Ujvl8pecb+NBf9azFtZDNwru/zd60R8lt
	 9DgPRDVX0doYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C10E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173490275362.22559.16385080250423317849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0534e1dffa91d0312783545ce0f12f0832831f85161fdf5e3136e1fd6ba281
Date: Sun, 22 Dec 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734902753
