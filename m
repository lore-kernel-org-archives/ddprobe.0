Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267F535CBCB
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776150454; cv=none; b=sewNuhi2VTHlUPReLIA+o0KDWIwDnQljkR9xyjad8G7ye0NP5zQX8QqRfZ8h6pDA5ezyDHO2dNZmzYnTDYVlPt59S2+bIzZQiGaCEgITv0EkNqhSQZzCItaSChsre/wZMIa7fIbS33Xiq99GACp/VH4nFfeQkFB+rxZsxwo2lz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776150454; c=relaxed/simple;
	bh=dtqfIFNJ2Sfr3eT66Sc6yVBp3SiNfssFDSLNjPO7Cu8=;
	h=To:Subject:From:Message-Id:Date; b=IYHDyKDzIory1pDn6kYc/y28nuwHjy+vbY9j1qYt5Tsa1gOjjkeF8fuvWZrfz89Tx7z7Nk+wQ1kUMx41wGHXETWUqrQrEw/AtFw1hlz5IZ8NbABoTctvCiD2KznFbb+mmbKHkHAPE4X8sxzEXMVxFd/t5U3Lh5Uu9tLqd5J3yV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7ZRXOIs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7ZRXOIs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CCAC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776150453;
	bh=dtqfIFNJ2Sfr3eT66Sc6yVBp3SiNfssFDSLNjPO7Cu8=;
	h=To:Subject:From:Date:From;
	b=g7ZRXOIsb9lNE7oVEhETuEzjdAXtcyNiPt8VxTC+/K2iLmIA2lDagtQjvfGoWgyOq
	 +WOzIDpSzCqWDvw3KiJSaKVY2gR7u8t9v28EWXPLhTQLoaDiXUfN7ZGwGHeyn54/HZ
	 h4pY6DV6YONseQ3sF7C1SByzLwAh6tcFNNmSxRifJwg8EXSPuQd6H+omqd09HeIGzi
	 ozTD/O11TGmnIcHpvG36sKAtsUDb+RjZ/B6ihcx62JJ4O1GdwlJQt2l0ui8RUiBPqO
	 YrQbYecsGKlYoM0G5Gw+omFkspndbccBDIJuVMrJK/DZzzCLIaEJnXgPMJnp3pV0DS
	 naKsxL5wEuwYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC980F531F8
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177615045369.25957.14755147893875491723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e299eec22dc2d07cccc0af3151b9ca7849ca4d99326fbda7e56630b778c913e4
Date: Tue, 14 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776150453
