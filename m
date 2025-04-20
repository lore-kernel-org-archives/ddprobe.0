Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483041CA84
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745120994; cv=none; b=XrloVQl6fcHWwhK8eIoSygq3hIIBnrDWsNK1OTro9ZXR9RjwJLN8urTDL1w0c4lj+3tKu314Y9E1UsILd97lloTOzr7AZOa9IOL/5w/2NXjPeCN/bq6jg084fi6tsTbejOIlIqSZGWfZOivyPkLFK5mNlKsrJfUQAJ919gdMq4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745120994; c=relaxed/simple;
	bh=3+esQvaFMnLP1IEPx+AOCFuC0xCi0oQvVzse5+QlTDE=;
	h=To:Subject:From:Message-Id:Date; b=Cg7R/PdNU9xU+9E3fw4wtFScQQXugA9ylwG4so+KUqInQ97nkxvJmrq7YCAUMkniuxU5oYMbbLeD5CqPvkRWSWpNBDW7ffXBmVuI1mv8SjLppz1f0l9RGEhcardF8XcrHRGyFl3rGT8GqN0iwY5ah/UOJiLUSPkPoUsmw43w8Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JglDHkqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JglDHkqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA424C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745120993;
	bh=3+esQvaFMnLP1IEPx+AOCFuC0xCi0oQvVzse5+QlTDE=;
	h=To:Subject:From:Date:From;
	b=JglDHkqf8uQJvUe0Jk/w4LIaPFs3ETPENLeE1zztjisPMDT/bM3MGhO15jQvKy+1W
	 QNMO9raqb7OIi+GlvThrB8i8sQuYiMAeBz7ciDydf4/f3/GKYSFfdRxhh9oJIc+b3u
	 FijRyOGoGnUPUgUGQ0mwS/PB9xaTbWwhkR9UkT1ATqi//AOaNHY0y80uuTmngtNhMv
	 v13a+VAfvwRmW50ThMeQQaq2ZlVjaNOqsFHV+PvQwVU6kkulo7lFPsTa4L0eir+k6h
	 K6gqdgrINmosR4MuwOZ8JvWX3xhnwDC7A/i9tVTgEeRKO9Fo6XJylJNQM/Dj1PukVw
	 etL39mgQg6OYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988A2C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174512099358.20479.4660917211041945922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64fbaf0b95b13b38d613a6ac48dcba181ac582932fc62d42be61ccd7f6c73cf
Date: Sun, 20 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745120993
