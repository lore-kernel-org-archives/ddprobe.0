Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2628D2F4A1B
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761046194; cv=none; b=fL5mElciKiT9jwNUkrEfZfXlanw6uP4+l8YEY8FjXoV9z0A/9cdRuAOFvNuau0trwMpTQU0u+oVxZCX5WjE1C6vss/e30ZmUv6H0kvyfFD+fz+hXCJGxP5i6AO2Md2ISqOQEFUDTGIxSP10rnjGcrEKlgJp/D5ZrKqXhKhgAg0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761046194; c=relaxed/simple;
	bh=OfdXOqkOZGuc8xEh7NbqseLHvTrDiL7inZhPX5M769E=;
	h=To:Subject:From:Message-Id:Date; b=p4FJurBzYgXxQYXqH1C6Y/4tBh6c/nxS5UWwkn53fp2T4PZZGopghmkdSZCLdR3o0dzjPPJCAF38TNfmtfxJbNuYa8UQbwvVwT/JSlQZwHYSmbOEzIdxd96hCH3u/0lWMeDvp7UzN7TV3Rly3eYvrqprrdufSBiARyZCXNv4O4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Adw45F5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Adw45F5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09ADC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761046193;
	bh=OfdXOqkOZGuc8xEh7NbqseLHvTrDiL7inZhPX5M769E=;
	h=To:Subject:From:Date:From;
	b=Adw45F5vDpEvzwHmqtBXql9IorwICH7yCQqITQn4E+SX0PUPDJKvbJ1XAuAMr5FRs
	 6MX4jSOMKUC/3N5M2vyJKOLt+tZFnNneDzke9oTLPR8f2PvSnDY+TD9OWTjx5nte46
	 iE31rHYS8PIBMeriv2APSzUZkhJVu4m1uXkGgH3SHIgS+9woUvUexPA02QGG/Rz89E
	 ExrzD1ndGXNISFSwqX9dWdVUCPkIaE3dOg8TMVWp/WTWRwy9E8vR26efrucnEZ6rk3
	 SLF6mzrkg81iE2cpwsS3bE571oBCYzxCW92jU6FX7vUxf8TckumwZlUk9xkkDxfHGl
	 IX7/KS86XaeKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913F6CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104619358.14251.93051548497500314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e44dd7f20dd1679be234be193e06d057ed7c5dbc18ee3d0eaa24f41bd2fb251
Date: Tue, 21 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761046193
