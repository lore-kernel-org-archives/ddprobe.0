Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE8F1D5CD7
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737690954; cv=none; b=EOx2LemfbPouU/n7Fo9P7UVLCc2v70Nwp1gCfeIanDByeZUGuDTreT2W/xpYofviV+fPEZZHNasIElx3ikAOz73tO0KoWYrWsMomA8m+n+2aw6sAXe/XyPCm2gX9qN1YiFkFInovxC2U+9MuwrwaFDUq+Trx/U06qgIga02u804=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737690954; c=relaxed/simple;
	bh=h1uZ+BuxW4cP3JUdcPJ3WYYNUFdO6/rFpbN3ZjVpPcQ=;
	h=To:Subject:From:Message-Id:Date; b=REhLQNi70JuukbPZuD3WJHYDded9lntKGWqn8ejA1KKqQSXkyHiRv0zkoNNzO+zeAJBnACVR5oAHx2VKNMnaYUR1ftsillgPw1YREwU28vsn4PowJgMV6Ee2ptztY0WnuT6G9bDVx2CzkdFVXdowlcPtArhbrBsz8quWRdQyB6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlS3su9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlS3su9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FF5C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737690953;
	bh=h1uZ+BuxW4cP3JUdcPJ3WYYNUFdO6/rFpbN3ZjVpPcQ=;
	h=To:Subject:From:Date:From;
	b=hlS3su9Vzh69dehgsi90lwZy34aFjqw3GCZfirPOWTXQrVsPGFWgsUXYGzJVvW1nI
	 WPn2xsVKJGoSosiH8z0G2hr3gmo4M5NruVgwklaz8HV7xWJwjuOBiomk3/4srVdaDN
	 9oQ5on+UBRr6OQP6pUOZgysDH6TEUxuy/UAwGaoaDwsaddXY+/v7rNzrnECvyDynJQ
	 OTRWvunRSEBkPVQ7Py7QiFDbUnmxKeWom4wFeGxKoKjLLNMdejWMLo+51LRzStUSdM
	 28RKSPJza42yAz2dv6b6FtIwLBtVqzN54uEe1ek51Dqbme1tTNU7Pp28o1gTuCRxsg
	 nSEa2KB+Kze5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903A6C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173769095358.5520.15808562706590726470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1efa65234c26968f1652eebbc5512d91f523c651df1b549f7d84452dc0372f46
Date: Fri, 24 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737690953
