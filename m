Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2167127932B
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756555794; cv=none; b=YdBL8BuBhbFw09JFfd7QC0V50A8bhy23MQDZ+va65iIVwr/+aJC/bXc++8T4cYZcvrzvY/nykue3N2dIgv5y/txbz924EH6333fkdRJH8c6qQvBN9t4shp89QERUmK6XSvwGg26FkIEgg9nZTH2KZASD5JMTMtMKLQQXuvY3Xy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756555794; c=relaxed/simple;
	bh=7/rl8D8tlKQuWIojjAToHS0YLYi9e+JebD+1w6oGT+Q=;
	h=To:Subject:From:Message-Id:Date; b=qJSxldfFCgOKql43wfJLzuIbydJ+MRIZbFQ61OgrM3qBJ1O4m9DrKCnGJMlCoCOuWj+C17HoxxmKWocR+SB/cdW8pN3hcxeIuv9gDi4PHqFFisG6ToQVUjpEGx8LtocBSQ54GFE2iw9/NdviE1vw092odFoiluxcVqK6BQ+Lg+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvc9QIMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvc9QIMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D7FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756555793;
	bh=7/rl8D8tlKQuWIojjAToHS0YLYi9e+JebD+1w6oGT+Q=;
	h=To:Subject:From:Date:From;
	b=tvc9QIMkO0cACZow/YZ+x/28kxAdm5/b/8NH77klq7SzWKWrFr7YtHFcqXRLbvflA
	 8gISYt9MT9CEFeLPNr3oBb6rB4g3dCF5h1OYdnQg3iAnhkAEpaHQAtyiZSzQ41TZKw
	 HXwwE9gWe4IPeWu8W3ImTmCBPs/DWz76HAj3JW9T2JDoiDjxQkwwsrtIfiHRqcPWlw
	 qg7Gv86XIKOwArvwuN7hc+od112ktex57X0ao1fSe0PLxITJbr5OpzLcXicNP0FHhz
	 Aw0/UUmeLZrtnuXC/+l6MV4npIVg77JA7xOd9KeyzrobfgZtl1MJGFoAkpcdSfCajz
	 quXSUePcv9SLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E82ACA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655579357.10928.6590228075184070077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35da62d8b5b615e12df3f082cbcc233b2ad4164b1928261e783afe516216489
Date: Sat, 30 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756555793
