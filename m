Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B7B1DF755
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758734995; cv=none; b=hod6HIFPkYfLYEgyybWoPkCRvviZnFUZlv2hfSl6VfvFWUuEfNnulIl1jUDCBgbP/9UyLn2zmDn9FEcuWjfC55jJ5vDjuhjd+cPZUHJ+UuN9GoJyR0WhtEVpbnx6IB41ZMDSCPRCam6pM8B71bHuDGXzTXyxCJpc4ZH/DR7uGls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758734995; c=relaxed/simple;
	bh=N1s9Sh2x0lRiDcK0yAzklfxBbV6+ZgJsGJizIa24DMg=;
	h=To:Subject:From:Message-Id:Date; b=us8wb9eXbfEU193q7iCtTJRzJT0m5N5habz4PlJooUAUWvzwTzj5TqRjRXJz1kNeKkzJ6o/ZrzYn/o9nzejFCy2qj9x9jhSV97P5O4dBcErx9wdRsps7ujhcaZShyQtFZYd8/DD2jCVZMzkXwZdjP+D6j29kyyQW5PILPho/JtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkMLihn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkMLihn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB56C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758734993;
	bh=N1s9Sh2x0lRiDcK0yAzklfxBbV6+ZgJsGJizIa24DMg=;
	h=To:Subject:From:Date:From;
	b=UkMLihn9GPTH0J9RDFRCakRGL0Z0C03sNkeAsSyETlJTgm3VhLn1RBV2UT96Gr2kH
	 EpRHvIubi3DIsd8k5yEnvn+7yijjMHuUlXJYADsVd7rJ24uMMvrSSAzowWz1gp0Gck
	 zfC5QmSYVn2qPnScb1xTZav7khQadDK+99ip+8UmcsMg5OwfCpYMf85qAIIA0Tc4uB
	 ikcjUFqsV8OPTb0qtO4h3MpXyf5xC9SyWtJhGWAicnxhnoo9JQb+E2rFo/Umv23lcr
	 seCyOdIktpZVNUN83cWJ26qrLNsJbOEvs6CZeFy+V9ayE0IEQEEwZzfm0oyTuE6v1U
	 RzTI1IW3ZhyRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8ADCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873499361.9566.925755628646484424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697f6276be66c140dfa634fde370b22626b3afc8c412c4968dae2487b76e9260
Date: Wed, 24 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758734993
