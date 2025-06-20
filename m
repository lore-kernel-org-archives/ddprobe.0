Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2157C1AD3E0
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750393794; cv=none; b=IeD13a9iPrhuIQJ8Cwz+meLs1ICTttHl9ZlgEo7VZu1E5xbLCTsWUpaLw1nb532kirSjSTNhgnhZecZJQsrR78tEDNkLPEhpw+udSy3giJhHlozRqR1H3zL+g2QzxgmPihiJJ5aDITeBpTWtT3ae2Q4pPZpUItv7MJLo1XdAs+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750393794; c=relaxed/simple;
	bh=pi6uZ7ZKoBeTngentnoMZ4hH5xGj8aWntRDhUhEguHc=;
	h=To:Subject:From:Message-Id:Date; b=TygBJFPcJnTsvStBH8NVyM9V9JFuWEa+Eh9EuP1ttDfEzqKndkNEP1euKcXat/r6qgygegCPRE/h+rzsat8uVBwekY623muUURvRzY9eqliUzlQMUCBtM/xWgmmPShpW/qqjN3zaDeHRNcXrLhpa/ne+fx7BwpJj6W1IQOmra4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAKbaPQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAKbaPQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26E1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750393793;
	bh=pi6uZ7ZKoBeTngentnoMZ4hH5xGj8aWntRDhUhEguHc=;
	h=To:Subject:From:Date:From;
	b=bAKbaPQri4OQUplDLjSXT2Ibs4e2Sytkw0QUkqWqeDQ/YTjZGVr6VShWBZS60RURK
	 4nXBqS0nLatL3uJ0vriFlSe3cP2l1ahsrmaj2kA4Sfktm53TCo1PYDzDoWUXo0VcLK
	 pyhohcfrXcSM92/AMCmG/nSjoI+pWhdHEYkbNeiMw+TofMB+7TL+SGa2HkVYlqneQl
	 +v4fNtvI80Lad+nUPe2yaA/kgz6aM5jDoGPM0MLYiHB3C+7wNGzo+6PcRjqayWMxE0
	 ucssTtJ+kAimFwiaTQjL9ZysSUGx+XXv9+9zmdPfM2i4JmBqX7dEUclnfYs/MhoXw+
	 DSlW5tuuGIPsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF1C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039379357.30635.10770056367008960830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccd7f9ae39a17f58963c1a06512a4055ded7012113113936257c41d32a5bd7a
Date: Fri, 20 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750393793
