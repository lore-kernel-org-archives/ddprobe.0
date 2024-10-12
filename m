Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27ECFC2C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728767754; cv=none; b=n+w+rN0AivgQGko27lSA0lWNUAlsuhkaUtHZjCjTwn9Kro2vQzPyz86bzt4gncEtkxBxcu+RynpJN745tnMGh/k+8b5OVbUq1VH4g5f3osK8QOx+xvMAzo2JVWC/xR2eyzbNuW6mS5KItpSngdHmZ/peYP2wYjkiNB+ez+uBfaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728767754; c=relaxed/simple;
	bh=tkL7EcBbxXyCwr7E2ucbpx5ObBhEOrHushhaQmkRMp8=;
	h=To:Subject:From:Message-Id:Date; b=Cr12MNG2GiGBQlr5QEzSQW0dcaB70HuEg0uT/IulaA+StJFw8PG/gEaYJ3uyY8mpJbjXVKeAGotOxz/Rpj0DNqKToyHNkT1pYISSsrFk0yiXuu8mONmWy+d4YcaDi3iePxgj1l++bA7c17Szwps7OC5gJ4yG1t0KjS+dydMb5+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfMZJCbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfMZJCbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0FCC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728767753;
	bh=tkL7EcBbxXyCwr7E2ucbpx5ObBhEOrHushhaQmkRMp8=;
	h=To:Subject:From:Date:From;
	b=IfMZJCbMot7DpoZEUh0K0fdulqt21BDQOTvqhoEEMjj9x6vzbteN0vXVCzPgZoI3U
	 Xyvi28bOmMr8sFHufYcAvHNvt1M27EiIxKXAkuVqDGwhgxBl/Gx5rqLfPdg41hXRWy
	 ghpV+Js1D3ifRWQeEJHkCBofipE1Voqya72gisANv+qwzBxUslW4GppL5o/0YJl83V
	 RW7BN9QF70JApsK/J31446Cv8UMlmg/bkcM2sMkH35Atm+xgOoDGfOKRzLeXBg9wDh
	 0dA/8nErglU/x20q9CsG3qVjb7NRujbEYMbfXsSqd9R1VePYURWo6YoPFuFdz/PslQ
	 OLjY8cEOCuX6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FD2CF2580
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172876775364.23635.13249225489501245534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5400b6bb639d77ef853dd55bcbffdf72b408b1d92e0324fc32c20fd5dd71ec28
Date: Sat, 12 Oct 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728767753
