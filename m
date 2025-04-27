Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB94205E3E
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745798395; cv=none; b=GFV9f6lgIzYeFB+NiL8I2sjdLAKYoDPPS46yNiaK1jEO30XonP+9Kid8Ia6TyqTwUrk4decAr4JzCGVnj9dIUxqJShOGKh69s8UQHxguKfjTpdJ3gGcWlr7WIR8QuHCUxT9o4qtJ61DyerUICwvfmIsjURqT47st/UD10n+3ylw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745798395; c=relaxed/simple;
	bh=3G4hrBhdzZicR+Nc+up61H+cnidzqVs13YasWzqzKzM=;
	h=To:Subject:From:Message-Id:Date; b=WGYQPQLfgyWXBUvGVKb1ursN0j+N30DRrAXAsJ6xOPP9uZMB8lohd2pynTe2C1/IQSYwflmYymbNa6uWEyrF6+nWumyGIjPCz6X20PlXo1PUU3mfhtdvQxoWG6eeEdIOHV1iYQkJVvWLsICAHznystw1SLMHWCr7GSb2OqDmjYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFzW90I6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFzW90I6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E15DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745798393;
	bh=3G4hrBhdzZicR+Nc+up61H+cnidzqVs13YasWzqzKzM=;
	h=To:Subject:From:Date:From;
	b=sFzW90I6V6a0+Dv7NxRnQ4KV6YxwKHv+ggb+EaZSa3sZjyhnur7e4nzZZ5Rf/ODez
	 2Dgodm6/cXUVfJXRO/4jHQaD8Lbr+FB8gSGjcBHsh8yx1eVtgGCbZpM5yXyNAadFVE
	 2qjtEkSXSf5r8FfU8hjHId6pbk9L9hTmP51HrGXKeTJfgu7Yb5vziIJ89j6s/VyDb3
	 rj7egCpK2ieeRS1ZWEZwh7a7+bGUl81cIGr4xSJ0igbWmonGKUNF3BwNVvrfavocoE
	 sNKETBqlx7v3ggJH6/Hnp3SA9EbMWSyA4X3BzVDNwh8kFYkpd/0JbgeTaIshdSpBLH
	 n9WBulGTxPgpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F328C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174579839357.24577.14129429952261671585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb66c0541131d74d4945d603e4867a753650accffc0b490507187cd22046845e
Date: Sun, 27 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745798393
