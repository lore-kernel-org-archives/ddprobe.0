Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4168F18DB2A
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778463034; cv=none; b=fuDVsDKJH6QxDnArLQp7niolFg0bYkzR4JrEf23y2su9/YzkPl7hXeD4y9D7mmQMJpK6syi3YpxduZLTrubTV1fWZIzSo7G4CFhA7DNfblll2MQd3Pd9tOt2vKsvZMRILYqufsfnl7zldhlCR845WSah1dacq/Yfm3y3e98Hrlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778463034; c=relaxed/simple;
	bh=AcKUwv/evxW5+ZELK0aPFAR1kqh6DF6bEJiveD1MAXc=;
	h=To:Subject:From:Message-Id:Date; b=pi9s3ufQk//5A4q9tN47jwRbC4A87SKDjh3PsCunZ6HgL+f5zCqqVNN55nyan2fV9jMjr2RhF8UmoxvbqbOXg6xkH4hKAqxhdJgAsP96GTbfWwZX3GkS1O3I8TDHVa/plOSS1guldx8vEa/9gZWgPJzNL9ePBUeUrszbwRQRZVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhVQLJet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhVQLJet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD86AC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778463033;
	bh=AcKUwv/evxW5+ZELK0aPFAR1kqh6DF6bEJiveD1MAXc=;
	h=To:Subject:From:Date:From;
	b=BhVQLJetWLl+fcj2Z2rwKzWWHRXGzHyf2nBvSBm/sHrBY4JD6PV0QyZT2fgZg3van
	 y0w04qAqHM2MD8CFaRYg11dITvR/N6pi3ymcUUGaeWKxmsk/wAe7n/UiZGaRB9lQOu
	 47ras3T+d0ppifQNj6V95WYWImptDYfDQUxXuo8ZZVXfgpcnxDQLeA87MI87xsNhWC
	 7mzXoIMR6+xC2gdoaaT/RNxbHp7khvYYqyLla0DuBDntMdAS57NbNeJkzvJSD1/1nM
	 FUlLlc4T2zIdndKX/8F5qrrI5jonpsAeqEWNyEMZ34UqUVBAqsoZ/aJ06ae06GcCmx
	 34KUb5bd/CoxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA75CD37B2
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846303373.13206.4265825274464017026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf1692f58a384f304e4e2f2e9c38b85d01808acba7b7907042c3f6d2376231d
Date: Mon, 11 May 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778463033
