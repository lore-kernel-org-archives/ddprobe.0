Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BAF1AA7A2
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731585354; cv=none; b=Wtq+sFZMRNnJXwvkvke5WSmGsEk6y/DvjeidQ2aDm0AoyFKI8xPn/xakgD6vSTvVk0+gQBMr4HuhwqolldY2QMlZ5aErjrt+eVpXnsLlSgqqa2wxiskRsHEa1rUoKfWasMBtEUvoAEBSl+IH1C4sZFjFzRXsjjMMqNQpBGVFN1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731585354; c=relaxed/simple;
	bh=HB8LcapEFlF2yEDvdNcPkY6JKarUqjRtYDHidOlYRyw=;
	h=To:Subject:From:Message-Id:Date; b=Z5rgyQHEUUiNz4/IYNarCGYMc0FmiSbAKbImYIzNV4UNG0JVkvOvn6Pyo8d4sITBoADPLS2NvW88HcIWDNJ0iVrofgZ+1NcF5XNKGosEA7+KJMgUyDxUXoGNOD6bu/fqyO5l50WQm8hCZfFEkfk8K1JSfCzbBDRL6JkjcM4JZRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYk4JTh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYk4JTh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3647C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731585353;
	bh=HB8LcapEFlF2yEDvdNcPkY6JKarUqjRtYDHidOlYRyw=;
	h=To:Subject:From:Date:From;
	b=AYk4JTh43kQKBtgJUXIb6tEJfn4iJk6nn7q6phg9LcrXAVFp3aRlk9clmcQSzA2gF
	 gxiZQ0sXC6qXNlhvWudwSiB6a/4jD8JXO6e4KeYKhGnZ32oB0AfC4Qn7fm2qj8kM4j
	 K5gXbyzhSGrsTaNGzn0BFwE2vDk7+nndI+MAQpi6pLR9b40famQJsM3HJcdKAPqOGK
	 n6fVYFjgp5XMdUN8sQYENvbdYSTJBaHJ8FB6cb3X3k84aCRiy4CtvZhGN9pBMDmLnh
	 9dWL16qdH0NcEWAaeeHK6FZjtfueDae4P4kCfq3SwE3IsDylRGPaU1EG93tN7ukFie
	 aycdisbmPMVhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94501D65C7C
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173158535359.21929.2077355694055314760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ada653bb4790c730ade51748980f3199181d1efe7a2f6f3be591e5ba1998e28
Date: Thu, 14 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731585353
