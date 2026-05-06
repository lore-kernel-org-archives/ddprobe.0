Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247BE309EE2
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778054254; cv=none; b=h03ysAh4zNciHFYajSu61vjhR5iMsuiHld9ZgSyfN2IbpeLYXoI7mGTHkhbE3HC6exHHFqcUSDJPaloI868vs/lINMmM/Rx0m0TvdLIzzhGdsx/9o709gkJclKo0edyNF/bDKUO6mUnV1JotC1s/3VansENJEZSxi3mCnH9i2jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778054254; c=relaxed/simple;
	bh=6T5M4WoC5yeJDgslqXD7ZNHZYuHNjFwdd/oH/dtPa5E=;
	h=To:Subject:From:Message-Id:Date; b=MVmL22PKyTRoPU9ZxikMhJAS9zBXxyLa+lDOq4Hr3DrT/l3fkixrspqXoCvibVWpJJOxsaWjWSkCE3BcgEkeJ0zTpheILQxYF7X75yoJUgcBj9R9WE16aaEwIvQoxwCuLPts9OYxVYjNiJ4u6ecrnmaOWA68O9rd0Rnt91hVnJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXOrI+JG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXOrI+JG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EEAC2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778054253;
	bh=6T5M4WoC5yeJDgslqXD7ZNHZYuHNjFwdd/oH/dtPa5E=;
	h=To:Subject:From:Date:From;
	b=aXOrI+JGynTI0emk2oKbOdBwrzNrcSIe3BftuPlHfxPpJvQefLEkomCNVri1vNONT
	 H4NTLKrlVSo3wsmTyiwxuPYT8WOBKzaABvawadg9gBVhinwgl2rYZef1pe8gQDp7qv
	 LUb6QC2ej3JrKafQsEOoNMEuiGycVDJENA6e+uTH5J4vwqQ6YAlqFep5frhit8fmFJ
	 J3vSExgh5iVKYZWGZfGqZIPrvipP8nw8vjzQPmhJVr2H3MTCfX8mwz91nQbz2GCCuV
	 KR1n+Dtfq3RiT3ESSaCVLqdV8f7dFDP3L8CKhEI3UdK4yZPyd8DTxsJD5mxad73Nzd
	 nTi64IAivXSqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA935CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805425369.5447.11377112109472915208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c4d598006461b163e451d69b0e1457790382ccefa4672a6322e82a77da48ccd
Date: Wed, 06 May 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778054253
