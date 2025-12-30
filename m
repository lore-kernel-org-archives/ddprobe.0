Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A0C82899
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767056034; cv=none; b=qk/Iqnz/FiXwi9GqARNeL4cJOMuzgPZWl2k/zA+nmG0mCKsUrMfJ5Y/4FK8nHcQJRbhuaPZo4PZ7PkHOycK+gRBGulJnnShVFbmnlQhmiJTFyRsDlg+U8VUgPK6HRiHRq3UA03KyMxXKk8BSyLPpYrxdl3ImzVZQiDvNo9aeieQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767056034; c=relaxed/simple;
	bh=G9b1akGbtCr0swpzZvEJ4QyubBSBhh/upXXdk05SdN0=;
	h=To:Subject:From:Message-Id:Date; b=NqbR03pMHPRgnq5/3A1vnsxg+Ye576tS4jIGxXwqbmF7qhJxKO4r9PkD6lQTB18FB9eiIxZvc8S6gqyd3OlZw++k6wCfol3FltybDIKRip9uSSuV+x+RhbQNHMjJbaGblggNaiBV65YEJc7JltkB30w3nTdA5KFYTmRWJlu5fIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3CugdXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3CugdXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A067BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767056033;
	bh=G9b1akGbtCr0swpzZvEJ4QyubBSBhh/upXXdk05SdN0=;
	h=To:Subject:From:Date:From;
	b=A3CugdXwi5CwdN+d5vzHGYPQz9HMHdUq+aA84ilm1n7LgBpSiYL0idvqoO0gXJFbR
	 Omn8Kz+BLHYqFgjlUtEBXea3CjUb3pz+KAAOwhUVBUjU81HEdpTXBABRAr894W/b33
	 fxWenYIFU7B430eaq6WzfmyNMl2VWrHD+XGRbdIQoDcobHjN//NYSgdn86iHF0K4rh
	 uKmVqzEsacJBCi7r9CKaQ3jDf6NFSHFKGukA/Y3JymbMA2T25AhEprTYrq/TEQ9yBI
	 POqlZitIIPqUZUNPpxut5qUVrUL3EMJxJi9GiScEUx7uZzfuZzZnKvUMKTiOE0W5dH
	 6VF1CjUDXEtVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF58E94107
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705603357.28693.3168072844996499137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67e8805dba9b589cdb04d6c3592def0480608c493ee3fb4062c9ae9dad4a213
Date: Tue, 30 Dec 2025 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767056033
