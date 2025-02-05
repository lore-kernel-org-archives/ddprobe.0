Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F75155335
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738785354; cv=none; b=OBwDZTjNRsjyKXQEA4q3USkONdvhENZMZFJAeKV1o72AD9cBcPXNbi6loSKL6qZsTSecpI1Wt3NRjkxjXTGdPGX53pEPd7tanfbURqUD1d83lTou512idVb9hU7n5rho81mop3RLZZ8Jeq/uyjZSzXuRZt1jhSgMpQoYUpaWN6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738785354; c=relaxed/simple;
	bh=BpYYWb2r3nPHKt08b3s3NuMH+Axj8XXHYvcE+qsNRO8=;
	h=To:Subject:From:Message-Id:Date; b=gAoZeGjk3QOYfX5PA/kn1X8OasnycLUyYJkXfHZkbQHqXdIUiZHMuFoGMN9Jlyi5PiJCiUQMhXc4G80PaYG0rAH2u2HQ0GExgIR3ZXRxjfyjK21WtZHDt8jTIn0vrcn7URTkCyc+t0WsBdxZnKqVUkPc39Q41PZas7onzxVsf6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmMItaeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmMItaeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FD0C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738785353;
	bh=BpYYWb2r3nPHKt08b3s3NuMH+Axj8XXHYvcE+qsNRO8=;
	h=To:Subject:From:Date:From;
	b=fmMItaeZY3EjMHDegYQTAClKu5KW7m3ZHdDQ0/Nobvsz41L8A3D7BBkVYn4Ser3bi
	 CChMrZAEpU55eQ7+QeiB8ihxBfWyV+47+PW2f1zupPsZ0K2YgHzJL7Afnkl2bAJVMz
	 F7Fvq7rBwcpc5rC54daCmDt/chkebir30iegIFewMoh6qQYvgEjWOEbEZZpZJ91uhM
	 Nquu47tq5MlybWjizw7gSiyd7IWNholAk9n/5sYYwUw3sgKr7/OIu5EiA4IJPzYcvJ
	 3r819bEOuSiMHHYPZ0TqCIFJYgqJ4SYgnAQ51bY203g1BBEpi1Tkv/HgtoJhxqrJx7
	 67wHMzQy6Rsnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7297C02198
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173878535367.24562.17478588662944188169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720bf888de5cf6de5ce3d27069f5bd59551ee5f7d19906e3f291f1060f72f023
Date: Wed, 05 Feb 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738785353
