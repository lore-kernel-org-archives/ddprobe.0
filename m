Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC0721991D4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777859854; cv=none; b=NpYEwqKnzdM/nwO8+cijFuN/yZcSuq3R8x33tDJBDVndbKe1UXB+ZB22xfHslCAk0luTpxDjVYeXfvzlJKdyTXlW4WE3onm1mT++bU8neaiZsS50uWLRDdgHi1hvvoem+FM17v7hEzFsS85qRQs4CAqxi6shKm7KissRJ4UXdWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777859854; c=relaxed/simple;
	bh=r8Y4VBffubA/sl0siYtPwQGK2yAtVieDQcKNpRWI5Vo=;
	h=To:Subject:From:Message-Id:Date; b=Fn8pAA6Fxg2kGUv69pJIzd0LURk0F+fXbhAOdVbnGD1/NHqnL5zaOZnDBc+liiKGK7ZN/1LBQxp/JZjMPOg4c1D/L8OIxfuknt5l9E8Ztcmbw+PPzX9ijtx79g/08QY0FB8/igZCWVbKqeRQi8TheoEGnNRQGn4A5fc++at2IGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCswVBt0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCswVBt0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD47C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777859853;
	bh=r8Y4VBffubA/sl0siYtPwQGK2yAtVieDQcKNpRWI5Vo=;
	h=To:Subject:From:Date:From;
	b=uCswVBt0wXa3+XRnvW+XsSZt98H17OIQKbfWKfHJVo6W9EemoygjqPGI37N2Ltbgh
	 8l0loR9aezcLnuKrOzykI4Akq8pSZ073DIz77s5JEmIHSzKLJjLnTcjmvccJt7+XMQ
	 28mTVKhFnTE/icgqgAjHPgfJRcuYRCf1tNLjVzFqUAqUQbdt13IVx4xBHn/1QJHa37
	 iNypHP5TCCGYQiKfTsoa2jLuKd+06FB+RsjeNWPNA9YtF8IU+waVLU9dqitzV6NCsh
	 CfaguIsfe2k5SFucXxB3hxtMjECiazckN8joD8JH1TtpCeoCzmCdsB0irUuEnoEq3o
	 OcplkBzZdcV6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCDDFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785985368.16878.17032529184077264164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271130a98641b59acfaf80375a8c2521e1d7afe5eb2bc032a8cdd06e228bd906
Date: Mon, 04 May 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777859853
