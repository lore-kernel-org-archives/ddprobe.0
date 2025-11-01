Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA0734CDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762008594; cv=none; b=sE2AcVEoGUYRJxs8RfPcxOcUHN3h7EQGaUgJfjZHT6TLS++7WG9V7lNdL8MSJUHd2NU/F/V/xHa4hV60XDR8PUyDHa8GsxRuhKb8EguJ5tmYiYHcSa0lb4DJnNaOrZY3mK6NzqS850sRA+iWedb2n5Lw7lDWF7rCN8x7oxVwASY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762008594; c=relaxed/simple;
	bh=wREfdBnYEHdypq01RUE8GS0qik83J7d/K7Dhq/OXEmM=;
	h=To:Subject:From:Message-Id:Date; b=E+ENt0sbcmImEcRLldXSMYH/FnRhysGbUP7Ioxgz8AHnNCoZgylt7aelaSHGcIprRuFgBDjEr/7EF6NLwbgIrEJi5u/oPqTn+oA8qweHuNXWd0N1V1mHOjQLub7v+8Dy/R4bSRxdaTDY7+R3PjZ3yAypKkFW+ReGbN3YLDU33zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/IA04JU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/IA04JU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9E2C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762008593;
	bh=wREfdBnYEHdypq01RUE8GS0qik83J7d/K7Dhq/OXEmM=;
	h=To:Subject:From:Date:From;
	b=m/IA04JUa7nPTKPE4+w6mefTu4Khuogfgu5NeWs8p1kDLVHGAStR7RQ5WzpuHJ/zI
	 EH77IZadDMqtnwFPY6tNlQxZemJs2TBhV/1rWvPqp+D8IPym70I8Ig4vJBmVX6IeGL
	 UpP4oly7/oqAUbthjaYmfFaowPCcH39uVTDwf8KWYIWkVmamUxfqJKjzQzzYdKRd2J
	 RiqzeNNApMLwHN3MivGmCbtBK7O43JiI02O702SVUhJ2tl6qII9Q9daETrjJbRYId3
	 W5Xae2Y9fOYxZhoYzXG+xaaiX/tp6Wqcpod7eFkZ4sNRG5Ha/QYmBpnwSaYrqh/JIG
	 0PqX6z2It7ScQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D702CCFA03
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200859358.17652.4905372925612425729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b54e01ec2cce2144cea17685732ea1a4fe655e09e10c956f17b8158b04532d
Date: Sat, 01 Nov 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762008593
