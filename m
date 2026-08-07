Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A48D4749EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786107636; cv=none; b=sA1H9eyCV/xiiCQF/f71K1grbEDlICcsTC1s8uj9hee+7ZCRwEM0xe5ABHLURT0ig7TpZ/i4IXqS6XBs7qa0xBfu0fflYrJBaS3Xwlqr8KQEFG62o3gixXR4AgNVfgL57s742ohki4sBsqX2U/xgpiKgXW3AQB7gykEScU8z8T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786107636; c=relaxed/simple;
	bh=5/2svVWzkwIE9gGhlRNou9GXv2reGKUuRYroSNbtQ3E=;
	h=To:Subject:From:Message-Id:Date; b=bIJdcIjxPCN9WYM3jZU7x9kfLffdX4fLaSwME1eOnPgfDdVYcV/QHK7HOC4HWX6fZP/OJ77meedKQVVWfKcGScSQSwzRHcASpG5RYH6I5zkwxz6QFb4cx7Z1XeEwpVOU3vWmMqYt4uk/jLhH1XX5i8RQo644nHnGzDePjHzP9TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZPDhKau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZPDhKau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E94C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786107633;
	bh=5/2svVWzkwIE9gGhlRNou9GXv2reGKUuRYroSNbtQ3E=;
	h=To:Subject:From:Date:From;
	b=YZPDhKauTlXrrxIV5QWqVzzmMdEVKA4i7g74BonVG1yQJxWL3oAysdxXbvSrOEgNe
	 lKgaiLSOgptmwB6A0NX/7UmVAPDofiYGKiOGGWv/NyrAGN9q3H7ZBWTv0MKAim6f9u
	 sO8qaMKlNwzy49RRROkPY2oDkZysU+y/QivfkN6hL2lLZVadYDI5RDc9FJd4nHkD8/
	 G1xE5MkYZ0W/9Lrf7cPzqKTRuNZWQY92jRoYUjFtuQgDr6qTbglxVtkA1q38Awh50H
	 epT/xvqfX11btp3mArvXI8Y7UVHZ/G3bVHCCui6lx5j+a3bOtv6tpWqjvXiGZ93T/o
	 r0tD6A0wDfs+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE309C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178610763370.23997.12566942354491091010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2732eb44484f781bfa19eb9fedd205ca3b8c019b8e4250c4d7651bfaa0cdc77
Date: Fri, 07 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786107633
