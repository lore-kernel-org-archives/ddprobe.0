Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28862257D
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732344954; cv=none; b=kupmkREH1W58qWicwVjahmkB4MkhgkqfGmPmAKncOKDCa/WXDIKkoJtMcTBf6GIfdNurdIZeozzF5VItA8RzYOQ8fEEWUr5BWD53/mdXFH1jhe1kfh90M90hNV1FkVz/+7kN31OtxXenfwmcvVNZI86neUngt5eTg9NviL5dmfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732344954; c=relaxed/simple;
	bh=qQXr+KT6pftyaSIrGlZ9Vijn3MXmTKfLmnOxqmJ9BSY=;
	h=To:Subject:From:Message-Id:Date; b=RFlkpvM/XpLIvPku3cvFR80/Ipda93V61o+c5w1ggLfIwmk/XWRwdnHg3Use0w395dSMVl2B9tmrYqvqNVL4uKGQd2SVNmHhtpwV2r2wSiPQ3GIxLQ/uPETL9Q0c8fd/c4aAKzCKeSAnLgEmImddvEvmM5sbgZ3JFwA3sPtKMHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W27rFTrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W27rFTrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBA3C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732344953;
	bh=qQXr+KT6pftyaSIrGlZ9Vijn3MXmTKfLmnOxqmJ9BSY=;
	h=To:Subject:From:Date:From;
	b=W27rFTrAZ0lzLUYrFBSLV3Slpu9J6gy9CGdpUCMt5vbpd5Ki8+BXvOj7Y5bZv/IKn
	 1uZa2tzu5m1VJOeRhKGixlSDMzUTKpVGDUs+l7kg6xmJ6wEuH8b1nomRdr4zVUyCNN
	 0pW8w1IPpg2mfgkN31SdpnxVuiEv/A1JtFHI3vtDh8v0iV3fX0FiXVU2UmLuVWdVF1
	 GjrA8OSooBWw1caf1VgdzJ+m6QNhV81UcdBRM+AgP3gFzwU9huSnGffrGNYkG7s59c
	 sw3SZQteCDUsVM8VZOp18DhTV+esKnKYbQ8pvtsJw8ucUwzCSC52VYc2lJq5O/8609
	 A31tLWMNCDlZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961C5E6ADE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173234495360.27122.16121355293854158907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bdd9594d363845200bf53da7cc6a48d4767c363ca9f44b9e698b2870a7d61c1
Date: Sat, 23 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732344953
