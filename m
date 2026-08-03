Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE5642C513
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785785434; cv=none; b=NZ8nUyi2Pn91KnoC94QjL48eg2SI+9l26lGZ1Gk0Afk+gxO9+a5hjxFC4/VUgFt1AqbQ1tJkctlCyMqPoXgaQOxy5HoDnvTDWbYwoTIirXUGIMDh6qINMlHvLWWdssQkpT34PC3OL9KoFZVCILnHZAsBjBjNgUuVo/1X1VQwPEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785785434; c=relaxed/simple;
	bh=Z8DJ1pKRvZYj9ehG7215IQPLOUSKzOmT2fnf/rjXZqQ=;
	h=To:Subject:From:Message-Id:Date; b=L+hrrz6pvL8gtX1sAhSh8BODLr/7z9USwPkkPUqbiXEU1iMvNT4zcRXT9xWAgV0ksrDJqHpl8CeXFtihRycbrB4RlNwjvb1n915kDXf/CTWN1NExRSc7anA/8+tCxpZFDDDzDxPX9RYF2iML6LCLxdXELxHODpLy1sNAALBYQpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMAmkq1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMAmkq1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FFFC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785785433;
	bh=Z8DJ1pKRvZYj9ehG7215IQPLOUSKzOmT2fnf/rjXZqQ=;
	h=To:Subject:From:Date:From;
	b=HMAmkq1lGwH7fGCZb2Zpvivh0JqW4G+ap13Ch0qw0iUw8aVIiUUw3Sj1FlkLTl6IY
	 PYQBJ6dSY6iDTMegEbVWwZIroB+/kReHStJYf6vpS4/iiRFQoWshccknUPU1LDMwkz
	 aYjHdeV6vuSVVQYdqpRlarBs4rmjtGBaA0sjJI8FCieacN/f5D3Y7xkZuFqcqi4UmA
	 Xnlh5yArqhH2bMuQ1/hSzHj+dE188EjTNhdZViQo8pQYpDr1fYgfxnp84RXB5ljou9
	 wfxt8iB61XoWplXSyWgVDZKBifB8/SqTXllu4lkFI03z3TmiaPqk4ad6fqERz7L7YO
	 c6pI5qrtuIYXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD75DC55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578543370.10680.13646601147259968877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4536ff6696ac9dd685321ce7a4fa19d07b0e9b609af631c7ef5a6fdbc922e94
Date: Mon, 03 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785785433
