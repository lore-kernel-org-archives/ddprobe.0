Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F701EBA14
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761070794; cv=none; b=Y4R4jGFq1jcl08WSk/+CHwXxZoXwJYU/CulnAs4iiowvuMetAq1BDJyqX6ERI+7ycPoVMzrMoL+3RsqLfozyt3HBhG7Bd5aVE89//TFsnGW9cV1um40SQ+wJfHn8ny7oIqfmNRDCc1mtDRjuPY/25J3qxa1FlRJDGWiLpTLBveE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761070794; c=relaxed/simple;
	bh=kDoNyUpFapGGxNglTojPzK5BUws50IIhf7viTHSbKYI=;
	h=To:Subject:From:Message-Id:Date; b=MNxcZXdlSybSl7UWtU1HpYoTrBHusB2/4eTg8/p4/fuLZwygwkMbXQYZbwfpOsgEjeYHcjx7Fgv3xDqdA/P+s4wxOXCk39hOMYRCpjt5pZhsDbA6AlYDKmY/LcCQpL9YyS55sjYHwRrWxGHTfjed+lB7fIqx7SWVeAHrZBpQsGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsJlhZC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsJlhZC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F2AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761070793;
	bh=kDoNyUpFapGGxNglTojPzK5BUws50IIhf7viTHSbKYI=;
	h=To:Subject:From:Date:From;
	b=MsJlhZC/p/LCiT7uwoHZkGh4gOUGBcdtinnm/jIOZu6yQ9++1VGT+G4ukm5BGsoSM
	 OFmfnUXGR/jDVcqGVpjx/tutvpa5p1ka3tBN77hAwf8wPTAgU2hpDWJdQvJ1DEIbGo
	 oDoAudZnc2rviyCmYujwDlf3BRML6joxoqL+rxfUMcPkpWN8ZLic5W6cbhJMU0B8il
	 1SGuU85QsupOIW4lq+n9Nt099icrXjBdHo26+I0HvgVqPFVd03QZCp0G4r0uq1gHqW
	 pJ1uVrimYxA+/stMUE6ZNJ+EhKeSxtOtz63zlalTxmfeX6rCfOXs28uMHCjWABRJN5
	 JzeJuVBuXD+gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BAACCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107079358.32698.2421120334099427050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef21f5d0c61cad6f4f3876923bd92d47058fa419eb022f86bb17dd46ca421850
Date: Tue, 21 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761070793
