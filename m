Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B7020DD71
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 18:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736793354; cv=none; b=WXosJcN5Ru9Vgz1miJ6mFzc4wneV5+HZNWFDf2zoJF/JdBNQCgsZa7hFraXXtxkqZVLioW+izorqmH6nG22EHgxk7c7Aj6Jb4KY8y5CQaKd+7mL5VwL1LHX+pGWMYCwM9i6u1DsNgqq+Bqj/g+r2jzt5Grj90cikcACYqQgrzE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736793354; c=relaxed/simple;
	bh=WhFJlKraN7LV/Xm7iSguY2TlXs5v+JkwmelpymfhtMM=;
	h=To:Subject:From:Message-Id:Date; b=F0DNZr9ws31w098lr5qEIok9j/sAJqrG15+4TJNT+dg9XOwonewuQJA/IvrJ3NIVXxzpOFNf5GBaKeygfRk9bpVNZK0I24tq1ccIgtJrEbQY0jxY/rKlAwTo6+4Jz745xLfImzpsRy9AP8beh3wJP4QdKiphlOwSpJ6oPEZZWiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0VcP+Oh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0VcP+Oh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07ADC4CEE1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736793353;
	bh=WhFJlKraN7LV/Xm7iSguY2TlXs5v+JkwmelpymfhtMM=;
	h=To:Subject:From:Date:From;
	b=i0VcP+OhbrWZNHSzEMPvw8nTIgYvJ7NZLgMWAbRTw9266QfjUP+3GHQo0ZmRkWjPe
	 av0kj5uyOTT26OzwlxH0qJg9hTXwbIr552mLXavsj0068DfbUzN/VmEZJBPdxiUkNw
	 gSObKhlkQKk4OlCYxrnNecTFmNY5hXaLP+r2m6RLEvdTy13C/DwsAytuRIWrO7aERH
	 UzcGraD1CJNX6/KAeaDbvDgGGdqiJB8uC9rgYiKKzpCLN8Ij64om+UlcxtDI3/yCHu
	 VQ507hVRXSUszcXeAfaa8RunEJS3p2x484/1gMjpnjfok2FPezzVP1PuDuDvSIHl0i
	 m2xmlN1LuED7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F228C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173679335364.14416.9614128550633227387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0df63346be3ef0d468152587d23677ba7db9b52cddb5ed4cd5da9f6ac3a9f791
Date: Mon, 13 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736793353
