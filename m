Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F12F1C14
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719885323; cv=none; b=WWTESLo4U5tBWxyWdUd3/EwDanw9FeYY5te+jrxh1IUbI67h7+POu5lfArsOX7OVFCVD0okGP/0dFP5Cec/KHQlOru4qAxnKl/B3N/kz7GwTtDaIcS3H0Oex2RZ3N+ldJ/Cf7sqEixFPQCmfwiDs7yJGnbpA0gKbm7S1EioYHv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719885323; c=relaxed/simple;
	bh=bAqhUPn/vXAg3VocHNIx1l6XEk+DE3E5/OhpQ7gNgfE=;
	h=To:Subject:From:Message-Id:Date; b=J/E6yqwwk7g+6Uw1VrNlQu970CloeBEp01NqoOPehTzwlO70upETGhNTnwxuJPvQ/AnEIelM/wKPolubsZAnuppJsINRjkoQdzGx4+weSYuSRqUH6ERhIn+j+AKU0Vcx/F8bPhXrqMK1aXdlkCy/8lNHily6/xFidLq5oIFg5P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BC5UE7FD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BC5UE7FD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EBDC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719885322;
	bh=bAqhUPn/vXAg3VocHNIx1l6XEk+DE3E5/OhpQ7gNgfE=;
	h=To:Subject:From:Date:From;
	b=BC5UE7FDsR/8hS+jnWWQMccy5Qh8fcfykWU+qex8ADPwtZqDZ/tvyaKCp7jQ3B6oN
	 mUNeeIV3V13yq7ERFBS+lxIm6kPvpg4kUfTsNRwi+PcE7JZB5Uno+4VzxvXEffjDsx
	 9s3G+byHaU9MfONT4yMIPsjw/BUWAYIyceTVFZFfmltXG2C9EjAW6fi1Ozy/q+R9n0
	 6kgdpqJ5TPN9vhl75/YrLrwCKQe1wKEqIZx46nwrtzasQVw61z7fzAsWQGCEkfYx4d
	 vvBWX1AWTN9nAlQjXFosTiWsUnUwMi1D9hEpFltXRna6kcYTwTFEO6Xn0pRdRcU6Pl
	 Ld9Fq2N/Lexfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25D8C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171988532278.566.945261769836591790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823aaea0f1e2af5dc880be4cfe9b0c5a2cc3c9f0202ee40eb0bd107ef3a7b005
Date: Tue, 02 Jul 2024 01:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719885322
