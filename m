Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0343284896
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775676934; cv=none; b=RXtKzjYimg2lKvZ+nzPNi/fqwNB4T4eC1b+lSIjhioEo4uRJzgb9ftEuwxnj0jfMDHBLD+CznJEHLRJ9/a8MRIYFJYgLBnN/QOBIHjnMo/C7DnEnaKtOCUP7Z43Tn5dGEGtppuq91w3ILRp2TskvCraRzU+0G8htQQ39XJvHdA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775676934; c=relaxed/simple;
	bh=IlLEXZHbPQZge5ZbOiHxKTPhQQJKbR+JZgalqrpfkeg=;
	h=To:Subject:From:Message-Id:Date; b=Sa/yey9gLjbI20cfBcAtKGG8B0lwEnGccTcibgiBx4QkFk0MZQ9435H9rpRzSyHRvLhCt9MJwLKK5c3ERgT5xrLKW+DUjhtpneRC7EASb5Y1X3PB3YwYF1RlaLeLRpnmfzurElhrwbBBZrvJwJaNZT4gHMcMavKlVsw8Glu52GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8to2n46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8to2n46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5ED1C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775676933;
	bh=IlLEXZHbPQZge5ZbOiHxKTPhQQJKbR+JZgalqrpfkeg=;
	h=To:Subject:From:Date:From;
	b=m8to2n46FVtjlROAIKnyhOuVgR1wph0n2yyAagO/hZihbCy9rv20rTXR7jjhPv1Ax
	 SbaHKLPYjwQ7s7kwD+jL3G3SnMt/fc5rjti4dotCJVEyc5tYLWVoK6gbE4Y2I/LPAN
	 fljJ+857FxovZBaJpBwnpDCs6THHsvUivhPXxGSJVu5tGZDihkjevrJ7cS7iQP6tVh
	 xwFSO6h+t5t/j+nBwboF6uWhw/os1GzWa1CTw+vAn07QtyaR27E+VsPXzWnJUUn218
	 a3qB7ngdtn8Yba/1kzVHG0iGYPmTjC+2I5q/CEms1Uew7za52KtfRHfftOr2SolobH
	 d2u5wXM8sjf0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47EE10F9969
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567693373.30189.4603025798911939499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fee03031bd9a83e69160b9f25400db041a471dbc02d7187d1efbc60f0a6f5f16
Date: Wed, 08 Apr 2026 19:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775676933
