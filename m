Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618EEFBEF
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716785663; cv=none; b=PMjasKyGDFR3XAVBjUFb7aA0y3mXgB9BgCDt0d5BWE9b0ngPiKF4iv9qUYF39xVhLl9HTGErHCLK1nf2xcoOIyFJQjHciu1OenvBGVD/1hwrQXmqfBthawZ4gmAhRgnRhUnUo0ssz+b57KzsUzvjczA6G0HPWdvbf+jlRD6hH2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716785663; c=relaxed/simple;
	bh=iMx3VbjTY4LCrDzKJb/f8u4MRtKUL0BFzK43h9f8kUk=;
	h=To:Subject:From:Message-Id:Date; b=Ah0ylfLqJ5Bye9SO3JVdV4pw6ML1L8nyv5ItjBQqmDdO+w72m2qImqZiJrzggg6jDsgpvC8UdfofkU/uHL3B4YrkMubkRehYwHkpHz595S6orP3ah2dMP/tbqYJEbyD4XSqbih7iOjqYPj1YqEnMLXv5YRGfyUyW9WNOX+e2HpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYI7G4Ft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYI7G4Ft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77D0C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716785662;
	bh=iMx3VbjTY4LCrDzKJb/f8u4MRtKUL0BFzK43h9f8kUk=;
	h=To:Subject:From:Date:From;
	b=GYI7G4FtOyV9iXDdQw05ihIRQt9I3Lyl7/65bGPrx+Onk/eR9f7VQeH18iV/NWZvE
	 wqa7f++C7kk66lgTwGyuKni27ciZ8M3fjgJCq0P6tA7LmSBocADUNRo54u1lpSjVCS
	 GuWRqdo6FboeGGuZjZlY+nvDXGj2YZz5yLh4CEGwQk/hqPGSo887OMfLN5oMKuMZsB
	 NbLF6/7BeQr1askBUWgwBjzqckmuT7yweobZ/+TPatDKWsbmBUIb7E7Eq+hH76E6Pb
	 y8wv3hv9P5c8PxUJUehIrvde4MzF5oS3GeR2Yajnrfbn7gY5rXpLXwreHzJOSuptCW
	 LVgmd0FICa4pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FD3C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171678566278.12806.5083771678397768820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7006990f158d75688d2f8dd36ec83727f193cb47b3dadfaa51e9d30f4ebc9409
Date: Mon, 27 May 2024 04:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716785662
