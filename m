Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22027380
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724977554; cv=none; b=LVq30pMe8FXY6cyDc1HAICZTOZOAN1MJO+89SjkvijIg5OoZ340HkgQpbXk9LX94fLqWS3WcuHr/DtCuhqkGO3XBImKbSFlCycfFvKuoCRX5Dg0ZC51A0JTknPyHMVur9Xtk/ozxCPZI1gNRK60sY4a6+L+zpI7mKu4wP8KVN1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724977554; c=relaxed/simple;
	bh=ieZ1d9MAgmH1rtTNrMiMXdCUsSwWfXydzbsuu58IW74=;
	h=To:Subject:From:Message-Id:Date; b=F7xogK2+CaQnTS7e26FDbRzFso5lJAxQGoDi7mTO0RgEAXJbkvEKHe6jgPW28PBsGeqNC17iPGN4ErIWBemHaTtCeIu2WDTpyiZXG0pe8IOK/+vCrDFEUyVmvPthPndE7hmt3OkcrvkQlTst7SwNvFQFR4Kcj9XBSdhl1WZzJkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ti12beAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ti12beAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE92C4CEC1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724977553;
	bh=ieZ1d9MAgmH1rtTNrMiMXdCUsSwWfXydzbsuu58IW74=;
	h=To:Subject:From:Date:From;
	b=Ti12beAvVM3WqpA7Y31jfpH7Qot0BFnG6VBi/pTq4pts9E3wZ5SMidSe0ikmeXaGI
	 fR6r1isEFsuV6Anc0QeXKmnb59Cq7T0ADFTLdFoGiTW6cyzyLBiQ3mOWwElo/ma1GS
	 km0Is02eSvWkaGUcBdlUmIalb8BZCEAa03p53oIurabRZO95JWDAhJdkKaF0Ibcrb8
	 3SjiTUImw1JwZpUwHIYCzVxWKk3tKzUswCWBlX2D1aYU9plCrOAJm2lSKPC8ooqIsH
	 OKnN2hdd0GRLUXorUfRxNs3d4yZKJItCWDVSbhEi+q6PDlZxOlCSFy+h5RKuAFRzMc
	 k2ej2YeJn9qGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A014EC87FCB
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172497755362.12380.12414099205253639452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b9dbd1223608faed4dac4d148cb1c170e82cb57eb1fd5d3a7a4ca260636651
Date: Fri, 30 Aug 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724977553
