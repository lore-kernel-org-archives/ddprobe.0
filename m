Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A761C5F27
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782258394; cv=none; b=F2Xrx3xIp1O/1G6aPpOzJ501q63Ts8CJjKM6AyJu9t6YbQVFvk2hPv9Gjnoq73GtMwLL5uYvoINgjA43PNU8OnW36MxZn1cSbhCAIJtn6KVqU0ewvwm5XHDTVt38oCeX2rkHWmSpzseOPg+4WDjOVPzB5rhHkzcT3uAkOzvPX1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782258394; c=relaxed/simple;
	bh=rTgRq+kyyL+9CRAB4o6qSr3h6F1G/fyyZmKxTDR0wrc=;
	h=To:Subject:From:Message-Id:Date; b=eWyoJzTLRffSPM9G4rXL7CHS27hvoixUWVF6S9IcoESOVNnJpkR8nbczKsBzW5WDXzgWnHEZmSsfzULEHctpyyP9v9r+ltr2KaBtKK2IE2eIWuLvTGvi8dBWVMR7OnqdRU3axY0PVhUNsjRWKI/uepz4yEbr5sj4cFoKEq9OGuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLEsavOq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLEsavOq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9684C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782258393;
	bh=rTgRq+kyyL+9CRAB4o6qSr3h6F1G/fyyZmKxTDR0wrc=;
	h=To:Subject:From:Date:From;
	b=sLEsavOqiJqFjdcyJmrsw/JhDrV1aLj8xui+I3kKELtOZtUEteXaI+7VOhXDrFyiK
	 htzEvBJWlAbc8lqW5HuqVuJte+/NQvq3TpINBdFhTaqnwRAWdAeJ6UTiCPsYEjE2FK
	 m211f5f+l0ZBBfMWqvLAhG6Nt78x/psKG5wNXcx+CcDQEFvUCpsbH8S0TfrUUzgLy7
	 TBmw4pmdc/9qOfyVDek8eOWrgzmYeeWGStW2I0m+zXAZlmjKiPBX/cnVLBHPkregqF
	 eKdv+k7n5E3IHyewou6I1De96BHdgyGgOGJt/ENGv5ksb1kVPvhur4Q5T1pzyZtPnP
	 Vjiw672wnJ8TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEAFCDB479
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178225839369.15698.7928058544636706535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c401fadf9c2f1a5ed49e6037720aaeac3edb3a5b41cc1f9f7bfdd356dff20515
Date: Tue, 23 Jun 2026 23:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782258393
