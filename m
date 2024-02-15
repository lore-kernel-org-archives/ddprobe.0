Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F029BB677
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707978497; cv=none; b=K9TXy3Rx0b3HlUHXWXc2AyokVs/7SyPBY+ht7+XbSNgle67RBax8gWEqB0lEpLH/nADJ34VGpr7pa6WONHDD5L1r+z42E7fnDj8S7gd0eVreAKg40to7qUyBRVrugXhWaRz2f7C20vHO4xyEPvzTAmi3L+OpXRpiMeMk+B+FWJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707978497; c=relaxed/simple;
	bh=r4HSDRxXfsO2/vUZ6buUmdsP7xz7Vd95XygfHnb4/XI=;
	h=To:Subject:From:Message-Id:Date; b=Idsae08P1rTDKpIBlXHLs5vYy0vQQ2VLTG+n40ENvsZpCSyO08B/ynbuqvaMQPVUKkTLdWihubNpXAzkfrnsSSYXlZj9wxAtHj0XykWU3Ef8fReJcyZLac/T32uFu4k4na58jBa6HHWEfjuPmA9NVHt6gh0CYlvMif5F988PQU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NX5NCL5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NX5NCL5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84687C433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707978496;
	bh=r4HSDRxXfsO2/vUZ6buUmdsP7xz7Vd95XygfHnb4/XI=;
	h=To:Subject:From:Date:From;
	b=NX5NCL5c4ZofJ6ZHqYOHZ5s+gjDdSRhtFrD0CnBcw7ELr14PZxxIVls3eq+uYkO0s
	 7c+0nJDsFG53hZNvzQ5oANx9GkAzhgiK5s3eoLKubyKE8yC2CWnw4q/nbNtFTO0j6s
	 XD242orbCVwC1e/i7WE099fyIuJdyWgkvHQHz0kbdwxnItSVatD6R1aHJwxkeposa+
	 /hTj4hLG3QhJ/9Y5l3y8FbPGgVsehVyODrhV56jXXbvdqk6yIj2sxwBXcPiCrvNDli
	 4AKaAzIlv+qyE1NTfVaSwBHNGKeDJww92xv/wc5hsAz+WoaZsEabDjGUkG5pvSsmTp
	 Dhtfj+QSDEm7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67165C4829E
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170797849639.1835.8765940264400624130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6160dd42081e921534bafc36de0308f429fb922020168e0c0c6db8f44a4906
Date: Thu, 15 Feb 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707978496
