Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF2A2C08DC
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779419554; cv=none; b=a6hAEshk8yJnpj+WcQGx1tVCHcen9aVIg1IZQxKZc/+FgIRX0Zx5DodyPlxSwJMDL0df6onoIaOh+2xtnEUbypJVlJuH1ERJBEpVZ3ZWo1ooUpuMRD3fLFe4wcl4MJ/p2fPCpfhW0x05Mb8J0F8k6/i0ttfYbzloKucYJ2kefng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779419554; c=relaxed/simple;
	bh=7QDT39ekch+vk48ZHR95P3KkEvPIITgniCnxNlDYF7A=;
	h=To:Subject:From:Message-Id:Date; b=dDeziir+osLNyBHfakLvxVm84GIN95qQvQ1XpmFcKIa6pYyh2SaUIvYambB5F1nkSyxJGmmULswfXlkFepFKHJ/Cf672KZvsyaPG9FHzQe0Klb/5gcR7bPVFQsNDnKrSOngn4fTaj9w2sqZLYgTuqPYnvvNWKASeAxWbeaiy8MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSd3hQxR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSd3hQxR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6090C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779419553;
	bh=7QDT39ekch+vk48ZHR95P3KkEvPIITgniCnxNlDYF7A=;
	h=To:Subject:From:Date:From;
	b=GSd3hQxRSCKvna9HPPeFVfhtB8R7TrO94x1cmYayVI3KKUXhxxWIuwQspHow1TIB1
	 dciiPU1F6WIsYNuxuZ4QthmcDbVFGk7zmd7l1T84JdKWAjvhA058NdvEVBhsz8b51v
	 vvIZ86yZweWD8AKp0XvFDR84f7FNJNwxEHNV4Puq7vhN2iQxgLQu5axhCPAxbL0zh0
	 L/DzoXxTdTEdlvNt1YOAijYPjyqmmsn3T7M1HTOBbLvWqH8A1I3VnKcQBOTjMTPmN9
	 hwP/CjF5nGo4+NqXPi4ZVnK0YvY/ee8I3pWdySygOyzFAibJxGq9jwR7mPGVoIk85/
	 UJK3uKirx47PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAB0CD5BAB
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177941955368.317.9514418634236498024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75dc756bcecbef9b43d149e66e92b4c4d873925c135017bc72c39c175a595af2
Date: Fri, 22 May 2026 03:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779419553
