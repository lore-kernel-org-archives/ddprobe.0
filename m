Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335E31F4CBC
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765257174; cv=none; b=IW/JR2rOVXPSERZmE3ygVlb44vpcgDooCdeev1qHFE7Q0hRevu3WaxCVNsGquNaxG/ki1hAt1dOE9kIMvQG4Mn151DtdHEaBNJLhQnm1oe5Z99s+ioCoGEuoMAT4bW32VeOnXzuwuRkFmOYLG3rp4roDQU5vzo6MyV13MUnYdhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765257174; c=relaxed/simple;
	bh=XlXNeH/2bZfSGSoAx3LuBoSe4HFyPHvQqxinhZJwURc=;
	h=To:Subject:From:Message-Id:Date; b=A5Btl9m/dVAhNcrgj1j6CS0lRnoIXKNcvjxXJgJVFo2y1pnAjWqtDH5VqxaOinPDDiCfYFy7gaN60UMINxL02TF2OB50SbbOmFGofC1KQ1Gg9gt9CshDmDWOei9d/k4xAxVBrcu3eE4YJ7VruBeJ9zbmRLxWbhZcYVC/k8Xzx14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeEN13Sx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeEN13Sx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BB2C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765257173;
	bh=XlXNeH/2bZfSGSoAx3LuBoSe4HFyPHvQqxinhZJwURc=;
	h=To:Subject:From:Date:From;
	b=EeEN13SxtW3H3xMzGh7tfi5fKz1XjbT8wQVD3oDNR/lsRzVyrBCmo0GoQiyMMnbFV
	 X47EoH7lwSwDoSqKX0aWOE38S/yhEomM/0sW2L4+2sIb9hw2Rv1ZjR7GgPJ6QLiU/n
	 ZCBMJ5gBzwUoFIGvc1hlIGADdcQB/s295Ad2ogQaRFwfTPvewdrBRI49+m9Eq9162N
	 O6xlezeoDw2WpbazaWSYP5pzI+Q/AxYq+epgQHBuM/5vrjeTZYqGxVy12pjqAzqqRp
	 3EF5gKjwEYCvRRd8wmJQ8oPGYA1SqhPpGy3FA0P//kdk81XLAmAMDQhqHJSTQowKam
	 v1yZy+ES9AJGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9674BD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176525717358.19533.2793315473305129526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1988882d4901377e505470f5ec417a86c984b7d8b0d3ff0a8d5f3000978f98d
Date: Tue, 09 Dec 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765257173
