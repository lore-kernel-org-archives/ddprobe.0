Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8701DF974
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744359594; cv=none; b=EDzrptHoHZCnv4Qtd6QEKqdo7O1moVVC0DWQkxerRvb+VuIcPiNPTvkwRcnWHlW6zKKxJFpzzXi7PGCliF5MsEYJ2m2IxrJpdLZczynOlkAuyEJr8q6645Ow0XyENGDcvbmgx3RgwheP9c+e/TtbOb+wSv7d16Onqjizk1zFzoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744359594; c=relaxed/simple;
	bh=r6eV73LGO/6vIt6kFVpeZ/nlFT28o22tT3b1PZeeXqE=;
	h=To:Subject:From:Message-Id:Date; b=ZNWPhM9sc/1HtiQ1qurbqj1IccRcK+iiA65k7beqnE03HLSDeUPthRqJzkfGZaYHPd2lTeyuEpK61VvtKaHINmyg/XTt+9I5e280vMEN2V5oERCStjpCLOOdQ/KVB+PeI0I+YX0wbWgY7DZei5b0fM2+cNNwmscVrz5YWyjPxiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRgePPhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRgePPhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6136C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744359593;
	bh=r6eV73LGO/6vIt6kFVpeZ/nlFT28o22tT3b1PZeeXqE=;
	h=To:Subject:From:Date:From;
	b=NRgePPheIkhRjxXlDUMKOibKXj+sj8qRn+gejM/IWlRzGt4w0U6/fplRSQoKwzSYK
	 OP950DTaQiS5lLCh/MWxLLUXyMbU7FRCgzTkMJdsr5fTpR2g1XSqR816gqh5ORgxZG
	 baEcbl3TCM9PymUXPo6VOr4O89uI71ZIHeZ/kOdHNZLLmPzJUckGGV5S43TIAAyHgj
	 Dc+sxfdBjztKhAGS0VSAxc8VWINC+1NfKGIVmt8PIdPHeki+IO3GYCi16GXAi6rRtZ
	 jUq7FRysNdeoHvKVyYrpzlAD7sG3nYwAfOi8JF/1I2VueMbhJeME52EnddHjfWMYZI
	 tynFQM57XuPtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91574C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174435959358.17042.715044354394756769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9867cae2c03f9dc3ec74719db39c8bf6de9c2db192c433926d747fb7af84a0
Date: Fri, 11 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744359593
