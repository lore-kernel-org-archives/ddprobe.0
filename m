Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF74362133
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784054914; cv=none; b=rpOhGKr9t9B3nVOyeCdILASLCyv0NTJwKbTbIfuZkflnl3fZFvz4lYjM088QbUvI4t0e4hm5fQxhVXC+yTc6EnIpFu/gXncBDi2alF4z0z7Q7aj8vI+VTQiQBLMYWmKVuowXuw26Eq4iraXzvQm+7ow3fs6Xi1NbJk5zbqqSEtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784054914; c=relaxed/simple;
	bh=gt4U4tA4o6qZ+rBRYswke3UIbefcmZUhG+/exmb8fY4=;
	h=To:Subject:From:Message-Id:Date; b=COTB7QgAvxtd3L2OJzBXhC58Y40Hj6NsOdB/KVui4bVnHqe9jnH6n16PvoFaIUZIhPjG470/TDwTnSiu3i1Vgq4I9mspPsguZwHrun8L5lSkE0m3lrDOlbc/5ouUZnvX4S9KFCszPzIV+YYvBw/W40k28sJhGyqEYRH+EwjpdEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyzUSBu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyzUSBu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9374C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784054913;
	bh=gt4U4tA4o6qZ+rBRYswke3UIbefcmZUhG+/exmb8fY4=;
	h=To:Subject:From:Date:From;
	b=LyzUSBu52WPDPoGwNOeSZsatWaRIgu82BrCknJZBD13Q13Stv3JN7sA529h+ZOJrU
	 1bBbFXYAjP/QI81qRgshweSJ6D5NfnTn9AkxmuPTUv4e2PfGxfPk8+tvAGWGpW5ORe
	 zXiIDq0Jkoo4zZjsI2fq/KHxwrecmNVUBNNphVhHR8ybN4ZbVbP7OymhOZ5X8HxzLk
	 nYaGyidbRlr3UTgEtPIQy+eLobj031Jvc8+hdGfoUBG26yOkjOLtpCvzPspcY6ybON
	 ugTZDVmTONvrTRh5TVfpJdQL5RrPa+qkcNihz7VGAm6sDC/CKsuJw4vVyM/t/4WuRj
	 88Bf721HwNqeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D4AC44507
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405491371.31937.3503406663744407333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 808cb0714e55bec5cef5d9a2417aba005d84b1ea8f5d71a73b0b6226ae84c1eb
Date: Tue, 14 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784054913
