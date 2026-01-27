Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55862F0C7F
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769558033; cv=none; b=QvdDYrcntTqPRfQdWoKxkJF02p6TeDGp7GdJ7yYE5E8DohiMJ0DKJ0zOeHG3ViQGWyGbWXnTjuCr24nlqWaSRuJRN2D70wntYzbMY5mQP5Z8UBDCyoFqz2kjyVirvsrGtZvgyRN06Dr0C6oO++UOSDsDbWkShLrKUni/aYwU5MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769558033; c=relaxed/simple;
	bh=Gh4G02D+iXIdRs+nxnQcU0fDN8iEEO6g/Ih7zdh1pQk=;
	h=To:Subject:From:Message-Id:Date; b=Knm2TRciE0yFFVCxO2ISbJ+G3FdFLFTo7vwtekXjhw3K5tS48UfMYOa20q5/wTCdqM2cEAElyrjF9AatfUFaZAUgDyL16MY1l5jP185tw58iocQ1WaU6TqKiQrd8lT2WMAW4heSTWB2JfmDXvEdG78GB280RVYLcctgJXD1UyKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mizoLrKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mizoLrKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7101C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769558033;
	bh=Gh4G02D+iXIdRs+nxnQcU0fDN8iEEO6g/Ih7zdh1pQk=;
	h=To:Subject:From:Date:From;
	b=mizoLrKyFHdwaF47ZypQeRCmN0rdavlx9xsn7CqsqJ3gVgfO7/14FdUvFFtAeeGOU
	 vtC5KsCtHTr75/vu10bPPIjFe8VJVeCptF0XkqyeN5zb/RGBr69LQ+LX3fNO6Iw5PE
	 ghaJzmrnG4918g9VrmVQ6N2jTgeqEGzJAmTehAFlNJkPELKuiqZUxezD1t9QZL3kTl
	 BaFl0aGKKWQomsdlRAI8Axi+PVF5n4pJtxq8Z3y0pFgI4q+sySDqGvFz5CllzGcU/S
	 j3G5rtlvftbWsf8qUTACu2VUSo/BQ9JZVctrgDuxgVkQs8iOgos884tWsEp6KrgG84
	 +2bnG+cKWcKsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91576D2FEF9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955803358.24493.2243376238118498414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d868e00357ac3a2e2e7818b695e0b39cde934df890886ae999eedbfa17df474d
Date: Tue, 27 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769558033
