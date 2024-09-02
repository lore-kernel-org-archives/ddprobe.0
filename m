Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387CF15351B
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725260754; cv=none; b=gK2UGABTMaAhDCaE9AIiUMY4rgZI5jOfqy99Er+gIF0gYFxBCI6Tl5C9O45uB8tI9IRFW8zkYL4llrPHpwFPq9qAGziOMRo4Re7y5TUFjjjoHxgj70DWleUysUvQsQds4nf4yQq68B8dq+cAkYByAaadQMb7VaUv465SlTjbocc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725260754; c=relaxed/simple;
	bh=EYMzKJwdHKwgs3s94qnlygIjUTsEISOl1dJHX3TP+Kg=;
	h=To:Subject:From:Message-Id:Date; b=KgEZ/qkXduSOxzuBUQSysnCZybtPFajdEcdLpN604su0qb0rQd+IuCsTdpSQSPVfckl1f51R4sFhdJwLfVCOxwWin5RCWWZq9buaUwPcmRkexvD5jvk1bUOjyu9UOl/81C5vCodp+CvbBJXaMo5uW+RVQNBUTg7XvUudwebzLL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7jkbD7R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7jkbD7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1E6C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725260753;
	bh=EYMzKJwdHKwgs3s94qnlygIjUTsEISOl1dJHX3TP+Kg=;
	h=To:Subject:From:Date:From;
	b=E7jkbD7RN1eP1jEHZE+BnEYnMVuXuLiHQBFoQ07lMSEjqq8Ys0u9HGDN5GNQ540Gp
	 z+9EIaRyxsLzSkUGqeUWzzYr6GkCNWMkfz3jF/KKwWSLXPft1aNx0QnWMlEXUKv2nF
	 vjSP2Z+q2T6lIgKLQXBgW7aNRdm0IOMoVaCO6a+Pqe8xu71zDZBRzH8khZ+rVpIoyB
	 KiAAPytABwz/aAmC8LQGA4sRGbSCzvq+RKQI8mE0AoJmCXt/992Bh0Q7/N9PzDhmhG
	 IXy90jUvfTyjT4ow+nwxuEXeLMYoapQQQlSjV5v5PcapeJoUKJHewc3JVEuMk++2o8
	 wey0UUyKU9tpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFEECD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172526075362.4868.9955071567365298952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d3d0c038267dbf81ab129b0370d16cea36053aa1059a25f0336095c1a3cdbc
Date: Mon, 02 Sep 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725260753
