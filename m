Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CF82D8387
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768740234; cv=none; b=AzjjfV3Mr8NKqCEiH9IDFFK4s1OXyblvsWWzxNaVy0n2BDYAwpHhwPxKzuvh3HXH/OwQu3mdPQyVPysWwPpss9XwOGnNtk86ZA7rSwXdzcuXRcX4jAb/zgmBk7nLte7KVyz/bh148imdIwHF/W5AdENJmBJ6Twd5LrsGp3Afzco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768740234; c=relaxed/simple;
	bh=nd61JzbJCUIw8I22es1k9yXlERrhFun2OGBlo7+Umgg=;
	h=To:Subject:From:Message-Id:Date; b=cI12xKBmx3APtRpHK19IfdhWVfqgBWnh2uMt134T1AVIkGavUAEkCfTumPvR32ccx6mX+t7f+RisO6Oh8xT6TvyfTndzFgMBsZobq4Hc+K0lhbpw4yWKfNSQaMjlv6q3CShZqZ3RziG+JVs3o0qNKhuX/JELELMMw90lzTmKGTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgweRDMh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgweRDMh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62AFC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768740233;
	bh=nd61JzbJCUIw8I22es1k9yXlERrhFun2OGBlo7+Umgg=;
	h=To:Subject:From:Date:From;
	b=TgweRDMhkUmtB6Aoe1zie0gL96b8sIqsdQkV0uFzoIDvU5hySVtaowmmQXjACgky3
	 u++8IcMFQr7YkGO3vAOjQpNHGNg4k2MJeywEy7bFQJcJc2qtlZg7MEr0HGwbgwDazQ
	 9miOj9pIbvPdbWyTxbywdgzqXx3gfITpzp1HXHaCH19iHXu24Bpq3MBfZC74tI8WkQ
	 m9FllCag2OATskBkClH8YjyC+JtCTmyMNlydCbjeH0995GoalSqpRWmbL1Q1kbCZ9a
	 49c3ZwOyjBbhdZCo7yw8ybLzD7htg1qFnXddVlo6aJP9wPTMucA1QOJlRXoCpPcg6D
	 AqVAjaK9PQXsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9564DD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874023357.4134.16482963885780970563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27ea7fcc1f972ade7737241d4e1c69cc8799bc559546d6bf34bd0a743651e96
Date: Sun, 18 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768740233
