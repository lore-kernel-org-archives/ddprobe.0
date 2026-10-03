Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34317157A5A
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791065434; cv=none; b=XOXhKMH++msiScXz7KVGOIzvA+sE6fiKyK5idz8dLNm1ivLENDHX6QMLUjHYTSUkRA8IYlm0eEYPbWH9kImqVLC/fE8zf0wgsQd/4UcqOT69oFBlNuropLMKIN5cOIz8Oyd9pdqrTXqfqis1mLj6g4fEEDI5LR5z1iMNFdCAWwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791065434; c=relaxed/simple;
	bh=2VWSFn/Thnk8bmtFgCvSkJmzx44p6IRtWcdn1XelPFk=;
	h=To:Subject:From:Message-Id:Date; b=XdQmci0KnwI6PHydW1qyI1r9mMuzhVP+mUmk7iwf750eGRwpS2q9DzZ2wa21tM4UKI1MWFmZoRZ1MAVqUgdVbs+SXjqkcjfsLF3QKlsn+sE1kA9VwF0tgvAldjxl2mIk7MK6NMKL+SVCjSN7zJtLZJo0iT7Twie6ws7uXB4EspI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKfNtPgN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKfNtPgN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8587C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791065433;
	bh=2VWSFn/Thnk8bmtFgCvSkJmzx44p6IRtWcdn1XelPFk=;
	h=To:Subject:From:Date:From;
	b=GKfNtPgNeb9yKaZol4LqJWf+GSOoUt4RMr+vXXmN+vnUlUVYi66YQFjIRGLPQ10IR
	 124w3i/7NP1ouQAFNy3Eshy7ZdVq6KKPouaUz0UlMNVTxlkl5xE3B/rmu/tbd2xCC2
	 h2aeD+8FFzsW1TR3ml4AR7R7h+jTmR0UzNd767uBtxXD3xJfDXN1w0CWzM4zy8hzr2
	 QngnNbd14Ax0wFXxCY5f0BdpXWZWweO9Itj7LUyftDSgiNPffbH6xkVnh/uJvghyA9
	 25t+ZFq5FTke+7jcZG0Sd61MoqQ5Y1GhfGyZhx9wR6KRnVIgR56p1IR49hnm85CZko
	 23hasO8mtjlEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D67CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106543369.19660.3279381407110756493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b0e6522a821f0b82d7fadf375631ffb4c6150b62f801768ee6553c957f182f7
Date: Sat, 03 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791065433
