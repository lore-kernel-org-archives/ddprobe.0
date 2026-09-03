Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E3849EC7E
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788436834; cv=none; b=rcq0bt2HtglaeeReT4oGt/3tRZqXdbzTNOW2mnB94OtN0GW0hPp/37m4i/cr6T6IhSy9qCpMsf51qhDe1SjvTIomKBd+NoDuPhsjcJPUN60r4W8pajBDgAmwsOjjh7yFJyARxp63PsYLuPo/EWKHKcOIjarsSDBo+DOXwftYyFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788436834; c=relaxed/simple;
	bh=M6rXagvTXfq3WIq6obaE1dHqCz/Zdkd052O4xnemHPY=;
	h=To:Subject:From:Message-Id:Date; b=TIQ/pkdhQRVI4tcY3Mq3LCr4od0eJ8dhIGjYHgytxSPVOfvTo6U+rWbOSB0o930xzvU18mCaDWzqweBDIjqnLei+KDJhIMi1XlTYL2fRz6YpdQwSnic63mafvf8hgjVo8pKcxuKQ/hh8LxKgySHFs24QAZlHL0iivwzikkrXgdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NauhsRKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NauhsRKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF669C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788436833;
	bh=M6rXagvTXfq3WIq6obaE1dHqCz/Zdkd052O4xnemHPY=;
	h=To:Subject:From:Date:From;
	b=NauhsRKoiIfSQ+qXJxvvqigRC0uGtaTUInjwBxuPa2R4yox+BfM3Z5P2twvlsqjIx
	 mrUYMlq9hkxn83B3xElp9h3NaGTNBE+8u9FFrOyUn2+o/TuRdTwrFkOMEDfh6LfJvg
	 1Q2G0fWqZ7fku+dpuYD1671nnam8B7/Rm1zEbFy1+FaSgcwclo/vPO6y2nGzc+kV1+
	 QoEI/P9PZ8WaoenN/xjf+knaPkWdPFSBRCCKte2V0yezIB4yQgGx4VeGAww9KVwlP+
	 /qUyvoswvUQ/zNi/PFTjYVfLVMKZ28zCeQgJobebZSwWKkXlfL6xEF4P0HWLM5jwv1
	 VeFrjIx0f6m2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF64C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843683369.22822.11287416626719319368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cca74e39c036cc7a5e11cda45a5a5a1a1916a5b11d0e8627f7db1079085b552
Date: Thu, 03 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788436833
