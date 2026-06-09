Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED9040D583
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 20:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781037334; cv=none; b=Or+io3nilmJkqol/ojlM6GfG2wZqJwCp2gUEWrtxSKI1Cy3mhwzOoJMIB9nS4W+kUrYZjqXFYU1mixvw7PcYV6XXKva/1y1JLguI3t5b+jUU2j3VjSZuP7tbeEWM9P+dGSiJDbyDJa4oBro4hIaWpr1myKU7RQWG/vX9kC4+3Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781037334; c=relaxed/simple;
	bh=JPePoe2xoKzppFBNC6MnN3a5fob5eBULZA6N0cLTbUs=;
	h=To:Subject:From:Message-Id:Date; b=eCE/931fs//21kUC0NyAiP+x30oRfJVgAaIc87XL30twuEUKWxhWDzqKn3RgPwgiMQ+5DocLaEOeGX5wumjBsjQLkjxT4ql0u6901nkl2VdAE/VhsldXk1yZCoBXWo8ILA9ltwWSeBcKZyId65ffY5eSyQ/9uhP+6c9CX/Ax5jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uj2MRLzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uj2MRLzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0888C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 20:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781037333;
	bh=JPePoe2xoKzppFBNC6MnN3a5fob5eBULZA6N0cLTbUs=;
	h=To:Subject:From:Date:From;
	b=uj2MRLzFpC1UnD6K4juypThSVwe5Lo/+6LIIKefCizX4FXxT0xKC1hGama1OKjz9I
	 S5GaTtc4FlhievFQmKk+8+igF/LQKvKJDotNORUWMaXJHG9rH9ZEoFK94v8lwBRKas
	 Ep2Ht40MLKYcf9yK8KZys+sV7UIXDAutOt8Ejzi2yDqNy9hnTWAjWwqh571bWueDTt
	 wGwF3C2VZg2ILjbrt6ItFbU+3KgyviXqLQejmiItJCjZY1Ia+CNxItNtzC4pQ1Zq0d
	 v52DrUoOuuKxsr1Uv0XiP+Ih7DeODbR0gpsDolNpOpyDanDjseOsPNnW3GLsPfwaBE
	 cfrqLTMS6EfrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23F3CD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 20:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178103733371.24291.10740147318911535824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49640ca070844164e0d506d54206fc9a0bae9af2555f335a16ce033f7b632fe
Date: Tue, 09 Jun 2026 20:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781037333
