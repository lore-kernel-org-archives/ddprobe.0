Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466C2388878
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782973714; cv=none; b=AWjiaWoymHG9PxYDgtSP0lHDT9L+uZZmiHSpVaQepK90d8Mjt3Se7xqxZNwpBDw6fPLnjqTFZf8zbavyyGxuwSBq9jxUN0Tl7nkAh1VvG+CTelbcePm0g83Hc4iPa0QB8aQb/MLNkbQq5eyMhbuwCFz0IG5tY9wKloS8K1imZ7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782973714; c=relaxed/simple;
	bh=cdw9fAfZpMUVExZZg19Ai6aIbtvjfkSKEA+RzEjeQqo=;
	h=To:Subject:From:Message-Id:Date; b=cKp9xuf+3OKfWwoxcery1m3smMPovlnXOyj488xBINTnwWaEjvnv7fDPcJNZkceVa3qdQJDQg6Fp26X36aJ7oFbJuKydsW14o2DTB0/nqi/LlYeXpENQpEMYNeneSYhPlYQfKZjDnV+Ol2978RKXL0SpizKHCoHsOoxMNtJVokk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSmkd88v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSmkd88v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD25BC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782973713;
	bh=cdw9fAfZpMUVExZZg19Ai6aIbtvjfkSKEA+RzEjeQqo=;
	h=To:Subject:From:Date:From;
	b=gSmkd88v75d097TMPzPVCn6IogngSKUf+RmoWEFfYSWREZ1foAwFVIi7tLrBDmEu9
	 y77tF13yxPg+sFlnmUbj92CdKrjy0YK4upE0L5L15IWJ//OmNgtq96o8Mhq6I/FL37
	 CPv+IRA1ZGSxqgmmBfkkYhm3e1cNyDtjwHh/VtYKAmWIW882gPpEfzoCS2frryAFLu
	 059s+vPnAmh1jnWIaa7McVy9Wi75SjCAjAlxQ7ukVpdEltcIyIOnIjKbLzkrKFHbU4
	 zwUS9e5WG7M+s0a7wA6Dy8bD/2IRM+ZLctYd5vjacqTFKRQDrTwAPqGCWeZU61jwDJ
	 VTJNrVvs+8T3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC879C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297371369.26633.18105917588102118411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92387469afa1f0dede4f70856e248b1706da4683fad988c74de83095621cf87e
Date: Thu, 02 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782973713
