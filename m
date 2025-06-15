Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4EB9262FD1
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749981593; cv=none; b=RTrZ1deITC+UNHIx1BXXCoFjyTe5zj02DlP31EW08HXSp3dIm6h/wG/ff3j+w16qYvtJ3jgoUPHvX6P1HIkDGQSiujANkwjM+3m5FYYUSIbRWWKan4PXzAMiybM7OIUjIZeFLKnRKL5q+cU3LUF3WGfD1R/GeYwdGVzyai4F4Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749981593; c=relaxed/simple;
	bh=yE6mTuSd+I8OyRbS9BpJ5HNlv8pU9gk1eUH9ukI5XaI=;
	h=To:Subject:From:Message-Id:Date; b=Oy4YSmpCL51ZfYNVtxH397p9hTAQ1OfFh2oPy4tneTyQ8Dvi3db7/gSJlLNvRISo3JliuQGSkM0LwKgj9u0hev8Uo4ceMAKWupMcJpzFmL46rrYuTBjwlP/hVTAOq+DX3+g9w3ippge9zkcwFyhtACiqRuHlPBB+qkL+7YnxBKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFYjOZnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFYjOZnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A81C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749981593;
	bh=yE6mTuSd+I8OyRbS9BpJ5HNlv8pU9gk1eUH9ukI5XaI=;
	h=To:Subject:From:Date:From;
	b=iFYjOZnZpUXg6h2Zhgxbt6lhZu6WiW1YMw6EPNcytjfMBDNWjeo497jei0XyQ9m3E
	 afXqnomITh0Q4JD/IRjb3ojOcZq4rkYrmkBr1RFncv6WTgwZvvqZ3FeEtOmj1xkIRu
	 El1GRpHQsTvpXoRifxkFJNgwVYmTe1LcfyZ3t50nj6jSPjEgbtthWXgPZkMoyY6VaG
	 h7StcGL7tU7VMEqWtqSjSVyYCdjvlUZS+rBM9QrK+IFN5KGyWlpLu56vUDCXaBC09o
	 uXGJgGQyZ2rOk/y4XMXffJqzLJDSUKOKJN6EWjWZWdsbv1sgEmobcNTVeIhIscyjf3
	 swTDHg56nKpWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E6AC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998159359.29454.492688861394000526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 037e523877378fe1b2724d9c4d3e927d2b704cc1e0c9c107ecff828db12837bb
Date: Sun, 15 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749981593
