Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B121DDC33
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757455795; cv=none; b=Y83BWSCFHoNtC7OpE5a89/1waPS+tcywZd5+EOaWz+U7dP1zD4FPnezLCv8IKD7wlu5Tdw5JscSJwDCctzuWKtba7RmCy6p+pAR/idfyX9LGQpcbMniKSVYnNe5D9LWbwRgehAstF0lGZ9NHckTaeus3+fqtHKlBhqWMnrNMECQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757455795; c=relaxed/simple;
	bh=UNXGRgbXuL8JqjacDB/UmE7GRY/EuN02nFxseYqhUws=;
	h=To:Subject:From:Message-Id:Date; b=d4WwofnWtVsLJLwSqGWe/NCmeGlpACZhP0MOBC/zueFhmbNDcVA4GMx5Y+1M7fcTnQHjUnhBEnRkT+ZJ+QgTgXfScTY25qp2sjTTbUIxIrqsRCDvKfNPpNULPGszqZgBbNVldiVkoiXi/PNAkFWGHfMEwr7eSQ9DYv+Af/cVBUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3CC2UWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3CC2UWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DA1C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757455793;
	bh=UNXGRgbXuL8JqjacDB/UmE7GRY/EuN02nFxseYqhUws=;
	h=To:Subject:From:Date:From;
	b=U3CC2UWCrwgJH/g0NFDmkWwkrLVK9bjYKDTzii4rTP7WHewmE5Xe83NjwRTGSkR6n
	 U3hFUpZ/haxaInbxrsxsKSawm/kOMoiIcCf/hNEpAcOAEQa2qcKeoslNVhz8AzuBA3
	 05G206Zprfb48b6z8kJjn5VyMqIgQMkzxHiF88h0sHtA+SBkLTO7qlP/LVZuLf+v0L
	 jokEy5a+PHhiEuPhbnZEvJSifnioBXPOjZjY3xjiTDZfXFRKU2DAAP3vA1Fg4h2bAr
	 K1fGf1o+/thqv32kOGh52K1xVcAy3Q6AjmUfZRDmzs96s5VN3aEOnCKqfg54Woae+i
	 5cyRguI0M3ZsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6892CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745579366.22134.13657403721525451469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d985114da590729a04d98e70a8d284c834d5173f91e1ab9ad14a38aaf733d0f
Date: Tue, 09 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757455793
