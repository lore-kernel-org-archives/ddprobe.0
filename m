Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B38A1BF333
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 11:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727780754; cv=none; b=LgCiYEkYy7EnlCFEg4phkcg5Tu3UO9jo8PtIT6Ln4lABgoB6QPcyUvtdZQJFc62VhysswAWzgkXY5RCYQtPIw1LseyaUl56o9QYth3wjKUldOleJVG1LmlYGnep9NGjuwIyQXUQrN8lIZ7+a3s7Yj+0bLTYsMT/dKfzTCm6eNoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727780754; c=relaxed/simple;
	bh=R3g77IH5/qpum5D0lgVwrHOGpE3Pmj+OPHDvbN3e/Mw=;
	h=To:Subject:From:Message-Id:Date; b=Ium3pGHSaB4e9OQd881apK0QNOoxg/VZ9Xduw9khW43P7HP+Y7X1/InNS96/Z6nVeH9ovvXsOnnmNKJTBVSFPN2FAnhDmrsW6uluNcnWIYxz0Ro53zIHYBVdbTJwglL82u8zcx0m6d9NTjHe5Sc8iXTRFExOkR9uquJMPrgHDvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVEUMSsT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVEUMSsT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3959C4CECE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727780753;
	bh=R3g77IH5/qpum5D0lgVwrHOGpE3Pmj+OPHDvbN3e/Mw=;
	h=To:Subject:From:Date:From;
	b=RVEUMSsT68xDZpQK2Y3EFsyq7yE/1meaRBh+6MyifI3zg/u87ZSO9v5OGw/N3apDm
	 sZK1D5Kh0Ay2/3YsckPlL1BPxNHHWtNj0Uy9X1tbl7aTKS16yTtxwoZCj78noIdL0/
	 4/lbOSlV/oWYc5bSGgzTrA4Os9rIekGcxZ4f4pQJ24A7Ar4dtNN4T5JoHiQSGJ0Nu9
	 TIIw6jEdvhF0IvIF8HAlOnTjx0vmi9FxQKd+jsnW5ID/GkeqjgU/P3ic23NEI/TA9m
	 9iAzsm7N0bu8lfOHxpGNqPhgbzjwP+AOnuuxiQ/Dgwo9iZdCseUqBNDOLKV/mJMda4
	 uAefIgP67ruNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27DBCE7D0D
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172778075367.9831.1951566850594820017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c05d7f7510b4c3ff42232bd0975bc2b97cea4b29abfe519079fe31993de6277
Date: Tue, 01 Oct 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727780753
