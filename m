Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5C719E97F
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760351994; cv=none; b=XOA8qAcUhofWYCfpZNFRHaD2VWiBDTdeL/rXZOwzwwxYeeMb+IOWnD3O6PLf+WrgcaVpPZNUnUkOX6EdkFP3q30IMKyv2oUU839pXvQD1VtH3onfDZeqGmUfqJxJ/LexqGCYPkqBL4wrCjIwO8Izur0wzY9u/KBErkQykTN/HW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760351994; c=relaxed/simple;
	bh=VgloEuD/f4vi8DlO5eS++BmGo7HKLiqbrAhBYgcGiws=;
	h=To:Subject:From:Message-Id:Date; b=WGEPlusg5tpM5/RQ0KkN/sxL2HBia7O0rhCIbjv4c8ohg0iDWyDDMH0e2fAQai+aLdqIo+tzxcjR/Jg8buad6TM+eqP4GMwQ5ScOsL0J+6+T3s6XRlPgEOcWtA9JLtQSZrnpUJI1XpLnFuQcpU431f/11/Nnp14PSQv+OhhYlZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6STQeNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6STQeNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4D5C4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760351993;
	bh=VgloEuD/f4vi8DlO5eS++BmGo7HKLiqbrAhBYgcGiws=;
	h=To:Subject:From:Date:From;
	b=c6STQeNYi4+JZ2AwkuyfeYHEJApqgvz8gU1rlc1XkK3yAvDZEZjhoJ6/Z7uYAra9W
	 NZTq7674ZqRRvelo8WDDBsoe8KeTw+tqZPGaJFGoluZaID2kbYJP1+9gy0HQykzJan
	 IZ0kn32fJy3FCnrF+s/4xz8SrRqu8GKSI5ZreMkytBMl5BEwSiA84tyIxDnsw1CHc6
	 /X0nInEgd3VKbAz7ZQ1bKEYwdH8bvs3q1kvt7hmVzWX+b+zlPBKNHZwyIdZ8LcuAgE
	 AOgukrQQXoB1zUxvFyp8ei5vMlCQph/eQo1uws3zEWcsLKI47LGHLe8qmTWKtyl/az
	 K9kWr0SvVRsqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C47CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035199358.15269.15165720100484815995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e522068335f585d82babca4757c58930611079506da420988bd0c81c6040b9e3
Date: Mon, 13 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760351993
