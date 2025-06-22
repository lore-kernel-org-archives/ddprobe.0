Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376981E376C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750611594; cv=none; b=FecThKWpN+L+gSFXxQg53UKtgVa3P8YWkZ3EgRChFmjt5WWL1uzC1aqfJ7kC66lp98tkaKUb7AEtYK2+altNM1483afPCokB6rFheQs6qqxba6uMz+oE8raZfYmqEPtF9kWi5j+JlK+8qKQ6LkOCibZOGEuw7hNJuw1aeBUp4C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750611594; c=relaxed/simple;
	bh=BXzBPBuK7d7yjNQUzixdIepGKPVavkz0rI2yBzNvslo=;
	h=To:Subject:From:Message-Id:Date; b=nvD/XCxODkAGjVrmcFXjUd31zG2sfyzf9ffxHLw3BCjxcTiJFbBg8/XNfClldcdTHi69ZgPkT62AnXddSeGRbVWEPJ+uWU4OnRF+oRFfgI3h4NdV872LNHfj7DrrA3dabZHqGvCJG7/Ki3B67145glZ+K/zFxNUopbQOMzJNsks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqgEMgpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqgEMgpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AC2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750611593;
	bh=BXzBPBuK7d7yjNQUzixdIepGKPVavkz0rI2yBzNvslo=;
	h=To:Subject:From:Date:From;
	b=aqgEMgpWC9UsZMTuEcWkY3WQO7AowKzepTtxSP3ja3OKrUqUCcYd2ZVPbhHoYjwZ0
	 51OrMtG/C3eX8zCGKaLfXohNb8pRDZ+CtdDOReOPIGOOU6tt6uPYYfz1RG9/dQCzSU
	 7KNifGJMWbtCJlbQME+if4/UH6DcJHlcFU5Vb9qCOVLuxkORKFcUB00Qq0b3GkuSlw
	 o+VabN28jgJzT/GZ8eGNnD5cw7k0VYxrr32iXzsdytP1KuuoTavvfo387tp1jZiAnx
	 EXa76fd3qn2nQN/ItXGaUATYOlacGi1aFpolWLYOm0IeSQYxlrxqsWWqIhoUPtFfiA
	 qJTXRvjE9Sn6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94594C7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061159357.21887.6430301286146530648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dae54618e88ba6a1396ebf8356a894d5a6ecab1de89c4d2213ff9e42a0c1fa68
Date: Sun, 22 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750611593
