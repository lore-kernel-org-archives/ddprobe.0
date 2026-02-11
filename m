Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177013254BD
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770790494; cv=none; b=sVeCBkkaMMnoQ8/pojSwOOuxD4b8zY37VxpG3fY+ZBN5aNIL2mqze1PyHmHN6dhQy4SCeEmguh3G4DPLuH7cJO+xs9+5PfaTeIabclQZkDkd20UPgFTiA8Y1uyukXhhECcTl6tMqtjojJE9gNz22vhZBJmKZiCHcoBqRz9RUOJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770790494; c=relaxed/simple;
	bh=F5v9/mnndy2VhraE3Q1IhQoogXVwhhCmnmGRIWE4sD8=;
	h=To:Subject:From:Message-Id:Date; b=TxyxIRuGDfwAfNYDhZomXumlQYG0fcwbaVQunZ+Lwlghb5FStCTBx9woN8e59pP+xNzDOm7yE6iD8MseI6TQSmvr2iHrsvBCIzInKp+HrpOsy3giIQRJVNeritvxq7Z0ZLHvNUP4gy90ICb00m6MBCtg6hm7ctXpGlTG2VCLzPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+wnTxZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+wnTxZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FFBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770790493;
	bh=F5v9/mnndy2VhraE3Q1IhQoogXVwhhCmnmGRIWE4sD8=;
	h=To:Subject:From:Date:From;
	b=N+wnTxZAoINUU4kHE127QNWGSnbIiVqjADV8AK1Idge4IZGP7whqQArzGsG/7zySw
	 dRkyVE4jy1IJi7m8ShVzwf6GKilFKB2FZsUeksVoarffAWBfWyawxULdSFInQ0fGoQ
	 VL4mJblOUjzxfv7MBhdu2bKi3NDrwl3NftIRmtLlTJjPDoyQywYp4jwmJ2sy2GO703
	 gwsqNad7/BlQW90Hz69FW6ga6pwIfuvzieytay3FKouzXV8Zx6lM0y+XsulTgIpZZg
	 nViGwTwsMG+ty3in2bFg0tDmK7U8LvTkNg06FKg/RhhfAjzt+qNvz2GgYJTa3yNS23
	 DDoO4piHZRgtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DEEEB5969
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177079049362.28647.15229210923834614116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb227b2a21fcaed3efd0f7c8aa85591d8e2909dcbd75c10e0e81f5df2846567
Date: Wed, 11 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770790493
