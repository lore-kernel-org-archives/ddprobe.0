Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BFA20ED
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714248143; cv=none; b=YH/GeRiD2NDoaXNS3XnMeSzjpFHf4h/OwrQhD9qOcREnE+uZP1kykM27Q7UigWHMMd2y+hyV3FxSUjz0lgulJjIpBalc/n5oe/97uQR4wbRquuUUm1JnhdhCL54jn6K1m+xwCEp8RgbOpHquGbLmN8S/JA+eszHwW/Wto3apH38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714248143; c=relaxed/simple;
	bh=3esEirHMlKuf+TT0grnZB43EJI+EkiNyvRI9pP038q8=;
	h=To:Subject:From:Message-Id:Date; b=JIqyvjhKPyUynVTNd6dGFj1AexhQY74+z1IFKP2Fn1jQRpo4PZfun3FWeW2DNQvJnEl6IetyQeGd3ueEClRWy5DxLvVam6cg8VLv7iLc8kaeEQ6x1+DdWQu4Mpsg7UTaBZyhavA0KWcTSy9FvZEOzW6yzjvJQzq+MCSHu6RGXgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmyB/Vdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmyB/Vdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDBAC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714248142;
	bh=3esEirHMlKuf+TT0grnZB43EJI+EkiNyvRI9pP038q8=;
	h=To:Subject:From:Date:From;
	b=qmyB/VdpAcI+6+5z8XBrNIrfnsyfzU/Any4hJc9/7GjHVJeRjhP4nqBE4CS4LTaWj
	 NjageEohzA/SJOKJSCK4FI3oyCLWlqKCDDV/FiM2tDmanv5Iq4S6DzjKkOlWgog/wk
	 3czylRMytbfhw5w6Pf2v3tMpLXIQU3LBlAHH2UGqNiQfLJegwORkgwsSIW3Nqzl+1W
	 Fj/M1FmZAjbgBQ7KAQCYTPIMdgDCAk0ivCk7vKOzs/qXXugSRW8bf8DjBOfpSzDZh7
	 dbFvNXA/K6EYZt36FMwvw2Uf4cEfACuAbdNzP4O94QEiLwMcmvGw0mo6F8eCB51i+3
	 vw0wrDdzeDowg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE8DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171424814275.27274.15173798738850137274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5234db1510e7827b64ddfb6cc501a8779ff9031ccc26ca6dc243654429633e7b
Date: Sat, 27 Apr 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714248142
