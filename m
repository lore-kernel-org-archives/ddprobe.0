Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A69521CC58
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781079934; cv=none; b=LkFVJmjqgTrelvO/0aLCgOV93o0hKJxNoJNSVP4jBLmcFgkDrAPZ6mQEOm9cRT8/88Cefi0RwZaKFZXDSPb/qB3bDERXHQZwKYtzNHMPIpT3u36dUUxcQcTd89Q3wnQx41D29Ai9Qg/84RO07GZ8kEatNJ7z+USePW08/QgQ44I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781079934; c=relaxed/simple;
	bh=Twi7WwyAJxgA2iNHlnXZC9n64PgmDWgyqgsKKHnOZP4=;
	h=To:Subject:From:Message-Id:Date; b=I8FV6vWvw2LTSiNJuhkHsXbnc6JERAnSN+qRMcyJ4CMph/JtVOok6QLJbXTvH/M83FkawM9qS6iyrla09fuBWxExjw8WZ1/KssCq29Fd+6JSOwO2GvJkxP6GND9m7PSJsNIbybCOCArxPNblouCV5YCXhW9uh+awDh1YQNbjhPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElAz9vrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElAz9vrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA00C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781079933;
	bh=Twi7WwyAJxgA2iNHlnXZC9n64PgmDWgyqgsKKHnOZP4=;
	h=To:Subject:From:Date:From;
	b=ElAz9vrLoadPT0zakNTnM6xssVI7eQZDZP89bJ1z52Ky3VbkeaHFWgLTVoVmMRn3p
	 1JTttt3srxVD6CuJ2MZBcNAUQFqxu1JJjvGc3vPZRZSe8CIIt8rg5MAeHFDo/lbiKU
	 C/bZ/QcsJJWUkhb6/IUnvfWvb0VgLpkMw5gMa7CUktckXYQ6WgEhqpPOhXG3Anr70c
	 /EZHF8hDnvGIUJNCKhN63bihyWICT08CP/dLZ4rnDlK5VvFW0I7shrrsjs03lm9GKt
	 sAnax7+QSxj374VapUfTR1g+9S7OwiB4wxH4ZFe1iIBDEhgTu/rou8r9/+jFlG4/4m
	 BKRudidOQWpZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5ACBCD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107993373.7567.538231616931622998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470ce300062bd8dadfbe9a3ed4a748aba53e27545dbe5b6a8eb25c4701098006
Date: Wed, 10 Jun 2026 08:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781079933
