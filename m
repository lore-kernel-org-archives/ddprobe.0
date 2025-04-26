Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302781B0402
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745711994; cv=none; b=IDN0HS9O593zPylJ/flLrNgGaIE4NaDhkqbvCX7hFIUcJW7++ATDAzgkOU0MbLaNbf2RPKyoWxhkIdDY0zN58XvIqzElS8QSnr2tHQCICJwO5nqqa4KViRLcFpaFmL3ZNO/HXmxQckhx9kDwZ+KEF+sN/oP1EMXyRI8JkTC6vnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745711994; c=relaxed/simple;
	bh=kB+0PQoZeg93rmsLmtVk4YmmlnPzZ/0MogvS8osabQE=;
	h=To:Subject:From:Message-Id:Date; b=tCAmAwZ1zfi3L5uRp/kJL2B2baOYSYbDxjVY4Q27bRfWTIATrMnIMA6RG81TFUpJfoYU5ODD9UAicD2O1+3Qo/NGiLt2eVlppSpJQCIKf4bnZbUnVYRPvXyfaDVE3Doljif/0IbyDAJESf5w9PIhMCK5KnkqlK4llkJMxrDKpvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDGWfAXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDGWfAXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B1AC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745711993;
	bh=kB+0PQoZeg93rmsLmtVk4YmmlnPzZ/0MogvS8osabQE=;
	h=To:Subject:From:Date:From;
	b=UDGWfAXLiINr9VcvkuuSedHx0tM4Iz94cqdt/a775GxFbmbR8//soApF7wUhMQKsv
	 C2sJsCVJpdZu9qS4nuKEybaKQ1O+KrG2DgDfU+GkG3Xe5heL1ZpenyNbGsiTdnPIly
	 R/1qSyXwp2ExQFTa+eVIBYv07II5SjVEWOzgOlUhhV/QgVFkVCx0dNe5/r15YanIdy
	 zE7nFbRBScVZJkVKuZv0VwNdcEU3gLtNPp91xn8iDVdr5s2cIEMh7fuKPR5/6oea4k
	 4Zd2myEmnw+A3YkAqG9BYtQlJASDgNChN7ySrtBtL34wZLQ5nsdp6fzSJogDNQhWgW
	 jMmhPDXT2s65w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9184EC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571199357.20182.16982800936399177346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2bb662002b0d6652aec4c18e9e9d6d243987fdb612a12b3633283adcc954dc0
Date: Sat, 26 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745711993
