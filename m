Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7CA28CF5F
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783858114; cv=none; b=OxwtJvD4ssMmZlsV09r+Cw/4bP7dVbDKAj5FJ9INxjrRcIGrpNmnoa3BuOqeH7Y6EELCHD9+4KuCBkDa9tbcwVBLoD5O7EDDUEr6LnpHsMN0saqrCzWjECGO13qPIDZ5yiNSvjet+w+6NZenb3wnMalt6YxmXRc/qdERIkfrphk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783858114; c=relaxed/simple;
	bh=yw/lwNpHrF8izb2jD6DSmcHfFfPqlkH0J/ip8VfP8dw=;
	h=To:Subject:From:Message-Id:Date; b=YwsmR5b4C9c2oNsAYpzPixSpGOgo2HOpyjqGGs168hWX/BnsehCIH0l0pWAepW6dDnv7MnVKG4mxxMl6MZn8iCp9MlFQpsHOxkYaLkbKOn8/edZKmGXhgjN+d1HDoidUfLKNlYWtqn7dFvZ7GRmRYPETog568LtoWPZewdogN+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txUp3T/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txUp3T/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F16C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783858113;
	bh=yw/lwNpHrF8izb2jD6DSmcHfFfPqlkH0J/ip8VfP8dw=;
	h=To:Subject:From:Date:From;
	b=txUp3T/BuTsVvCZJIFV4ZFCNSSOmQ/SFNo0Cf+IycuvJsth6GPiVBYAfF2gyrCYPZ
	 /a5GfUvaD/uSOfuJTDgHsfAOggUgCaCGywMDSEIicK7cly7KNBmibpUzqGSVnve3QA
	 k7VIr3pWN8q0qUja83rZ/jAjfjajDwYvnUVfTZzpfzlfoQw4qOGh2qxiRrBRwtxC/2
	 190umHA6mVysSC16Aue+83TSNyGHQR9bx0umZK01YZ35JX1CsFFVWSCqP6frxrnzPh
	 gceqAF9EvNbd7myBazqzKyw6O0hBAfcrInwQ9Zxjyc12D3K3j+9o72KcGNHhpLOFnZ
	 PBocHNPMWASsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE638C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385811368.643.16722210775931609394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78c8deae6bbd3843d0a63c070c2b01be049bb3f737cdb20f913cd1798085183d
Date: Sun, 12 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783858113
