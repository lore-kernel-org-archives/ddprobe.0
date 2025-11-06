Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330DC2E8B9B
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762432794; cv=none; b=dBfXQLnv3WQhVK9Fy3VUGtQSKT5QpMcR32SU5wdkFY3Ka8TRBMeXAE+NfSbXDas5MxyLz1k1Wa4DT0JBCKvVaFmh7lzDhOyJPQmOIUBNoV1tnayFUlVmusOW/Mr0X82dAb+R77bFn4EFXcRk0gmFVnRKN3G54CEhviOp8vPmdHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762432794; c=relaxed/simple;
	bh=Elx5gU+0jqIqf6GINTiHhrz+C8BhsFMl/XFk2n+XM90=;
	h=To:Subject:From:Message-Id:Date; b=Ama3YZqfXstv1Dd8yLI3mjGx+wfaW2n08wJ1jHDogcmpIeN0ufXPdM3XUvrYJ3SmRubWXp+2ZuH6jwbXyGx8oj1yRNPBqEP9ntWDGSAX8nWGGDtHp/hcz5swDx3OxKVozRP0D+Z+c0u/WNUOLWkjScsB0lDXuclpugQppDJjJ7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzHDYSP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzHDYSP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE61AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762432793;
	bh=Elx5gU+0jqIqf6GINTiHhrz+C8BhsFMl/XFk2n+XM90=;
	h=To:Subject:From:Date:From;
	b=PzHDYSP5RJvxeGdPcCw60fdYwLT0IuH8Txd2ygFIpoVO2VmbiMmVCv/X+k7hg7RBq
	 LlJJJrBKLO1B6kkMS++aljaiEPlqmicMRbNv5q5OcN3ocEIlz+kTHtyIgA7oqwdZdL
	 Kj94A/GZ/3T3CgtL1xupFHhadmDQ7E31PqLrD7PQZyw8259IBY7Zz0jXHKhdi/azNN
	 2qCKnD1nzui499LxRL55KVu83C+I4f77ghmCktw+/YeltyxFJrQ6lDR+bAzV4Rs43g
	 B/RuTMjNntd6teNwWFlo16KnpRslWppO2nryqFqNTADFIR10XWaWNtCo4Du5ZSM5i+
	 ZSBvmYk2pAcyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CF3CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243279358.16062.16894314926463874129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5806c7979e9230756266c7a65388f5444e25b8dc2bc315d05314cde21b5c89
Date: Thu, 06 Nov 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762432793
