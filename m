Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9BB3E1234
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785312634; cv=none; b=f7/p6sTicc88QboS9mMn1K67xaSzqceEGQgByVzkRJDxJJ1fL5SVaxvInhiJ0+Gma8/klohWPG0ZNieqngWr25OI7DpjnWmEuFm4gsBSJBxZa1rQggf3jwckcaukwkvAfz9d6X4eOFuDdlkzeG/GHR7NPz2d/57BEDVyIwgW/Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785312634; c=relaxed/simple;
	bh=Pyys+uXjeZ0Q25MQU411mDn7UxRbi9f5o6T5qiE27ow=;
	h=To:Subject:From:Message-Id:Date; b=h83RTPHqld5lGIyuaMIR8SgRkYLks6eTA3/+nY4T5b3jLEdL7xDV0luZa+kS5rytFAB5ct4juyTo9p+7dG3OFIGrsGCzlfWmhAVZfzncBHyH3OR8NFd6xqaDcXfGGCF7Y5S8hiF/GghbmwEhuckV+loAGRumJpxok2OonwqsBc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wr0Htxeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wr0Htxeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB566C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785312633;
	bh=Pyys+uXjeZ0Q25MQU411mDn7UxRbi9f5o6T5qiE27ow=;
	h=To:Subject:From:Date:From;
	b=Wr0Htxeq6LwTIHiGFBaixuylk7WUkrDqwOcIEU0S0iwA9ZLMkqA3nvrLo8eMmtnEq
	 lrHD+/n2BLuC8YXLvrKCMS4iTKEMHTlcJCsszikXxlMvcGSCSgx8FcoNpyfZpkQOdM
	 x8Tskf303R6fLw2M5kaNOq9EUrGlwIRcW1whs2iuTU48DgI2kSTNHz3+oCUHFCx+ix
	 eeZLRf1SOwGdVQWGvsdu45zHrzevQi3Jf8Zmo4lJEFQy7dEZnEu85czIYi1ER4NEic
	 hme0/UUwA/peTa0xdg4rU86NtWCFw1/jH4q7cNxkqZav0umIYj9iZo5T2vgixiAZsq
	 GjVnsXr5gyfow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9022C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531263368.25870.3259554021498136037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d1e60627e32c08e3bf6149f5e28f57b00594093e1d94609df3422612eaeb58
Date: Wed, 29 Jul 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785312633
