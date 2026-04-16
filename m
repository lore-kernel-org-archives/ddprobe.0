Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207161CFBA
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776313654; cv=none; b=GHYamvAcFdcmdWS0ndtvagWZv4XOdft1TDJjZhqnk+Kji5lt2AsgH1xmwjliidHqQCPaQrN+jkZ49aBXeBly4ATOWmu6/TN57gCJ1C8+6pjmNcZVJy6oLLKCWxD35w5tWDJlShheilqSM0WNXRoEzHLxR5dbOpl8q7ZX5dFb1Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776313654; c=relaxed/simple;
	bh=YEilk+lBMEsM/sYVdp1ZHsW+JkdVj8Su/d2PMtf+GWk=;
	h=To:Subject:From:Message-Id:Date; b=B2q9vvcJ/7I+YtWhaIwD5FEDBPKkVKda8yI/c+zjtl2jWfnIsS/CV4l+52PvCEkoaOztqoWT8jyBbw0zDiyL63ghgkAk89wyQFx7To21hBkQNLEs5EKNcSjPL7Poreju/iIexsybzitcq1zDKgjujw+vCxh24rzg/D2AVcJMXMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A17kxDeg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A17kxDeg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7E5C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776313653;
	bh=YEilk+lBMEsM/sYVdp1ZHsW+JkdVj8Su/d2PMtf+GWk=;
	h=To:Subject:From:Date:From;
	b=A17kxDegqP/A0MEMlWSYHGMdiWHhVSzpmuQAUA7EAVFWF9c2xYDKdt9Ca1Lqtr29j
	 qGUszdYP60hy9XY5TzTUbtmYQ5MDLaEgDjbBCSy+pSeGv5NCsB+Z9zj4wU0HReRCld
	 w1yyuPLIelaAah9cL0ynz+i3CfL8M1z+3/6uzH4Xr7aCwzgybooUNLeUPGsENVP1pu
	 Ov3st77/sC9fzOwZXFpBeVJC6s5JlwcGNWx8ZogxgZrOElufD9yvwVeYgqR0rxOyat
	 Aowy342TxTCUiFF/SnKm8kfNwt6pbQyjSq8DhNxddjnFqpyD2/igYJfUbVnMYlEdaS
	 +103BhZOhyVog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD07EF433E1
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631365369.4736.15184642951612689046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f3e47c1505d2ccce2f296fb84601c70bb9640165f30ed916557dfcbcb08631
Date: Thu, 16 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776313653
