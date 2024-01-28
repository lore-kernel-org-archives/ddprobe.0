Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CF523745
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706436497; cv=none; b=osTVxVywooOJn9yz5qPWi2b1mSM0a90ZBUnqE57nG9c8quyvCsYLgzpAO8QHcAY36Z9qkuiZXl4AwHpoNAQuTFRQW7l6Lsq6ePzGsEi+mvV7Zcu8wN6pBIfOF8r98m1rPNPz5fo8/qHWzDsUk4CufRyJrjMaUNIzb0ykK3nC9S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706436497; c=relaxed/simple;
	bh=hWdCOkXHNB5ApQdUcpJrvBrBvlGJ3lW2Z2hWDTlS058=;
	h=To:Subject:From:Message-Id:Date; b=NH13QdE5hzJEXFl3dbiHXU5qILIaRfLHyP3KqB+SOgh4E6AKhV54sSRYyKzFz3EX6PIV7vn5fkjd+xa36HB3uoUT/F9SmDKRx6ogVWt/bxmsoIdoO3DikWPPECg7SbUraQFVoPMjKvEAWMrh/PexI7Ob9p3CBWuoYBeM5oJ+kRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emzvZ2aG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emzvZ2aG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F49CC433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706436496;
	bh=hWdCOkXHNB5ApQdUcpJrvBrBvlGJ3lW2Z2hWDTlS058=;
	h=To:Subject:From:Date:From;
	b=emzvZ2aGAKTvaUQLUZ/zo2Aoq4UVY4k6EbYsN7K4FX0uun6tQmWxtNJEVtEY3YkjI
	 Mdj12ittzif3lMYnk7Vx7QT16fKIGlKFClLtS/AIhLwmA6dYb6aHX3YoCx6ERqQdmb
	 nF5oeqyqBR5aTGAaGOJkMVbnhkqDEQFu+7/naN1Bn9EI15wBSTFWYTUwE8W3W7YSNG
	 YTzYnkg5Wzsat3aGR9VfQ5rg0V8SDCG9dYGfPU9Sz5f690o6S54biU+N8oWji9d2xK
	 s4P0OMAXe8tzYeJo2Jgj8FQYlBHCVKt2H3f1xW5jMr3GIo/QEkIP7pbAo7Kj3pb0NT
	 YROHVsNtmsd/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C6DC47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170643649639.10489.8937109329660706987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6961020799f4fb0bacda82f75fcd0b92a307552360694ff182588bd690f186cb
Date: Sun, 28 Jan 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706436496
