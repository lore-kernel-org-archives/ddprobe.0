Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6E21E7C08
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766790834; cv=none; b=cDjGn59cZlkP9Gprb5tapKjNxYf7eUsAnfYUnj+Cnj0KQS3rVtZuvDudXt5kNOBf0fTncX2OX+3dtmatF1ZY/TDxR7YINOEKbvFV51yMI5iXGUdRiZkQyAoGJFIAm0vQ9cW73EnRPn66C+B4TbTwEeeLGtH9FzAkVjR2qUyb3Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766790834; c=relaxed/simple;
	bh=12Kqttpa7WFvQf1Rl7Nt8CON+LbRhj5r+ypY02Tae5I=;
	h=To:Subject:From:Message-Id:Date; b=FeJCh0jXHQW3aSWY8eOzMJG9cD/vZlHkdhiorxKc+GcMmt1u03pXUuDaWjScLi7egh6clfXJF7yJg2aZDumLtu7ISv4QSx1if+inaGblqexi0baBtk+dl0uXTqxS1Aa55ymPtLCOshfePCvK+jR+wzJrGOUofvJiplXE3WiHQ7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7FyrBaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7FyrBaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C16C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766790833;
	bh=12Kqttpa7WFvQf1Rl7Nt8CON+LbRhj5r+ypY02Tae5I=;
	h=To:Subject:From:Date:From;
	b=E7FyrBaXrm6tu0ahs7fKltnnVQzI62XPykVBtYG5UVf9kxEBXQSl3MK6jEfpjtOtC
	 RQljjKROf/aYvPnVzFhfrJJA8VphwXRfUjoD33sUkB0U3WGemejPe8v22sPL4NR3es
	 lV5PnKcJzlPl+x2+Wyk4nSmKPQTJPoyPYrO8KOCKWlKmgkj/ipWFLTdV0u3v2mf2/F
	 96SD6XwRAg6PUlkcuYOMuf5JkDpyVN2Qnu4GvZ6GbJWWQpVl+E3coYiuKG359TMj2d
	 yvuUvTSAbbYpv1bbArISjl77ZG3kuNeUVTWNhHyDS427pKuDo3OcMhsiCJp8S/n3Mh
	 uTP02I/JndepQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925CEE8FDB8
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679083359.13954.10065086919940236795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b36c48300581508dcedae8e1cbb8c1dd1628de60c878075c47d41ee6d0b9dab0
Date: Fri, 26 Dec 2025 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766790833
