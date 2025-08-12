Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145C04C92
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755042594; cv=none; b=aUwWofyM7u5yA4EUkH7JWEyVrBJdAhOV/j6cRIIIM2Wils8FVdV10xd9zcyCQgMD9fNcivXcpbizIffntxxB3lerQ+uVInFqK0Vfdhlwau3JKyUOpNUzCOkC3CC8ul9okegpoK82gM7scQClY1lYCY45R5RH29A6szQP2Upuheo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755042594; c=relaxed/simple;
	bh=tMUGEnyTp3UNKNr/3YXQMw5X+3/VKl/LV4r//5kKbHE=;
	h=To:Subject:From:Message-Id:Date; b=quLbWDWEc5A7L2MLlATOyxhYyfMtYiLST8YCeT6JG5X4vZ4JobT9SqRnbGNbCHfUWRx9rOsIMr+6s2VZWVTzRVeXkzdsYBGyBju24WHd3HUcMblqwgUKX0Hm/VALCVdAurXaMCHkFfykffMnPWTEbHsxRUgKS0DpbXVIHZYp3R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWyRk8BA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWyRk8BA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E45EC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755042593;
	bh=tMUGEnyTp3UNKNr/3YXQMw5X+3/VKl/LV4r//5kKbHE=;
	h=To:Subject:From:Date:From;
	b=CWyRk8BAEaTFk0Y5W4fL6OvKjRYilAhvRQmQ/0BrNHom/5NWaSw+2i9GdJDdXNT5x
	 vZAsHBbxkUsYEA92P87S7S9JTyHVf6nrVeUOox8jGSZc4qkZPqnTZ+JGqrYF2zobqp
	 GmqkgTmdvF++dyFr2lthIyMTjiw44UHC30nEtoSqUX7t9SPQ6xy+i9Q/Ss2sieQOjI
	 vrM1Ka6KmEHR2HH5URqYbF5EgqaUW4UbAuocbNQIvZa1t6bJKbDtcNjwEAkENWsRDH
	 1bg2LN8tc4ShNiZtDCdCXm/5JL5/cpEyNl0n+Mkzjn/6US8EORJMLvWCpGmQjI4xXj
	 nscC6xhfOTNnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9041ECA0EDC
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504259358.12609.15225916772032788428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5a5cd0a0dd274c6a01c72c8b35f10b52ff198aca0e284ee7ef7dea01251aa2
Date: Tue, 12 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755042593
