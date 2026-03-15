Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A46260592
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773615894; cv=none; b=rG7s43oQZADXnHasDUPjRMYQjiKhzUlh8R1Gw/QRaj5sB0koife9E95Y9N627DYx31NnizAu8EpCUJ1WtpRrdZ2rP8Eu1TeByjAEBhJnlU+bcoJPQt6MYKg6qm335xjqyqPURNI5kakGfFyjNXIlMd/jPuGw53h5wJOnW/H75c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773615894; c=relaxed/simple;
	bh=YjPX6TG7t6NQ9rIc3DtK3taSetkrhY/HvNcLBJvpoqE=;
	h=To:Subject:From:Message-Id:Date; b=ReN7h59XP8cwWYqxvE3+262qNCwv7LdQ/pFFCc2HDLewltq6mA8M7cEy6DwsgbEn8vwtWPYGYATLaaINZmennZjKn5d31Vodfvrm0I+BpJZYnmMWMbBIoFpO24HW2iet3cNGemIY9YTcP39kIpEZLarvGXZWmjMyzwaYq6x10tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8LUSr6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8LUSr6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8755C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773615893;
	bh=YjPX6TG7t6NQ9rIc3DtK3taSetkrhY/HvNcLBJvpoqE=;
	h=To:Subject:From:Date:From;
	b=B8LUSr6OxhYqzfjA8t2bM4pk3Zpqgpdn3kQbEOz9DrIUI2mcIEo8addF2HITegQOh
	 v7WWpkj4tZYx1ZSGFb8grRU/PMITcJw+CnjSL7rd84wU77AONxogMlrP8uSE+uVw71
	 Frty5q1tRDK0LlugsnYNLxipr6hCzc9xh5fkI63uM60RdDudxPfv3IDgsnLC+Dibl3
	 b2KbFxk94Eiv7vM1J9ktZDVjKAxTyTxQ6IU0klFwLrubumrFpkYemIIV7l1vW0JYyE
	 HFkiSwoRIVOnB7q8Y4EBfyz139Vegq/NjP7m7QgXhGWOkN5HLKoSXX+pBmZHqpinG/
	 vcf5evuMbnCpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AA6F3027F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177361589358.20763.12354827716935519507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3eae0016fd17a9985d39abf98756bf7f9beb5fe829ca9441be098fdb4acd85
Date: Sun, 15 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773615893
