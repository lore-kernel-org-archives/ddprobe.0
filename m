Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAAC1DA61B
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746110994; cv=none; b=LJpNMV1MTeqs4qJ69LyO8tcViZHK+M8AHEWdI5NWcHtT1lM3iFRt1KShP3XKPgKraBb+L97zB7G+8xg+Y+Y5Ys28ldtQoe/ce/42j5ItTjZBAEjlhXMX6rR/fdJsSmAbZl5F8CfqRIjqV7F8/M7pwn7sxuViBvFD/cjMszhparA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746110994; c=relaxed/simple;
	bh=JWOJsufJBp8lSGKzOCIIc+3fobAzThzycTjUWzTAbzQ=;
	h=To:Subject:From:Message-Id:Date; b=rCrrnHRlof5njCn4kuUJBA2hmPia5EJDTsiaVPrBWh/Fk6e+N7U5y5WZL8g3V41KQ4yT0IR7F8opPohht19AD5G5q4Jcpho7LQXLQHt4kYXpH52BpKLTjRB8/GOCOrVyxo7KDSvH7Ap/npnmX6AQHs8cMXFHuoX5Aj+fuYO40n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STKrsRUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STKrsRUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E73C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746110993;
	bh=JWOJsufJBp8lSGKzOCIIc+3fobAzThzycTjUWzTAbzQ=;
	h=To:Subject:From:Date:From;
	b=STKrsRUKIIaOlQNOPKv+idkU4CA7jlIYTLlm0iv2ztpP4+jeLqvI+L3sYUykicEMU
	 /a3c0XsNlnlPzmh9Iq4/E+z86evPilhQUysqjNL5de1N5+G5TU6CSuzQs9JnZPA/Ur
	 i/QVurvmPCvwRDtgEOjjYZi6Z8tMh16e7uhR7a9QhpYD7YdA6860cey6vKJUmkgCJ8
	 Bti2F3X+j7FvC4HClylGkzmo4eHRDt0YUXwWZojlgT6Q0MZdeMA6OYDqtRKqnXkyAe
	 b5C4nbBwu+c5NMrfl4nG/JuBSbqxGH7ffISch3GDCQjn6ERNzRj2wHPDSmOWOfMjd6
	 09+hqbBQuKfMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F4BC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174611099357.11859.3389800127795162875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c2c4716e22d48af6df813385f832ec0927b658c72fb4bea7b18e4c96c56a1b
Date: Thu, 01 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746110993
