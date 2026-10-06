Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60823547072
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791272434; cv=none; b=PQ78GZsgK/tpxivvTsW8SZsuCsoVkm5PbhNO7cltt6/XqOPyIIR0Jlta/ZBnfNRQLMu41wFSnbndDREoK8yTIxaxfikeXEs4SRguUOXStutzkHjNHaLaIR3uU+Rp2hHh377+5PcS50lh+d1FnT37pBuyG+VJhoVmunaBkbNlct0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791272434; c=relaxed/simple;
	bh=bvk5bKFRgRrEXPkLlrSdYdUXmnK7pJQ0LaAu0GVrN4s=;
	h=To:Subject:From:Message-Id:Date; b=O9MTCz8SjwVurD1JPd8qAJUzPCdP7RzVuIFjap6GoH7Lqpr4C67bxbO+/CWtWnwPZ0E5KprZTbKqjHR8myW9SknkGuwORHd8+C/2lRcq3iJa/0symq5GhWSuOzvYGZ03LimXzQafdploDiy+/mb0Z+CxityQEI1k23TIKICyssw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yz/DTZX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yz/DTZX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF931C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791272433;
	bh=bvk5bKFRgRrEXPkLlrSdYdUXmnK7pJQ0LaAu0GVrN4s=;
	h=To:Subject:From:Date:From;
	b=Yz/DTZX/PEEbL77hwsPE5E9eT1D4RLBLw5GHJFO/MweiW85irGSfPx57vh7Y40jls
	 ZFddMExa0ItdiSu3IDavU/GN0aGr/4+txNqgpV25H1PRCWslnoLw5b9a8e9V4qw8uY
	 cK+IlckQ7q5dwrv1RkakJ4W6kWGbMJLas8Y84QohsvHBvCIGQ8gTyx693ShJJBiYEi
	 Lu+yGcXgcnl6uQ0QsnRDcRVzXGz597PyZlppMY+1eqHXORgAK/0wT6Kq4jbk3wwRYE
	 65/zTBZbHdOtdB1FaVihbrhUeNi2ShIoi/TDFgMeUbDu8j7M9QY6IsdoVvLyUOoAb1
	 EG9xE8aNLJW2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CD5CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127243370.679.9597577611454845929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cadc8c367c1144a20c6d9a483abfcf435dee9ce967701b4a2f0d62fbdb312948
Date: Tue, 06 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791272433
