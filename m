Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAE427B32B
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762547994; cv=none; b=QBcwniQyVlECGzNYG36yTWIWTOErZ7Vk9xZoCwxVHk1VuIzFzhUIsDDKr9bb533t6urUK7p9tLIk7+GVWj/18EhfXpPtmYmSRY9WV5PVHmDCCSP1/NBNP98FWJVkRcdHZzJN4n4A/a6rQGa5ss1Y5j0jGv8P5mTwyoHAJuFknRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762547994; c=relaxed/simple;
	bh=+1xzKz4r+/KRl3a9cT+zOAPsnuEDpkUd8cHFnfaYj9I=;
	h=To:Subject:From:Message-Id:Date; b=sKwmlf7A1l3kl63YZ4IUV1aFmSDqCr3XY5asFaZ7HWfkRy4/AwcepF6j88zzpF9k5ySmJBifhY3YNbnJqRiwuiGJWsLg6PqS0oHRTqVrCj5pwoMN3L3Mbb8sIRaXKOjzo5h+EmDauKEBv6TQPJBktVD4N9l1IjCGO/VvL2PUUN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otnhpj8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otnhpj8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0ED0C19422
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762547993;
	bh=+1xzKz4r+/KRl3a9cT+zOAPsnuEDpkUd8cHFnfaYj9I=;
	h=To:Subject:From:Date:From;
	b=otnhpj8pPfogzE+mNgNSpPwTnl7uDtiqAI45bUABxmj5HSraM3xyDXRcJ2y69VrHO
	 d31SUqvnHclXLsEJWYzlqtweIS3QD0RLKYo0Nw4Msf5Gh3KIAqM6zA/vPAXm1kMOlg
	 axfeOqj+eaucposumR0Hok3WIiWzKLahBMiHMqaSxAHN6e/2mpNmybG0ykoiDE3QC+
	 +r9Ijb935C0KtYZJww23E6hYAZCV4lp2rvzLJg+3eh4t64grRFKTSnhgceT+OP/qze
	 0XNfjJk7JCzcaWCk8tfKt84UMlhyZ/h2G4zf4AmdEa2hj8LzLEth3SLUMv4DdZdfP6
	 rduFft6zC3S/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0FCBCCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254799359.20990.3239361649909300867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a530eacc7be33a5a1131b167bedf2a7d24ca978e83e1df62d08738cd007c148e
Date: Fri, 07 Nov 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762547993
