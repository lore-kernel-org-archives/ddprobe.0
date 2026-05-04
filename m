Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304D53FCC
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777892255; cv=none; b=SuC7uKwLYsjV8flZ5slWqxA8fCiN+uk2XDcVbQlc22aWuXKVOuqHXmZTmCk9660iBZ68LzsJ6pyjm1scUzTNwsSzvWH6Ls13cuSvL5jSSlHO4RG2g7cDWdy7VbvXzWMfhxrfO8T00/PaKc5gEAH2VDu7oH8ssZwkDAtI+kdJPDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777892255; c=relaxed/simple;
	bh=IFMtzsgaxall2Az4NJxGWNKiHxisZKbnkZ43Ci2YHhg=;
	h=To:Subject:From:Message-Id:Date; b=SE1MYfQjNrPx+XMPGIa1OAdp5+P2dhPgaZ7PjlHfRU7oO83n5V83i3akngXe6jBvmBAgUUNCRolmrT/u9YyuYTV7+cmgqLxVCaRl3ipTIge6BibDPpR3HyEgIk1Pur5YC95xrBldjgPLmNDrghcMyk9P8IZuuMEi7VqPKiy3RfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lv9l1kqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lv9l1kqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF16C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777892254;
	bh=IFMtzsgaxall2Az4NJxGWNKiHxisZKbnkZ43Ci2YHhg=;
	h=To:Subject:From:Date:From;
	b=lv9l1kqXNmf/SDHCLFOm+hDBwOyhE4VxYWZeD12cE66FPJv0rKyowlIFU3xMMN9Dg
	 FJLzmm9hdwpjfXaYY0qFLw0U7ZkMTD6RkOsgem3zuzT1RvuheqEafGxHk3gK2QgXcU
	 W9wkSFG4zcr8R4xWqY8vt/uQBntEgxD6mqHTsm08j0nl6uWlQ1ilBtNtvsPbpJsNED
	 7mQfPXRim6lRqKwSImGcRDp+XBNVUM3g+F44QjAnIn4UvP78uREjFIZ1xWeY6WmDVp
	 zFoG6pJCpZ5NGjQLnX1VtWc+mXneD7qtSpGbuGuqAWe0lbidPcs2AFYQHZ/dYFZqW+
	 RgIvh0Vji5/vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBFFCD342C
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177789225368.1101.13419167442989572723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f65ece9650912c873d683899d69a4be3ff6d025f38f3403bb61fa16c0607a5
Date: Mon, 04 May 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777892253
