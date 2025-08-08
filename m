Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328093FE4
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754623794; cv=none; b=KlJMLDB9h/CzzmWtK2fjZcEolZrwAn4TBlGis63AKns88NbNDShaBwiyxW0ir5idhS7WzTem6D6PMMdTgXB2qGuqXcWedaFvoFjRiYJPDEtobUFhNNZvOAj7oL9w7jBN7p8VSyje6ovnQj89SFkABiwlXfOT6r6swx6rJf9uUMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754623794; c=relaxed/simple;
	bh=mDPjnwQjJcz84qkx1wgFHOhnQg8euLSVeSQhuEoas20=;
	h=To:Subject:From:Message-Id:Date; b=NnGESBoDYixHn3efepXj3fj/kMUSYbK3J2AvQzABaw8p1AuCgLWTFwIbvPH6TjHlipVJUM7s9J9ENoCe2xnIW99+Ay8HhmKMEpgpvs217u/q/6wXaZlkl3VryIAUHjWimhgnLyO2+4NHhzqAbHuNGXba1xDAvRvginvgeW8rlUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzPE6ecv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzPE6ecv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A107BC4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754623793;
	bh=mDPjnwQjJcz84qkx1wgFHOhnQg8euLSVeSQhuEoas20=;
	h=To:Subject:From:Date:From;
	b=qzPE6ecvJEF/MLx+C/4I1bj8mMWBStgiHTIN3wMkSqkTmpU83HsWo6hzlwYuAEkhw
	 pWXIuU8TdM8MsrWaOZf5R72FvyKMs9bd/2V/JZCM/b9i1fDICbsXA/TR753fHu7G7o
	 oFzPe+wBo2+4W+mHtjDxYc2DpH6aQnZOWKR3TRIoA0GA6VfEH8wEKwxRxPa8nHsiZ3
	 d9cSFKazXml8HBDZdS3ep8h1vvvVMWnNGbxa/xgt8+dElWXuGQZnfgTpy0vL9ZM1uP
	 8TN2OSYgKEctEQh5gxQqdFtq6YRhTDs1jGVKtNuAnZ17n6iNn8gv3BoLXFWgUrrxWJ
	 nKn2tZkofiMww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E0C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462379357.15861.10539887429605748076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 395bfdba7224387ce9daab69e556c2502451da6411df248a3fc35f70ab446fcc
Date: Fri, 08 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754623793
