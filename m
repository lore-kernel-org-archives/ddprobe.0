Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F69D214A88
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743540594; cv=none; b=egQquMQgV3SVn14mLd6sPc2Bbwp8HViLxH6Yrf9KO6lltIScysXBiWCW3/JwVn6WSVX9e+s52WMzLf4WTrE3eIRES5KBNxLs8gWXhU/mkRapadyIn+a5MCwMYJqx16IRvqkgD6A9TeCRRqNr+XKNlAdAZr2V/kvqgNLKFSpuT/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743540594; c=relaxed/simple;
	bh=BM417fqLYWLkTIwg/z1EcFmTasfg1TkYoaUVgVyRO/E=;
	h=To:Subject:From:Message-Id:Date; b=HVrmbMhGd1gnsi8Ez32EOBI32+h88L4eu/ICtJ/GolF2QhICj1BBa5Hrrj8S7hsm4MouGk+1SQhH7fcguyBKVD1mCPqVK0Wpm0es+0dG4GjaGrZbMyCY9rD77qkyMadZSszEnM8mrhlaWsOldpcz2in1XP+h2qULxuI6hkcRjQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDQ6Evjb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDQ6Evjb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D3CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743540593;
	bh=BM417fqLYWLkTIwg/z1EcFmTasfg1TkYoaUVgVyRO/E=;
	h=To:Subject:From:Date:From;
	b=kDQ6EvjbkjVCTS6ROb9eekzp1MZU6F4hPqIX7yGtIXUEQn0b0EgOxow5Yoh4kY5PS
	 xjOAuZg03pLAvPFWuO9W5R/KgkIkiEa7Tq8erWbjdLCca927uTbW4CsF6UTIz0aCV3
	 TOPfq8gwuc1Z5AUT/jSBQ3W7zIgaQirLir3WTKaZhvRnaYLf4lbE03xD56O2UNQyv/
	 ZyklAUI8zcyspYii2+giNNiM3OwCHAEMXcebbUoiubkox5uCzsvi4dgnj7+sAeiVQM
	 tD0rNkVyDnDum3qNWv4Zv0kCZAHi/dPQxpqZt/WHGfai9BRthMdleQ7YkQqc4GlbRM
	 308kmnnVi6Fcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B728C36017
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174354059361.3914.12369143417386899385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e31210efd0968332161d616c5f45d13260051c87e83c733c049811a2650a8482
Date: Tue, 01 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743540593
