Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D53238142
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761411594; cv=none; b=Ff2HhQxquJwF3C3rgtwZYQ1JYDs8Fk6Rn2nD8auaN9dmfD12P4fFULq95umV0oy0cg1viWMGqs3hxxIR4HJIqDNPqIMaOyNcNKheHF/knYlCWwURN6QHVzAckKJlxgHcZ77MkA7mOd+947oqUUZdULGabXkfjo7a9EJxWiOhyJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761411594; c=relaxed/simple;
	bh=uhVbEDH5XfNxt2IX3X92VCuaef2UpCkRFfgWVg0zX0Q=;
	h=To:Subject:From:Message-Id:Date; b=JLpsJlnsqYospG1eliFGxoXWomM1/hHmWZI+m2gegEwfXy7qqDIe5t99sGtUqoiGF4OcK6Z9rUHf7uGvB49KkQYQO3NIwMwqLKdF3/Y0wlh/t4SDcDcB/1pb2zCp+Nnth4IowEn2hq0QCwpl6pphJxaXqBP3sS1jpP7NXiaR3Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjPm5NYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjPm5NYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C12C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761411593;
	bh=uhVbEDH5XfNxt2IX3X92VCuaef2UpCkRFfgWVg0zX0Q=;
	h=To:Subject:From:Date:From;
	b=KjPm5NYJy6b9/YoRFjNJfN3KiByTm12aogKebx1RNGKW/9IH276fesjZtvtbdao/r
	 kd59IzsOhNCqfcqbaw6hkKvybxXbm/tafON6zqN5mbZNlWZTWW5SbZDBuCPfxqDL5i
	 KIHfdI4PvjgWf1gc42TqjKXmIPNgPdEFAMR/NmGwe7hucE5vfkc/qhVUf3XChp5P0n
	 69my6SRw5kcY8dC7CAoMS2Pmh1rpTK9mSkPLLGWlVcOQfEDPH6cYXVORZmHVy0SxYq
	 Rt9yQ5bRBGchIdsXmyZJCkfrjwnjqAM2ZaHo/OjHKKITnDlqLmHoHspSEVIuL9aAlk
	 0NxgzdVCdLNwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76ACCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141159358.19927.12413872361190813770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a73f3b61482e3fd8f6495912fc2c151c5497f79de905b95b0122026b89de9095
Date: Sat, 25 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761411593
