Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA9E19046E
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 06:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717570583; cv=none; b=nrBEnsPifWOdcTzWu2/n836W+PkySC0lzO3zpFgO6OhiROZlB6P+MwgBQqFwCkqD60djDNiv6rc1SrioV7DPa2KaqG7Z0LcL7bDs4Cm60Y3KlM9O1I5iUIWOgVprgd7GkY4ojKu6cxIbmwF3K36YfrQinyfB//iVq6LjLJQl2ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717570583; c=relaxed/simple;
	bh=KmNXyNSljcr8vSvgDGnra+lPHZLZPj/seT9p4wsiUH4=;
	h=To:Subject:From:Message-Id:Date; b=fVyVhCD/EPfUmS/LwlvHhQLOBNS6RmsJ+eG8aUN37fZCakCgYyhw7oAyrmzaWogadRb1MtuwBmGeRc2FTOZzs3aS+O/2KIuWIZWlXBTfF6+zletg9A5O/6Sa2a3Br8Yq8T/LBoL+TXVe23/yIK/L4oAP/1vFnT09DxXugS+TDQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYYPjgVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYYPjgVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE084C3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 06:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717570582;
	bh=KmNXyNSljcr8vSvgDGnra+lPHZLZPj/seT9p4wsiUH4=;
	h=To:Subject:From:Date:From;
	b=kYYPjgVosaZrKpknMautXr4ZEXInhptuH39g7AUyeEAtfnxIeXymFXs/DJKAGMNJ3
	 gWJt3QFzgiPrJZUEugdWbydp7bQlce52Vvr7eD9Q2Br9XRTaNeBML6k4q4vd1JjBQJ
	 TNr31uxyyhW4ewNU+PYvZDBshB5gAshatsIdbkZAOpR7On6KMAxzOc8dqFM+HzGso8
	 C+WnNtvPZB3oKF0+SzvN7a5WXfAbFtmecEQEUIOJC4qFkHQCAwiUd9GSYxlucz3i2K
	 XJypLWHT6mqt67OgN95q5i3PMVoTr+2Xs7neWxsW0+HkhpGFeH02dKFlq455Ia+H4K
	 2bt9J7Zl29dUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE0DC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 06:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171757058277.27760.11756478526257015117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a31fbde74a072eaa18e49d44a6c4e2feadc2d0b517990243581ca71aba2b9ac
Date: Wed, 05 Jun 2024 06:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717570582
