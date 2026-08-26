Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558D92E717B
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787715634; cv=none; b=G909GJUHPlzea81Tmo/gIi41ld5qKKl8VN4wBa43exJlRXCOZWI9xmkI+1o10CZIHiytvkGARIbmwnHV/Hk4ep1Qh5Kkkfs+6Ah++abuJoW3xV1LMJcHP9S2AAnem4lqxbn9UB3SyKExnTZqTEyhN8LlY0EcHJJolBJWCUXYiqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787715634; c=relaxed/simple;
	bh=rN+dOgyOWtR6jO5MJLAmYt9WvCzJFEvliE8QaF42ZjI=;
	h=To:Subject:From:Message-Id:Date; b=XWpVt7Otkhx0BP3zKA1p6zDaGGP61Nsb8avbZs0q2PCTYKrjMaYREDEk+VLcKZujF5Ds2joSvRKyVAdvgiss69H2GLlSOixVv3JVKWbkhvHENV04jv07pEDS8oq52WD7dtGBrILXJBp+MzhGRY0qaJ0QNyerlxAs+c/ksO33ng4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=St8KG6ZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="St8KG6ZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A67C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787715633;
	bh=rN+dOgyOWtR6jO5MJLAmYt9WvCzJFEvliE8QaF42ZjI=;
	h=To:Subject:From:Date:From;
	b=St8KG6ZJuH1avBXnvFjVFYpxhujWkC7IKf5Ut0LqxUiqwNqFqaY+kN62lkOkHul66
	 k6o6Gi4GKwbsPZhTj/+oJnlxIqJIgpjqzAkMS5iRQc6apkeoIL8sJ9MtD8jSDwn+GX
	 bDVmk+4q0zVfnwCG30W1X61JqgN2iwV3T19e/XgDAC3KkuaEb5QhFBaGiDVlDG/AU2
	 liMvJvIwxGYxOcNCPNdLtJ2AgoaB18+VzhbqoVC/WJ72bgwA1CJSS7QzDKrKm/aRoC
	 KfcNXOIU37dBepAeqTlTa//ra2X3KIyVLAntyUj4Tg419wivslUTjUEscaehaFh4mk
	 txu4Of/8DzO0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFE9C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771563368.26875.16588363596525533839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f1c1045c076ca51e226892f956810b91d2f5e7cf45b7b893ded72b527a53cd
Date: Wed, 26 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787715633
