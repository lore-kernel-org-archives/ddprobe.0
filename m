Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B45341AA
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754356194; cv=none; b=lpxJ138OBZSkAnZ8G1q+Bf1Wh2W7QKwPO2sngGPYeHU9ZIOXziNdu0+VRFOz6kGgNBE+gl9bli3yCdIUqG8kCsSL5o6rZyZZLy0TgIOAIR/0ALHFHd74JTSOeKqLuVLF+Gj65mxaKnDkGuWqPHEliyDwp9bTC77zpdTei31LUjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754356194; c=relaxed/simple;
	bh=04+lB+Ol/vbzx8BfnswbvAT5l13qQ9CfHo0Ad5YpkFQ=;
	h=To:Subject:From:Message-Id:Date; b=BBUwE8g/ErEbCDHN3UgcTv6yFoO9Fq9RMJ2yPmXdJ0OMytpSOP/rlXmA2+fK9IPYHzaCntjj2OPQ4dgWkOHc1GzN69xl2uioG8/RY/eODcKzTZtfZ3yr6KWLXbRRSC6aJwls+opdYE406IbMA3/Yt+/BvN7BLy+TVMVxwfXznqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkAWFHC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkAWFHC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A838CC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754356193;
	bh=04+lB+Ol/vbzx8BfnswbvAT5l13qQ9CfHo0Ad5YpkFQ=;
	h=To:Subject:From:Date:From;
	b=PkAWFHC6KIfRIyJEX6+O1AkZr32YLvQxyVZYgkUWpMYmDhVUwQv65mnHQBoAWz3TV
	 SC2vUNQIjDkwYhEI0ob8ZzgPP5F5Hq8DJYpVlPRFcv8mViCtid8WghkwJk8Utz9njD
	 8NYg8WITfpsDeZ4YDqYfGYEfVoc8Q2dvweobFMlcdjHEyxUgqjfAMzHdOExDpS0Kks
	 5XeRAskhXjERSDarZ9+vv9oEOcL5fFZ7Hw2Uv3XPs3F35kdFmRr8uFhOJQ6UQEa+DC
	 i4CQ9JjE0+MCFwNMOtuwyH7V5tHLCt2okpdc5O00FMV1KySdw6Jf7Y/lMs+bK//Grp
	 Y2PgRQ8SwNZ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C8BC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435619357.22457.11524183595041839478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9683964f1f55fa3a0296f0d343268befe496c8bce7e59a2bffaf2801bbc0205a
Date: Tue, 05 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754356193
