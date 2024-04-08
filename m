Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9DE13E8AB
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712591896; cv=none; b=HhhprwSX+kVZcGhAb+YU3kVqhxlaYMypJZqCLbM0nYqkW6sW66Bn4Z2cTBE0SvhsiCtC3h50dIAmp4CBZIenFEv9eHIJPTPCsrHL6ADQ6cPXYMWQ8a3aYKGvjhL+TDsU0hRzPU4sbxS6wO2mPi2vuEffYL+TJn0VedIiteb44SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712591896; c=relaxed/simple;
	bh=R9fOzONmBqVqjbYLh7aA4I3bZNcqENx9lyAoAb9c7fM=;
	h=To:Subject:From:Message-Id:Date; b=d668MYwhHYnThkYOnYY9l+/ks23iPwPLzj2IyDiZVCknWebVPaUCQ/tVztqvwsZFrNFrMKevHEWU4n6AcjyG36Ebz7xnq8AiArbb0NGebZRNZVZFMJYWvFfCnOmCUF6uVGIwjMj9NcjX2lu9URIa+IW9oziFBeu1740UjOl80h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch2+ars0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch2+ars0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71A76C433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712591896;
	bh=R9fOzONmBqVqjbYLh7aA4I3bZNcqENx9lyAoAb9c7fM=;
	h=To:Subject:From:Date:From;
	b=ch2+ars0pWtO1ZAbd/Hu59hmjbAJFxaNkYQukQPMEf3WueJEe8VXg/dD8cTSu64mz
	 V7/rxpxJ+1KdYBj989FY9aGMsn0idEeYCJCSdUGeoD7LJgKFDsr5VEk6bSsesQXzg0
	 mZvnna4U+IYsWSuwDtfUvo9dC7k96Kw+VwjHtkvnjutneSfXLioVJHAydXBRF6mwki
	 plU8uzZG8kzcezqmh4oul3JWEEC76ag4zfFJwujcA1Y29GUairkIY+gml5fKqrqcdA
	 DnpN8OXzPcLeBk50Z1a7IeExQB/3rT35HKj3SVrLxl/huhQaomQmBMhan5aK7Bg/YE
	 TwicfIXRosGVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61645C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171259189639.6401.10586115835226939796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e9f310a23296971b175252b4d2f004fefedb3676e22cc60b3a826cd3c287b5
Date: Mon, 08 Apr 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712591896
