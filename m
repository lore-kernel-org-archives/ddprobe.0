Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B37284896
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772419494; cv=none; b=iJrbHtNDzfmghqWphLvZCwwaAfSCwaTcMtIXcirN60JKG/t+NPoOPwr6g74S18UE240yKWYvlYiIcVZFHbXWHE+4v7Y4mfJglNdrZKBIRL+rZAM+EuGipBOXebwi3tnhE0bxZiCb5AwImRKVgBYAVdI8IBkSQlK3cvBk8Q/TbBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772419494; c=relaxed/simple;
	bh=VLX40QC8g2XHCtiwAfegJ5tfusLJBpCRgwpLtLDTCJA=;
	h=To:Subject:From:Message-Id:Date; b=a4GrksPx45CnasbJXMrMhBxwI14/Khc9FdoE9FS/tOBEUz9kG2gKUmLN1hLlKU6PL3K4M4x29nJC1qZFgCkEYWNYmaKbG1NAFnwjKmg40wsFG45jNEfcSyDyEeIGo/5lS5H3h/0FXCO/z+eM8ylzSmMqlIyJVL704ckXWRODym0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAb/pG3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAb/pG3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC28C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772419493;
	bh=VLX40QC8g2XHCtiwAfegJ5tfusLJBpCRgwpLtLDTCJA=;
	h=To:Subject:From:Date:From;
	b=jAb/pG3VMb5LYZrAgsJED8dGJFymY7o5F2plJ/FzDcY8QrJWRp8zGqV1styNLjVTH
	 tva1vnMKHDySUBQnXL58eSdF+tQ7BnD75O3C/A/mdUGyVXbzeRiv+y7l1YjXBrPnJ3
	 djWNu6Jdu02R9WHcBv5gnV/d6Kztc4RqUpcdGugU0dgh53e+or3toyMb+9qGUFUv0a
	 1rcCw0KZFzV0ulQWyv6mvst1OFhVMaOGT3uw3mDQ55H/KUJDHRkM+sZOa/g41Z+n9C
	 PthTutM36A1aF6tjrjk/WN5BqJmJpRewvLqvVeimb3iozRt42XxgZNa5LvVnslTnLg
	 SasJrThPquLdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E39D58E48
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177241949373.7947.10953791650883216965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb84185d294d6a7962b064bc89116d13017ec89d6abea590d6d4727b82724070
Date: Mon, 02 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772419493
