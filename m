Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CED126056D
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765039974; cv=none; b=bhVOVKLflhLKnDwDY+332nYtBuraP5DRGW6oguoG/wSzv36iMbxrq32lPqdpZTqjUVu89iUngi1nSyrdX9iFUzedyjBRPJYd/LmdHLZX/JrY8IgP2nxAPGYkGHXov0LnRq81LbRnjy6B1dvXIjESpzK2BKSX8jIarq+NkMhIVYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765039974; c=relaxed/simple;
	bh=VXqBqRQOs7IT6EpUGvZxwHjQQyGVMA7n8tmWSWdHv4Y=;
	h=To:Subject:From:Message-Id:Date; b=r+Ovw+wNG5YflbRySlRMjptJ5En/bRHBfMJNiO0OqLDBPjLyAyaIJRmfzX4unGhVbnwMCykAsAgVblatst52EBcJApW71EchLwvkbCdjD62cOqcCgdhrbs/21/rcnf7Iu8aE4U0oI66GHdLML72ykgVp4FPkSW0uJKWTCAtWIZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/cOVbSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/cOVbSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5234C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765039973;
	bh=VXqBqRQOs7IT6EpUGvZxwHjQQyGVMA7n8tmWSWdHv4Y=;
	h=To:Subject:From:Date:From;
	b=i/cOVbSv3tGHkKRbG+rvxVm2fG+0DeUk+qcVqaZuXURSvOXWvwf5+FCHSVeEyP1fm
	 R5XMdrsBvMi22iu6P9Gkuxy8ObGbbfHeamZpQT/S3va6Fz+r9VM0GoEnqYwsitTnJg
	 CUy+aeuO2PQMlKjn+mhhur6Kd0u7SmRVRP+CqKs5clpXNxEXPRqKtmWX0EX0TJHWT2
	 IdG7A0KElnBFNvJXtn9kPzCc3Vxkuev4F4aVkSuqb8MYFrfMkTyMQmmc3z5dnel2ak
	 X3N8VXt3MfbaQ3tgwTJfhqsldEl+5oCQw73aK6zpweOgErPwvt3+M/Q/m5/ypBZGNJ
	 UKf3Kiy8ry1VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AB5D3B7D0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503997358.19648.3652388997718033237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c5458d04f2998239890e281e70378b141391351697d446991586168f8ffc425
Date: Sat, 06 Dec 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765039973
