Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6FF1474CC
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773041693; cv=none; b=rFCRF4ER/5tsFDqVoD/YyqB+EpOxUCuyUuCMKDDPhYb8DJDnmOKHtAz4HH99MKjPcRn5/d46lqPT5UDJ3mE60EUlE/TiybN2Q1CdZ4z6VoIAd8SmPsnXYiuzvuruEETixh/mspeH1+KWRxmVcqmMF4J0mZ1fw9YQpONrrclgXF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773041693; c=relaxed/simple;
	bh=NisnPGt5C7XSi0qUvUS9Hf1a78VL6XM3aHyxF7zwe8o=;
	h=To:Subject:From:Message-Id:Date; b=RU4tB02dNviYOkkHQWbX2JAbcgUJE813vaN6Pb/b5KGTSsn5OI1/W2pl09te7Z4YZKx64+ZHUar3+9kh3gBjBdZLNtiQiZE6UnG8ZbtJcUOIPHZ9bpHFnMzV77h/kxsgcr6N182ckMB2Mp3c3aTTe/lxQy346pt5yS4xci9OK+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKPQb3Zq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKPQb3Zq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A461FC19423
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773041693;
	bh=NisnPGt5C7XSi0qUvUS9Hf1a78VL6XM3aHyxF7zwe8o=;
	h=To:Subject:From:Date:From;
	b=kKPQb3ZqUzentR7+Bn00Hz1keTZxm0qxF9kqDksG2j1duWW2tItRKhYXB4gBqQZoa
	 hq7Uc74GE3ylyQWXFp8/wz04E3R7r7MI9CA6Letk+8uZ6+epWKh3EnBV2CWcrIilXD
	 /OjyW5X1iyFMQqULEhzBKH40dzZaxUMk24q5XJrDzuF291zHwAHACFvs+x+jOLL+fT
	 E1d72B2nazLkeUPsltcNP/b8+cshVtfUl7jaGnAeVSeTk5EIrQAVFvXMtkeintugdG
	 xctTZ0w3XMZMF0AIjAP2eH5tKSQq+8xIOEW9GGnR0Ptum4tpC3GIFxq6tWdZc0J3p0
	 9BcwSCGs7AheA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95150EF36F6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177304169357.10898.14505946285853164534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 920a9252fdeb32bad9144b1d0f06ea9d399b02ecf17d3ade50f9d0ef18a35fa0
Date: Mon, 09 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773041693
