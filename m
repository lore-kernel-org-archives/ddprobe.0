Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDC72E54B5
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752000594; cv=none; b=UmKT//BOqYV044vVihH/78POD+aFk/P/N6SfZt6fp9Y+miXoA3bNQA4iEiAs4HjEmw9BkePqdXpXJvmd1qBs+SluxiHNkFoZPiB3YMplhXnrAr3+/RSeNp30e5Tq0eQn7gni0R/g+KjeERdy0oJD86YKhz7JkW3OAtd7x0ml09o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752000594; c=relaxed/simple;
	bh=A5w/95RuevUha0z+kvC/s0fWaTHoNDcyK+D0TVI5cOk=;
	h=To:Subject:From:Message-Id:Date; b=ZgB7sg/CmqZVVhbfTP/3fCK2rfwutQxYz1o7EAAvtUZon31LNpIBzJ7KecT8SnKyRkFFkrgseuYyJ0KMmwJWqkYxk3ma7BUU7Ho0rsML5C7fT6Ef5spf6rTTGiAWnS2ejRfKXRgKAtKUkQTWnisAjG+f+we64mKGXHtrCBjWxe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klen2QOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klen2QOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCA2C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752000593;
	bh=A5w/95RuevUha0z+kvC/s0fWaTHoNDcyK+D0TVI5cOk=;
	h=To:Subject:From:Date:From;
	b=klen2QObXeTJsAI5CMJeaTNhk+KLoq/C9HsWslxDX/Z/y0taydNGEu3QVDdhQ9H7z
	 c1aLxPZFWZTjO6U9MCLdVCpuxCC7iyCqBauthNkbFNfIPkWM5eaa4jAjP77FA/uF6S
	 kylgP5nSc3a5u5aq0MgLxNrGY227URHW9HYjavZzcVMYsd9ZjCo44Cu3NetT/UMZ/3
	 YnagSj9mDvGZQpvI3DktR6Kil9taeokFWGks1T5mj0nBS3J/joCskpd2wiPQY/j6Sx
	 2SFVD/+/T3LgDGndVGf8JNI7QuOU+kQM2T8GS04xDADSu7JDtUnfMSx/3gd7GyMBVT
	 Gz08IawaOnGiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B8C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175200059357.31254.14535494110094043424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 019465e7a8a8d4fbb68cc46db1e4aea3692732fee4839bb684268c8d67444a49
Date: Tue, 08 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752000593
