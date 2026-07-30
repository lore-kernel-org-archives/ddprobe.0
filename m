Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686242877C3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785370834; cv=none; b=LDUn3o4y4AZ20NP+cD+6rgxc4tFRcYXHli8Qs8Qo8zrSyyyaITpgFhrxNZ3fPxXRpjW7L8NSLYU2dZj98gq4X8uNs4T2tZm6HuLC9hMZuHgfko/cyjnCEyXn2uIJdRWRowhDzcQ3lUS1K47cApm4Wj0eytAPAEExj7nCLP8DEfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785370834; c=relaxed/simple;
	bh=MkCwK8Y9s/1XDcn1M+UX/yo4M5MAdtRj33nr6W8Wtpk=;
	h=To:Subject:From:Message-Id:Date; b=PsKya+okoh7Lv7eGEo4i9ulznXd1vKbd46XeWjIfgZoaa5ev0RCP/TzH1SaJfRCXIHWwZl2ZQOPf0okTzmoPb36US9FIFdsTW/iKSbem8vyI5RO/OnMYpJudvC6JL/wBaSW7+f7wKuJOnqrv3v5qGA2Xiw8knIsjNkWlVd+2Ax8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFYMUrpF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFYMUrpF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD61C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785370833;
	bh=MkCwK8Y9s/1XDcn1M+UX/yo4M5MAdtRj33nr6W8Wtpk=;
	h=To:Subject:From:Date:From;
	b=BFYMUrpFCxYJVH6CTRDq7RG23tO8St5YSP4DcWM9Yigp8jHK2uQdXgz/V1TGXBny6
	 aabw074bzVopGcgieKDCpm2WZlt7SUAHSDLKXn4Y6vhBSmAy/hNqXV0zKONqidOVD8
	 i6CZ0Dv1fz+xXQzHqGyi/lZY37NGOZDK13gDX9CPXwtjo0LxzMW9ba0tyO6wC0sy0t
	 8Wts28X1l3ryoarK9igIugLk8qr0sLbpBC1ksiV0yXOjTytKMPcZ+sAecvH8dEORba
	 7yUf5qPBtSs0Dh5XyaqaZw083OYSlPAO1Nd6oO8l4Q8lbDLfeYuj6PxsheTW97vrjg
	 zDcJZXyDwICNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BA7C54FCD
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537083368.21361.10880666181635734510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e64615956a360f87d38f3fee9b2798fabe41cd0c60122ce370bd161e3b08f73
Date: Thu, 30 Jul 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785370833
