Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421803B42CD
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792145434; cv=none; b=o/nDdjN6jMvaGq2rGAaFzWNqiPe+SVVhC0ms1Z9sZvNS3TxvzUykcGfmTLDdW5tlzPt6w5AQj/df3DJOzO92X8Ol3iFUK2J1/Pq0EUAp0L2R8plXPkRlXNTsoknJ7sxYqBCYCpESD4Oc8KDchJOey068IWCcwetl65dozJ8e0yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792145434; c=relaxed/simple;
	bh=xD9tCop/VvEVfbFlt9R+x3Y6f77t3LZHo9oYFo1qG9Y=;
	h=To:Subject:From:Message-Id:Date; b=QsNSAC5JFOZ6LHLv1RflCDWzswTnuDIuB82baDOt59mvnsZw7nQi4P97sqemSP3LyU7/4teO+1UkT4WGZuiRouyJ1hsq0lo1Q7g9UvZg1EO8lisWlSu7BkA5XxYhSQfnqC0PeYBJ6f03cGDWKx2YvzNCBNqZDdtlXhmiVXRwxto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HumtdVth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HumtdVth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6793C2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792145433;
	bh=xD9tCop/VvEVfbFlt9R+x3Y6f77t3LZHo9oYFo1qG9Y=;
	h=To:Subject:From:Date:From;
	b=HumtdVth7b6pdCajpxaIkou5xAgy2nQCRPj2nAcbpiPyzN9b/4IX25cuu+muLUz+G
	 iOpXtWnTK7MBsfwUcpWbVz5cxACBhyqZnaWZo9LQbb/y7pXRah2kLuXLrUvdErWtDP
	 6S+iA3JOY4LuqMHVkv4KnXxyU7NbZekJaGsEjHlywceDggtDg+GPH764ETe3XBbPYX
	 BHluXGQBWtlUeTcS9LTFpJlnVa8KiiAcCKCE7jdDpt2B98I0mi2Y7a15D1dMzAON0c
	 lytlGr/Fi9dW2mdtFlVfb+SL4sMIn3ELHEoc32CporJA4CHG9pzUymEHpIVIlRup35
	 RI0PxQcIHgEHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC731CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214543369.18301.2111662709111331238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 044e061977f2c5f106650a446519895edfaaf3453a52b23de2ecf9ddf87b7c75
Date: Fri, 16 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792145433
