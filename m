Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C3C380FF7
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792134034; cv=none; b=J7zPjR0Dj++nnqWi73hRvhPNTrw0Jyp7WUCCmVLR8RVU7NcuyJWvH8Z6HPIZ1w83pXLtux0thaOJNo0pXMos++weKu7uxlLqI5IcOarK+aaWwteefLS108KlK3KBYZmpDTqBRmCRzXOTxlGoxnrVnM17iM/MGRuUxcE6iOF7oUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792134034; c=relaxed/simple;
	bh=FmXOzILoJA5P+/cEoabBeT9s8XyyqXRc48BewOE2Nhw=;
	h=To:Subject:From:Message-Id:Date; b=Ng+OerVh0vMpNEEOPRkxvNPCyU5/CQ5KJicaCCa92VpZmnyug9KkinmTit1C1AhUdy9ZGOfHr5JOF4tpJGI7Nu5LsDyCIFQUZR2YE7rIsIzrw8YPz8fT5LoFAhQwjzashVs9XiChRip+6yTB2cSjDFr7xBii0gUpz5w5VXk6Ktg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kB6Kl5QZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kB6Kl5QZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA85FC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792134033;
	bh=FmXOzILoJA5P+/cEoabBeT9s8XyyqXRc48BewOE2Nhw=;
	h=To:Subject:From:Date:From;
	b=kB6Kl5QZrFLMBnAGu+rXuyCnyP+tzjRQagbc2j6kDw6iBTdJvDcNbYTeyLZwgATdG
	 RwXQwZW19rEJpK+3xpa4AWYviVcAAS0Twq4/PrrITPQC1BhfwAPkU2nRAAo2qIlNbT
	 vXLyHJU3U+XJBt9QhQBj5JGGEgPBlkCq7Jcto8I0/0FbA9XQvdn70A+58bDMY3IUQ1
	 He/t2cf22V4id/U8irWqHcqqI8mtSeLF1S9liS1upxRb53DGnEEiudMqCpgFgx/1KY
	 ogkn/Yom51iJYcZdzJxaK+eAJbJUQLLivznGQ19+Q9mV05oIEBr2qfHrO7cKIvV8fk
	 cmn9vzHuRuH1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA02FCCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179213403368.2438.1621612648637954659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e875920fb11f466ddb04a141dc120583af8448267935ada6275e48c00fef5194
Date: Fri, 16 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792134033
