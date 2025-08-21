Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1921C23AB81
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755754796; cv=none; b=CxciRMDxSIWwNzEv31oqjQPtPLK32dr1RQo3WhB5Zu8hrkAt8xe02w2zw5u9j3CTRgkp8QlaP6MHoxqWsoKl7NOwPMtfOLWEGZ4mV/+Fv1vN04unxqJj0u7pbW1JM9/G03Xe11hdGziQTZxogiTYlAWrVluIE0brxNCyFK9maTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755754796; c=relaxed/simple;
	bh=ksSe4Ogds4UJgJu6NMrS9vy5V88D2E5JVTeQvTKVpy4=;
	h=To:Subject:From:Message-Id:Date; b=GGRcZsZpKzFoiv/PyDcYpqpxbOz6Ud7HL3Q6dxQB1Goqvtwyt81U5D8TlpCmfOOxAgXZ4qflVQg9g421U05m/I6aAqzwnQ63oRhTyuvJHDnz7XspMBr7DUSPX7NTAb0T6rK/6lVhY9DMoVaEVcVgV+sXlAPTNJZHG0/dO0/zpvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soQ5OdNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soQ5OdNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C920C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755754793;
	bh=ksSe4Ogds4UJgJu6NMrS9vy5V88D2E5JVTeQvTKVpy4=;
	h=To:Subject:From:Date:From;
	b=soQ5OdNSnWJfWfVA5xGfTHkl2Gn3DsDgTr+Azg2mdhI5lItpktMMTO0PiYaT6EZx6
	 jFEiir0DXb75EvqPT6Bm+5GzBO/rKmSZxc26gnblefuUqgfklGUlwo4W41ia90qPsI
	 VQcShrJpsZPRfGAgiXk1GSMosO/Zlw/ugbcXrSy0G147wd6T8N8oUmJTitWj9M1ATo
	 UbAN4gbLQPpCY+vDlLJTHS2koh7Ny43mOZ1r2Cg2xkyKxs7gGR1T/YB6aqVBJY+Mit
	 6Z7vJ+/mCSGowZPiwhJNXcqfhDCaHOj7n5xASh1G27ZV6k2kI4myuBSjhkevozduUb
	 Wbfsq60+B/0rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0ACCA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175575479357.7639.7791882651919919768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd0361af3007c47060a9ab3ae1ce870df6f077d4f7f672462b7c81d95a88ea1
Date: Thu, 21 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755754793
