Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D621139D07
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732620354; cv=none; b=kRRcN8O4jdDq/vC/4MVJRzX5deQ1VJCSh9UK3VfiyB5/bl7WMVjhNRwRkEj9QfI8OHXVmfTGh5oNROQTB6bxdGI3C9krMo6UvIUwxsuL8Jw43ZzYGA2ZDjkLIFNE9fuLoCyEJs6VRPPIHCR+3q2OTVBPwqrur4mESVDZqBOfDhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732620354; c=relaxed/simple;
	bh=XTKB1UXnaU58rQ8narS8rUzGzdb2lpYKNjCRCkip0Co=;
	h=To:Subject:From:Message-Id:Date; b=ZBPrzIiREy3BQ1k5+aK5U4L9Oq4PeQmYfPQrPsX2ihsopta1iMHRSAJhrFTarxXAzJnmV6edIyiPOK6ICn5KlOkDaHRBXNQAeQZfVpBXiaiZJS5cKhz22yuHm1IRVf+3Kfwh2FSRiZFa2JF1wGxDAKPg8AT+fmmz1zKTCarNoI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sc+FpzU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sc+FpzU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC725C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732620353;
	bh=XTKB1UXnaU58rQ8narS8rUzGzdb2lpYKNjCRCkip0Co=;
	h=To:Subject:From:Date:From;
	b=Sc+FpzU/mDgeHoQ+1dH9QuE3q99tDBOCx6ThrPqUcv1ZFo2nYC8m4ZKRvR++TTnqa
	 CNK6nEcgOHvuZcAViazvnpkEPr2gdlVo7wwETaLmhnggxvfqQn/Gax/lwEsGMX8CzT
	 0Pdmp/lqr7ZhONy3lJi/POErThMO+0k6postjXn/P20Py5xxY05A1nG0bDBEekQ1i3
	 oBHub8pjvDtaMI0bKBmUpp64TcMGiOjwUtFjlLfzfDL/TSNiXpfcBcykdr8oABj8mN
	 wMsFoSxUrYrSHxvupv7KqDa8v6FxOHokaQAYuspXUXTJQauSI+5ZEfxEl/E8zhqbJ1
	 HAwkJwKOyCYOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A552BD3B986
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173262035365.28629.11209245861062950888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 803bd30e5954e0a151327afa4f29296c5ba9f4189fc68b1c383b45443386e1e8
Date: Tue, 26 Nov 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732620353
