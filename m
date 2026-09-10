Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32628391E59
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789055434; cv=none; b=jMjU62Ej+Exikyu3QE1Bd8m/zMa1JFhjczFnzpPF2X+EJWKSIIUTbvHPpOJVBX91lWo25O86hd0jHYz5yltE3CWbg8+a60fXkSLBYNMb6caFA5fdMLMuC2h/s4M19Aq30bVeZ4hkGmY/3j9UKrT4kbYecVGThxxyGTv2ONzeCC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789055434; c=relaxed/simple;
	bh=rehcCYXsps2nl7uIZd2jLWBZJqjt33xxdMX4m1Px+hQ=;
	h=To:Subject:From:Message-Id:Date; b=KbaQMmj/QWGjhiaW74ks2MRIuGZgMEqKVDmhGO3pDbLfwxfYdOiUHCfSJDdazAdKMqF0FRF0LM4Q5pkMJgK8PDXI4yC8QLOuCITavcSNJWqJYWvtKDMufGf3a/1xrYLELKAfoNdG6sFh2l36HxfWGRN4LcE5ad6UEOBEKYt9Gj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNjNxtaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNjNxtaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5494C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789055433;
	bh=rehcCYXsps2nl7uIZd2jLWBZJqjt33xxdMX4m1Px+hQ=;
	h=To:Subject:From:Date:From;
	b=dNjNxtaATs58v6JWx/Jfz7cV7KJJA1sTUaR4RexHbjLWhePPk75m45FFkYK6ei4Ly
	 ZOQP4EgPk4Qq367D88b/BH04/0srT71LlbqRLZH0EgArJvN8+hsuZ3fqIFkseR0fku
	 6KConWDYUj4g6gLmxqpJPaT9DVsjqTJbeBQu312vWsPbuL9sHPHCJUnNmBbXyOpR6p
	 NzE5+n+xBncVYcAHrE8xuXDOHLKN+3kVV67Vl8c9nCoKPtu+9aBoJIg0Ujl7ASEJQZ
	 ljKkcieebSDbDmzVjrS0W7XHiSX6caMImenosbrN4X0uM/vQQnsL6x/3TYcamf6atZ
	 zD5g1TZA2dn0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9AEC79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905543370.10487.13661848327607167390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9618fd51f982ff3856fd77920d6b6a81f129f650142e431f59731e9f21dcabc
Date: Thu, 10 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789055433
