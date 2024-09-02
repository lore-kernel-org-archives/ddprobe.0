Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229BA20FA8E
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725283554; cv=none; b=ZxH5IOYnT3k45xLEQFJ43UA1ekhT4A76wMY8ndDugdGd2mmwtEMJyh1lJVILb8FEgiIcXHHo3nhUtabjVWg8JsI0LivrpFgOdH2JVSNtMJTsxrToKaY4jofKC4zdikpN2fdc+uP4EwdHdN3O8/FNqFayhJEBgBga6jvO8bciCSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725283554; c=relaxed/simple;
	bh=r0p4g6IQdsntJ0k5wEz9qrCZWOu7KRsr+gedWwRYv9o=;
	h=To:Subject:From:Message-Id:Date; b=aUv5I5rZwI7Grv92EO4xMSl3MZOwIEF14ZhH1IwnD00HEkBH4Gg+ovRKbqlg9Y60r/d1r3dQPVmoSIxJ7cdLSmt7JxSQNKXXmEXTU60XNTf7x1sNfG22iRFm+Jg8Xp70PbnC8OmUvQE8Fn53b5J6figY7mOMZD5haO8FHDJt+Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJIg4Vy8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJIg4Vy8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB69C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725283553;
	bh=r0p4g6IQdsntJ0k5wEz9qrCZWOu7KRsr+gedWwRYv9o=;
	h=To:Subject:From:Date:From;
	b=WJIg4Vy8EYehQYixldLXgmZJf0hfTZsQrpG+rHulGF4y0NSJMFTJNOPneLD0QdIjL
	 RHOIbXxP73OQcIELwT70Q2KRLETj+tPB9kEj7oZptwkmzBbzOJQLae0i8MhTZ/+Ka/
	 w4KVe5N3vhs+aiTF/TyRwrqNkmAJ/Bjw1YfERBAzxx2VjwDO2oz4EtzpqWWuIBjw5+
	 QEYv+wJW6oIRnOeIhB9EHfzMk3AFjoQm3GaJpQMsx6I6bwQ+as5iniwFMBDe+AeKHZ
	 HI1zRxi/bFZnpfAeLqgnVKxHLQk+gusaTxpJJoIUJd7Z/uEKSTJ3CJ/44g/r7fKr+m
	 s7I84uKpBoLuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C134CD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172528355362.4051.4953323989713986371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad8647bf891a5821e69eb965cb9e3aec78d149aba07efa915cafbc97ac67ebc1
Date: Mon, 02 Sep 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725283553
