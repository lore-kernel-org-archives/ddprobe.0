Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405B617334F
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720011323; cv=none; b=aw0zV5xFndceUI41ym2ffN0RyE1ccJ1Nsh66gzDBn7jykU54qJiTbf4a7PZXQihlov3fKLsMvhwvR+yVCjs6pH8RIg16zTVnV/ahWxoHYFRcQk0D8AcGH/13ImeWR+i4dTlV4/Ran9o0tk7jauJmlJ4iAZTnkIIO1j0OPpOeGv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720011323; c=relaxed/simple;
	bh=rUXNZcR1lRGGr/J1BG1ZyWLqMqsjY0eG2p1yYZq37PQ=;
	h=To:Subject:From:Message-Id:Date; b=PUOgKm4EoASTLU6qlN3apksTOjjogdo1X5iOTLvYTGjcvfM5An+xkgOEjJtEMQl1Y9V6gIhK/UcwxBIIKIQ35O7N7aTLUpEvsboGGpUBu4aHXF1vidtTa6Mwi8PbwEQFOKnHpE4WYy5vkwneY6j/kD2uGIsovDZzn2cZE/ZLGYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNG1kLRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNG1kLRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D027CC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720011322;
	bh=rUXNZcR1lRGGr/J1BG1ZyWLqMqsjY0eG2p1yYZq37PQ=;
	h=To:Subject:From:Date:From;
	b=YNG1kLRnWr/5QEsGuCUkfaWjDd3mwWeTUK1gijjVQNssi/be3ES6GZhVSdsulMpnX
	 XVNG8VN/UL89c3MwdRuWFFs5vlQdBvW3K86PO37HqizS4eIjw6K5qiutZ5ij9PARWX
	 QqOcsbLzsp8XQkNKjmTGoQqfKyf8EY75S9XL/OQ0ndOwP254g1bK8hwgqRW3friXtn
	 y/5bf2WPxALS6qytDFhcAzOZKa0J+x8rvqO4Vo/q59xgrkRasitcb6Cb9C0W8iFwsb
	 ZjnSkgLqmZaBP/WVVmaTZhU8Y8nvZ7iXGljontM+qH3YEZfaZD7z5A1i2wdl+etAd3
	 ptelmcB3RQzdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA32C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172001132276.2755.14828594278491062203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f873b24d727846e50f4702b0cc2fae2dff0d2c0cc86786e13c6191861c486b5a
Date: Wed, 03 Jul 2024 12:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720011322
