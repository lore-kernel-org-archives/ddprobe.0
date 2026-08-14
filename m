Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42003D669F
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786673435; cv=none; b=SR8pEumjZ0kTFw/XhAygakLdePzFhXWl5Z7RnO5swWaGYBiMxXw2r1tFeQI9+6SYNTQ5Evs4BD8fMqTiZCsA4LHVj7WGRwMeGDzYq5S7JjiGQ5+p+ecBpl3yXED5kNzRBRDZx/0Id5zMrEcLI7LpGQ9/8yJbc9aCcvhqX5kspXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786673435; c=relaxed/simple;
	bh=1B1EVnoldHwCN2EP9UQ1pkiJxTTnr5UUk5VqFEtF/ss=;
	h=To:Subject:From:Message-Id:Date; b=IAMx58Al30of9H45XGLejzlFIKmKCgQr7QmhKg+Ppbfku9JZhAYvY3XrtfacnNJRJav/advpxiuza/i2Uih3OuokZG3hSBZLMtnoOt5IO+JIDMf7w41vr3FdTIsA2F7CXAJg+C+ebNIZ8hArYtK74nctXmJFJ5679DtKPDEvQUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otU7dWs0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otU7dWs0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEECC19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786673433;
	bh=1B1EVnoldHwCN2EP9UQ1pkiJxTTnr5UUk5VqFEtF/ss=;
	h=To:Subject:From:Date:From;
	b=otU7dWs09Su/FwAfZnP382wAnlb4nH8bNEYkEDea+irf9XZ9n+8cKUJ9Y+MYpJMuT
	 46HmqIE2WcAEoRd2EFDghqsj3Kd430hkiDSp39LVzTG83SwM0xMNilACYOgkbDH1Eu
	 h2sx82evmGmQbsuMpenuiHX25LWCUSLNH4132+TlQpnbqiey818oO5FkWUwAKGb5Ra
	 l8Xrl7qjbiQVNf7Yrn3CKVcr2m3xdnFuBJ9N0fsf43Q2xovhH4icL/l8U2QnZksX+h
	 SE8/NGPo6srFJC70sBT74kc6Wjv5zg3jHCeJEFItVNN9ku+zQihK9TTGy9BRYi90Dl
	 TrQHYnF6bfydA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9146C5DF66
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178667343368.27805.4603539605110871591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7da90bee17b2816269652c67bb5712bae3148fe92d63f3be69411ef83804da
Date: Fri, 14 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786673433
