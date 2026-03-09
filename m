Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D6827A462
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773023694; cv=none; b=TkWpnZJ46kxIih4f/VIi94BZC7N73f8AAI5EMkGutjuPuvYiTgCcchw4Z9bbqGi8XWLh5uROhVdRhfQ25aoocDBDqdGv2ZtqByIiDexJrjcvZ8CHO6b3vZrXBMZ0xXVTkFVZmoKcVRm8sIT+oNEFOK9Ol1o2NudlikXT7pmC2PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773023694; c=relaxed/simple;
	bh=YdjxReMikXFJqT+JCI556Ax7VPpEHMUpmf9EBKGXvrE=;
	h=To:Subject:From:Message-Id:Date; b=QZ+J4Xenv7BUXWuF5ljFysReMF602ty5b77h3X3Db1dQdZmOAdLBlXcvmki44wu3ZNJhH7dHKk32c4EdIjiMkP0bQj/6+cyfoub1+kZHXEc0db1Z+bR4Uxc0X2/UCAf0HLGHUTwgpC1NL1xL4t4/4Zx5kB2b+IbILy33pMZ/oME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvznq8CP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvznq8CP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC93C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773023693;
	bh=YdjxReMikXFJqT+JCI556Ax7VPpEHMUpmf9EBKGXvrE=;
	h=To:Subject:From:Date:From;
	b=cvznq8CPgMmYtgNj+RNuWELevXh6LxMWxIUVtIqBiSPMvTY3fe1aJhdHExtDVjFWZ
	 Wdk3WL7F1z7zuW+7aQcQEoIS/DIyd/PQXIkVMqqbTynJJrIiRi4FcG891HKit3HXE4
	 nKPDeUKW1V92iQIkFa1z2L+JED7Z7ze0TgItcdw0DHQ+NwzuKweCQSEVGLNmyQt2OI
	 7BcFMwnwYzKH1A1Na7GYS1MsUmwo7Y2j+pMVtLUNCb4nIGNsoDrWgpwetOzxUs3M7V
	 TARSQoQdaDI6uGN/d82AALEIT1p/jCd7OpyOjwXFkCQyOO1klGIYVUcU0bhBtO8+m6
	 BgnmhE9fzB+cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B25EA854C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302369358.23229.5956566898752816457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 279353d09edafdc99d8fffa17b9c819b0817cf9911ba817e831c0c207905bcd3
Date: Mon, 09 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773023693
