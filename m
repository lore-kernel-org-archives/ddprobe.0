Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291943A1B5
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778287654; cv=none; b=M03r6qFYb1+xsn7au6IcAsVVnBzvI7m61w5Vz1gIa1yl8jUaeqBqmgst1vUxwOOT9TGAYqzF17etAAskeOc0YdO47DXR4SS0gV7HacjaDF0wtOMrf1D+whoWqLSbSlWAYYzJphehG2D54mOk5mg58K/QIiZlJQvRyPyg4J7agUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778287654; c=relaxed/simple;
	bh=yomu4iEKyZgkZsxlBbWlABiNbK2UQEAPnxmm3h+/qVc=;
	h=To:Subject:From:Message-Id:Date; b=ittHn2FSQdMt7alPJxMvXKlFRGX6BvFs/WFO7ejqwsAj5Uwrr26EX9AemXDXaK7YYlRwRbJjzHHTM/yOeLR5ilOqt955m/6JF8TjnA0ktn65msr1/EvP+7IjC/3b/KDnfZX9Iq93onESEPVNDnTVM1/MSHLbg1wYFvzhfMm2WKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWcV0/jH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWcV0/jH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C055AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778287653;
	bh=yomu4iEKyZgkZsxlBbWlABiNbK2UQEAPnxmm3h+/qVc=;
	h=To:Subject:From:Date:From;
	b=OWcV0/jHM4pIW41I++6pNX9UgC4YkGJNnQYLhmJFLispJNsaM5kGWpPS2nfQ5GdkN
	 DXpv6AovwRhfkz9ir64BCKbz0dKkY5NNElK/j8JFw6H5kgkhEvvC3AR0E9DESyLWWz
	 IPPFzDyQJFfCTitp7F48bhQ7Vn+CpD5/7DX2NpxljEp+P14kT0r1mCe/A70xFk7wzj
	 /rM+CIj7ZFH576r3W+exeEf0PEifmzqkFQeOR5DeiyiNFHhHQ0DsV9M3g1FqjqFsTf
	 OxdCUYPhsQ7+QlSRWb9XWMJqEy4/aQ6KaZq4DkYZUn8oFik1IBJxtGLuyV9DgiV/Qj
	 zLZ+H1fdtl52A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD62CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177828765369.22229.10230236016983469003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2abb7699442854053c4f74f7a6f8e6ef6deafbb1a4ca91234137ac1025e4b52
Date: Sat, 09 May 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778287653
