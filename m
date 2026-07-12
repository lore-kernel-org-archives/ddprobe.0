Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414FA279DAF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783840714; cv=none; b=NVFAtJH8CGfhYVIC0z652jxyvVkBAM4/Pf915nqQy7BaZYIuzlxiFetvi56/dugjxS4dOTSzvoKh2rdZRwDVdFL0YYJIajy3/bCk8BvAJvqqpgkzGf1CgBMOUZ5kWcP66YhhlMSS6R/AMUrDUqTl0Q1LZ6SvbxQhAxMV0HtYL6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783840714; c=relaxed/simple;
	bh=iDAWiuO349OqAogl1RzxrNH6r/n1OuqWD7qphps+Xu8=;
	h=To:Subject:From:Message-Id:Date; b=fW/vfgjtLIx8XZiQ3gWHU6RfRDzl9CDD+5Jss9rBarEE7CSafDd9GFHRB89dlDO+pPjeu2ItRUVAbmM7fLJrPlPt5n+5xQgGB1SmgnBYdW9ddQ4XsWuxN/imqyvYpnciuG8pmTuIRKeTY8DiRobAOIwQe/aYyac47rpJfDXbZT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moIqwpKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moIqwpKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F59C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783840713;
	bh=iDAWiuO349OqAogl1RzxrNH6r/n1OuqWD7qphps+Xu8=;
	h=To:Subject:From:Date:From;
	b=moIqwpKBeG2G0/fvU2nCgOirk5ZOnG/74RG7H9doOq8tF+yjJ22yOtrTK8Wr8ZSA8
	 wvzzwPIPYd6NfQCf/Zcfd1VZbkXVH7gcanrEk/QSqib2+nZ3rkedOyU/x7OXoQEdZ/
	 CR5iGbwQufMIUnxLmoIwGDLnNjWPqYeiHa0GvvYyY3L3oXP797Nrml5sK4mtyUPw1a
	 LF593JWAx02VyPI49HbvCQNmiwe1t5PuVF+Zu720/kCEP9zDVhcsrVkoYfSwVzVmaF
	 0/F2tE/dYvoL9C0tkNdR+yHyVE6DwcHnc43qe4MQ0T6ysbHlngEKvw6JnlNaJUwpp+
	 dGMfL9DshHBIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB894C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384071368.29256.3451915800429857035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48bcbd5cbe054587885c3f08fb647a2dcc5886d1ef8b58a72cc3ce990d139989
Date: Sun, 12 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783840713
