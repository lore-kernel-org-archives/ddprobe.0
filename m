Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77E82D0C97
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777003053; cv=none; b=HfV/FrKbYqo0xMp6JTUzcRjfPHWRGU4jEuvv7nMh5XIv7bZXPraMQ7VaOt0pJS8H2FE3gL7FUtTEhEOf+D7YbOtu37idkBajybwjocGEf8FoPqiFbJO1NZe3MrGDHXQk85xoNG2PSujcoAYcnfYh6xStK4XjrG5caDXNGUKnyrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777003053; c=relaxed/simple;
	bh=eoQxGL+U2SZWrwBzLmbcMozEqOYNyvPA46GXnmMb0cc=;
	h=To:Subject:From:Message-Id:Date; b=R5Bgkx3taOUR/diR+mpTFVBQPIgzvzn7axqegDaJlWW6rZs18M801/HhMDdOJDjX4v6GOg6wutluPOiq+DNFv/xCpbEkvEj2rCuEr0lE9pgtbEZqcXnbHh2n4+nY0TagQhc4/ET9LO+QQmSmOoklDyruuRJqhPAXwDm8r2LM7/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sTFJKeH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sTFJKeH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BADF9C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777003053;
	bh=eoQxGL+U2SZWrwBzLmbcMozEqOYNyvPA46GXnmMb0cc=;
	h=To:Subject:From:Date:From;
	b=sTFJKeH3HcM2ytGHUxkm0//a3nJ45MYQj3XT4m57zq3FC9QgP4axNb7DQluH8TXmI
	 UmiDNTvjplt3z23O9iC/s1Mys9MaHm+xhuO7Tjgcfj1Z7WwdoTspDLUOJtp2xaZpqH
	 gjYPJJX+1sBo/fbVc3UM5TvgxWa/rGwsCnzyRB7sqLZTc8sj8NK2VGJAeSERbi0txO
	 LvgYJOEmU9DnAZ+swyvdPx/5+KDD3czpZwgOuXd19EwnZMfXe8V/IxtVZAwmMN5rHY
	 ZGC/OtoMD3nyQ1V6YVWP1peqtyhJjxrj+/1VN5BaHDrRtyaZ/ysAbvH3XApHYO/TS4
	 8uQwewcgSFisQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB34FF589DF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700305369.8254.12694028485964416168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55640dd9a3695cad95deeb523ffba47997b10e7da800cc48790a1afc2107464
Date: Fri, 24 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777003053
