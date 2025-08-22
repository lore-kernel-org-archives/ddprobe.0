Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1599934CF9
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755851394; cv=none; b=bTp7dJOZpn1A2OlhuzYIvO+/zMwsZwWJL+2ZJXYBIaFXkQcWC9JHPrLXAouhiDmRtKlxpU1f1td2d8fD14ttNO8zdH+1aKMnNtpLhjsySROc5K5OaKsqk0sWQLIrWoIuRAduEZ+KdLHZQoW87XkNreysmem4NW/RH/wUlE/5dwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755851394; c=relaxed/simple;
	bh=kuTftbKmL6jJVUJAwwR6iRcPEdTWofhovR8JVImDLNA=;
	h=To:Subject:From:Message-Id:Date; b=XtGbZyS2CYYMCry4XbbiCuaNHYkVvxeDM3t5KwlwvST+cQVRGjmWlSmAzKrBcr2VT0Mv4bxIHBCtoQafSB7LfsErhmAw0uK12H02ZPrV4ZIIBYx5KljFmFcCBfJP8w5tUD0i7zRhZxGJwRVlES2C/GTPwuMMKCEHuf+jGh3A+MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CF7wW+YN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CF7wW+YN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7A5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755851393;
	bh=kuTftbKmL6jJVUJAwwR6iRcPEdTWofhovR8JVImDLNA=;
	h=To:Subject:From:Date:From;
	b=CF7wW+YNmtC97Qe4lGo8yaLuP9OzBE24XqLRNaSzEbTmdcViwemdQRS09dlOlED2B
	 5+ejx/3LeUGvBNxeDbnXxw+zPDmlp/VqvnbCMmCHeBui0+b8pWaPB0uxMtJhxYMiqN
	 PPCUrj2pPGDC/VH0fi/6RYrjmTnZXmMnHfcCenUEi/p+RKoNsC+tSTgvS4TeY+MtNF
	 bGwmVv0YbaEwWGpmJffF0oJSbNu8UgJxx3LqSFPHR6DF+xHFdW90MXBhsXhzhFyJq8
	 EU0sjWuhwthjv4kVyURPmOa0wiD6dnRIeeBn+67jSYjeTl9OPKSw8nuQF/okxycZEY
	 tqPM3C8WzYlHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE7ECA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585139357.18458.3074792214080484473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d46fda8c4c57ec3426b61d20187b03b3a7d3a8e359ce2f4bacb63c70b2b6f8c2
Date: Fri, 22 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755851393
