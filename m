Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B60F847C
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732431954; cv=none; b=sTvean4PY30dV2cEw5xSOeKFeY5mpqMhHvFfaNF4Xmc6xn09XTRv6O8mY7Q2zDHVfMhLxiesG54cg5djAvyPtZlz9m+9WFlGHKwxQkk/A75uLAXYYsI6GJlUFuPwkhYpi9P9bpzsgrRSa9gCq8XDDlJcFNOp5TLj8ipoUdiad1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732431954; c=relaxed/simple;
	bh=ajfvE5uULzi6orxj51kmRShUc6CC/pMAxAPvkzsjWvg=;
	h=To:Subject:From:Message-Id:Date; b=OzdrEVzBOrZ3DhbyQzdEfTUJfpQ+b8HU08Yi2+Fi8iXj6NnkB/2M5AUVat7TByx6MI2CWIPZoG6q21Z4e/ZGV6H2/Mfdj2cgJZybop+EwGcRgwdnUFKO+vrJ5ee7CIsoTV7krsJppHVYSVP09fdDyFwQZztOJvQrQlArZNPqVD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObXGS29m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObXGS29m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F1CC4CECF
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732431953;
	bh=ajfvE5uULzi6orxj51kmRShUc6CC/pMAxAPvkzsjWvg=;
	h=To:Subject:From:Date:From;
	b=ObXGS29mlvknKDFy+yA30WpO/ufzjWqlfpXMiV/E4OnxVfI2kDqpzYxXIDSRgNc38
	 MaMCqS+HTmPtvEeE2c1wgty8jkGJxSMHrkxJdFPhSA+NnIdiaFTni9RsRxRwOjJVjx
	 F9fEV0QmAHRS7itDgFgv09NxFdSjio8YWEO85eEUPp7eGbWXAl3C059mkXrS75iGrY
	 CrNE/x40LAkCfl+ioj+WhD0STsXA5i6b7Zy2FvdmNtfQyepnp3v4kPOrk2dowUaCzZ
	 4LtsQuyBCGQS8GIy31gTv8xelbs0HaAN/578cD7YOoxkewe9T/FwXCk/WXxGU2ZLSL
	 diwGWO0me3N7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B40E668A0
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173243195359.30815.15146370284755143790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b46ab9b233a5de475e8b017274961a119821129eeee6f48c9b78f617baa583bd
Date: Sun, 24 Nov 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732431953
