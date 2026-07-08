Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384C0137923
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783490314; cv=none; b=VNNT1rpJKhsEzEKEQey4dDT4OGKHkNOJ/VJ1MncXiq0I1ZVzDMcre9V4ahmBRFPp7EfWG9+TT3Km5AlL0Vt25FNOt+02HG7G/M7HP5GgaQ6nzAVYvdOYs+mM0f7bFUKHGy6Ieb+VCpLS+EIApIAiao8y45vrla+IFpHV/YnOSMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783490314; c=relaxed/simple;
	bh=C1NdUwx59aysqvVL6r5Eo5fEByLKbJ68N773MJd7ZOw=;
	h=To:Subject:From:Message-Id:Date; b=MfxgBbF3XJiZ4Xc49TQjYfs7aKJ8MfMR8xlinnvYu6HwLNZKD8OVQ/Dc72vMu4LGp8oHWkKhF1pXPkRF02Y149HTK4HCnEtJ8qVs0lY3h2r01cLXBmfbpCCPkLP5YRGour4SeygVGHclTrfLDstUPZwptqsk4/BIgdEMbPsoXo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNJoYn99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNJoYn99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9AFBC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783490313;
	bh=C1NdUwx59aysqvVL6r5Eo5fEByLKbJ68N773MJd7ZOw=;
	h=To:Subject:From:Date:From;
	b=mNJoYn997i8a8THTEqy7qBvcOsyJK0hQW7wlqjqffwEmVWCoKZUkbsswtYebsaqxj
	 8M6+pEJ0G768v+nsM/PntCIIDG5iTaSmY7nr1mRZCvJMjNG2JDfFHgFJ4b67N020Be
	 AVZjvXgvSKIA5cgIk02lC0YBOo1e8tL4EI5JlQVGcrdvMt7N7nswsfjp+vVzbt2vMi
	 2GqmfoK9SYdAa0ThdJoorO7cCrTOGJsteN3nbfDhnuzHlv0L4bWnZZL17xyjVNpveJ
	 nbZqMqjhqaasOGWkl0BQUyUHQIcAeozB6zRbkmc1wnahclrDpoumi+dUIULiO7cSZ4
	 Z6tkQ8pC2LtlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8656C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349031368.16130.18033652640925947705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e126b65ffab13000d96ab5d4130d7d1f45b7c41ebfa6fceff73ea9d8a865f8e
Date: Wed, 08 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783490313
