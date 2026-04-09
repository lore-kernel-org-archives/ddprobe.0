Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EED727FD4F
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775771854; cv=none; b=RDzzSCe9kdNpI0/o+M41sAscFDoNXln/2ZpZdK+0JKjC/rcSLWDmwMgy+Xq19ZxcR4hac4uKBCv7N5krpBZNUeY/TS4oSrxptDh7wuIKYk9XlB6HLebl72Iop0Ir6jcdJAsxHE911L/FuKaf686zWDaj6nIaQ5vq+o7woVwh8yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775771854; c=relaxed/simple;
	bh=zf33Eb0I+u+qsokhVsPiDKtvx7L1ImZAA7jcMYGSGuo=;
	h=To:Subject:From:Message-Id:Date; b=b0jmJnfB2/vwzLz8LguTORrcG/Ybh8UH/xHJkXa/n18GbAHJLwqmX7th33fONMKwF1ojr0hxFkqSSS4MdPJreBhbaWumjUbgsiu+beucIFQABjVYuLtVDUftzn159RyPwYYEWfQV7hcvmA7YPp+ULOIkNJAQokUow6kja8V1Z9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFFEQg9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFFEQg9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9247C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775771853;
	bh=zf33Eb0I+u+qsokhVsPiDKtvx7L1ImZAA7jcMYGSGuo=;
	h=To:Subject:From:Date:From;
	b=dFFEQg9Z2jKDQkZtIl+J/V7RLz9Q57buslACeAcY/KE6jYKRZjBFjnpapi9wFLQPD
	 gSfTKgbPM4LmElRpbZigx46E7U5b6bTUQC9bv5dVinaTiQSxizm6SXvHtSX8Zx67fY
	 cHUR1gVlv03+25kAC+OS7ulbdmL6kW/Iq/t7Nd6SnR7IUM9tApXXffCQ/af0kje0Qo
	 4z61D7R+W4JU0DIsywwHKwCqsPFh+UTAM2SKoIZaPDZEobVbKAouA0qpzGoOWtiQ5h
	 KKOh9Twlo9Cy0xOiCCesscW5CSkIFUBfHuX5lhDPuMCMszOhtrU+1Kgi5WdTzgd10W
	 XdxHghC74FHwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93D3F364C3
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577185368.28942.16898234090264154832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f7a5b6a85f56f7f94b8e518f0cabe1802b3646680f4f5a36c56f9fa65a7df3
Date: Thu, 09 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775771853
