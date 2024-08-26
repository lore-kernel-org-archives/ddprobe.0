Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2877DA92
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724715354; cv=none; b=NpABfzk9Ns78BTowdBAm54D14UUiIjah7VDMBvthOZ0GxN4EeXDcs7wpcfvscIXYt8MrDMrjbCqBj0waH0qzqd9QXhNrqBxZEtk1uH7IGMxQjMfZWdfd4HH/e6FxEy5jypFmW5rn6ZndQFhN81gX72a7edRwyAhP6D9MYJ3CDYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724715354; c=relaxed/simple;
	bh=/xR3P+Ij3yKxGsjg8AcI0SwdLlIaaVrto9aWKLQ0RHo=;
	h=To:Subject:From:Message-Id:Date; b=N8PF/61jsj0WHOCjH4qGG81CSLNEiblx1ENx9RLJJ0YJLDiK+qWMf0QXVfF0wK759JkYqc2Y/5A9plv6di4/QRyfFNW6OVvuSFjH8AGwZBfhmvNOSbr4f4Oiss6CyfRnmT2xgUv0BtozS0GzfkVKi1gBkmUAzFowiEuNZO13CUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5Eln+wf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5Eln+wf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE097C8B7A2
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724715353;
	bh=/xR3P+Ij3yKxGsjg8AcI0SwdLlIaaVrto9aWKLQ0RHo=;
	h=To:Subject:From:Date:From;
	b=q5Eln+wfdGrQa5btqKnlNPfpsMmcRNmOZJzwdYXWkbuTnwMZZMAoacILNS9C3kJgL
	 NZ+OmS2Dn9xXuXLFIeciy/Kwqem3PC+1x/bQGIB08aOtyyU2Fu0ZZZhv+bmsOv9O5q
	 Mpic5OaC+zG8jAw4FSQpgWEv+iQuxfdjpNXasr6ZiWYmpSE66StxxHQUt7IDnsvh1w
	 D64GJIE8kTMNLrsFgNHrWRr2eJr0b2ovVcOQU8GTeXUFUthfHIpUrAjdobdXRqAq8y
	 H5kdy/p3PFBPkvCdOt12EXCK8qSppZxCtCMm0z60n7Vrzw/EVi2i9yqKCZp0OUnEmg
	 tSvTb4eroYeoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C46DC5472C
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172471535363.17231.12878934470906866599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967271629bb81d8a8d47ff8306e1ea5cb79d392fe9363d06ccbdac8b4b16fcf9
Date: Mon, 26 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724715353
