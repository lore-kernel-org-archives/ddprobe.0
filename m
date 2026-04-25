Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1649A1DD889
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777078654; cv=none; b=mT0nZlL0yhUxRwgQPfQsETUvImq4fUYuxJDcSFxVkW8EG0fD1UGcnQjoZi7QBT9sW5ncgYlQvi1Xo1y+hgAvrdZ5YogcHCLdUuyvKaqAN3A+BAvvvsduWzCXVv3tWbSdfy17fRBjpBBWdu5cSypnOkMam4/p00hJ8UjD11z8R+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777078654; c=relaxed/simple;
	bh=8UaNZYpsd4RhuuB+N6SF0gVJOvWGHAJVcwHRWDLiBZ4=;
	h=To:Subject:From:Message-Id:Date; b=eZKUnorlMcfjZDY39hoNTWu3QU366ws64V+SVZ0l/UuNCrEga5TvxSKONVCKbSROjqsP0s19yyFWL9oz9GHtVHBa86Q8lIBTcUf9aQifv3s1cQMATx72cTPW9TsnVX3f8zBelNfP9JxNiEfYBZJhvYOYHl+OdEk4MLgUP5F+veI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRGC7RmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRGC7RmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6743C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777078653;
	bh=8UaNZYpsd4RhuuB+N6SF0gVJOvWGHAJVcwHRWDLiBZ4=;
	h=To:Subject:From:Date:From;
	b=oRGC7RmAxMi2QKMBMXRoV8nk1ecPlWVI0z1//JcSyiLcvHnta4YMe/d6hJsHKQt3I
	 H5fJlFjcOten6+RxeVoiBKHRUauc3xri1cKnps2xEPG7fw+anM7vIwMkMyKXMhrMhe
	 NOLt8V10Lz5fAqZiVShrQtpWHnDUYPtgQhu9x+FWi1Q3J+C5VJlolFkOIrJK6lRmD/
	 r8lJD2bjfhlz/fiL6MoXnHgMH7bx9KDfOrLKNpOZnFeK/wA/fm2aVV3qUBAdt8UgKJ
	 zHaUZmgddyivkNOEE3/6S2/JhS0jw3TC0q9nq0YAMYjcnWchxES7q5o9u2zbrAEPZ0
	 JgwX9w2Z2ynSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96DEFF8850
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707865368.20361.11020734694896123628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17130c894b8008a51474cbaee259cbcb9880a05cff39f52c339b9cd117552bf7
Date: Sat, 25 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777078653
