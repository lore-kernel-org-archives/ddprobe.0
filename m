Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DA339ACC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732934754; cv=none; b=fl6QcNmFFXIEA8Xl2/oH71vyl2GiZ+N8AVE1mvVznucDPRXgru8ypyte36fPc9EMmkYlw/iE8eccdLZqBXyO8WRi9tWT6Lv00t7IU0nHlFKPP7kAnt0yBut0N1wYfFivWOcdaEYP3ptGk56zaGlqLdpyCky36YY0oT/Mj/vKSrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732934754; c=relaxed/simple;
	bh=jFUxV20RMbaNUO3opwjnCdw1XY386ZKgCE7vYAdA3nQ=;
	h=To:Subject:From:Message-Id:Date; b=syKGZ8bA+0noOYfhbE9dfYoKJawhuvEH33ueasrPlaQdROVP7IgH+X5ot2LMxr8fXWrr8cwKXc2xP9i4d5U6ZN7XcVl3miBb2wVBZUB0U+iPLJy0n0Eomzr2qbTIpPBFvcLQw0eBVTXOKiQhf5wLXvCsiOqpcwzhSql6vzuE6cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoDsr+CM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoDsr+CM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38F0C4CECF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732934753;
	bh=jFUxV20RMbaNUO3opwjnCdw1XY386ZKgCE7vYAdA3nQ=;
	h=To:Subject:From:Date:From;
	b=PoDsr+CMHt4HHnV+NhzXlqLjki4j+qyTqul8ATecQ3utKN+8bKu1TaooX2GGCanGk
	 SbL4OVzhVQK4CisyQZkM/OJ2cNr8RP67kb/toeuIKKie7z43He+gX14A8h+zoZ9fYv
	 HurSZtRx0Qw6HMuUL41igJmB2DOrQ8I/w4EcomqnaYnbhxaVh4hTzP0oTi1L/asArv
	 IQ91JVleFy5b4x/8W7u4WK5k8c2jI4weF5AJgn+vjf1AnATi7pJf+7yp/H2nfzKBEm
	 6TlSgO697LgpNKqHVjjYNGe1dyr0HbTYTmlJIsBu0T0yfNuce5zs5BaSiTeysDGJvF
	 i2FW5nnQNRLfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F36D735EB
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173293475359.32494.6865373235516849335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf2adf6e5918e0c07c8b210a567ad6598bf5325abd557f3fc841f6aa3b08056
Date: Sat, 30 Nov 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732934753
