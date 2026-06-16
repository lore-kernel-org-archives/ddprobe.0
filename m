Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE8821D596
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781654194; cv=none; b=ASg8D+BF5qYw3mpEjyLt07w4lhfKrIyxVSuxdnJm9lTpNWgpEIcPbwovPbyBq8R3sDc+eyyEU//3IXCiqd89D61e32XJ3bEsqBoZmNcuwAV1B2kth4OLE0CoKLduLTG/WOszO4fDGWENYrR6Ae4wfC1DIwv11IFtKZRHx0ejJS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781654194; c=relaxed/simple;
	bh=8ET/PmbB+8HuPPMKXF7klsqORnRzYl3eEhbwtTpLo0A=;
	h=To:Subject:From:Message-Id:Date; b=l0BS2gVD7geO8GvJIZ8gBPF1Q+00SknFPlIWbD7fdC1no+mBAgU74MyfxpCpJ2RbgVZy6UPHlopeKJ5vqgBumpmJkchJWpOCXGpS6o+6bXFzcVqk47Mn5VzdDbfsD+nN11JigcWym6JoKaEK4/Vz3M7jTbaVj4PZK9kY8GcDmLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fr7pEdvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fr7pEdvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE874C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781654193;
	bh=8ET/PmbB+8HuPPMKXF7klsqORnRzYl3eEhbwtTpLo0A=;
	h=To:Subject:From:Date:From;
	b=fr7pEdvCtUU2DGeYQkjxk2kIkadhhsdoSVEMC/nNBymFmeOoOpFkysVBOO5ab4JKd
	 sbNhIeSvAwafrg+O4IuykEkL+fXJDWA82uOH864LI/FLfxEoYJcu+KdoYrYN30ildp
	 CRjv7cDWSELn4jgIJfrh+RUjh0Ra/iPswMDDkfS9FbG6D9XplRVPnE46rTbPtzUmsX
	 bjsFN2TQGT5yTRrxw4Y+WOBBqChb6qds051IH8PlylaOZxzMt9Xl7RVvUKcEeVRH3G
	 vgyg9LBDg1rtzJ5szvQbHQGj0/kdAwgQo0nHaFbjvc7XmgVbRpD0aZlObseqQq/GCB
	 AQMRXCWUguKTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2769CD98EC
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178165419374.2974.14834258785482601029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec917071e64f9ef4386c947ab7fb6b9521ed6bfc504512b8f417733c9294ff7f
Date: Tue, 16 Jun 2026 23:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781654193
