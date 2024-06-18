Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F32D1BF50
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718737763; cv=none; b=p7EtFlQmDIHptiTQaG66/OH9Dy1/s7r9MnY/4nMBEQTbkNXqh3cJlpBNWw+RS0f+D01fagYpwyYYJDPCulCAuesy0c65m7+6McfRRN8sscgU9RYJ9rADMEpVEaeub5AvSaCtZYOw7VSt1LV4HF66XQcEkM4ZV+zuzjAGDylgoHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718737763; c=relaxed/simple;
	bh=+RNZKsVYIu+0wZErOIqM9xJxaH876EAZlV/MBsl2hGg=;
	h=To:Subject:From:Message-Id:Date; b=Fpo/X99jAvhvCJNnQBHpEdZb3QMd2tgwTRW9MQOiRl5XYgkvThJF1Yap+keGiPFLo73eDUShUPWfQwSl+lY0GvHsZjwAN5+68Zw3unq6Tppm7Gf3BQrlYWhX/x7iQUpCaDc8zliOallIVXhywVf3toBr+rdgzrijUBB0pI3XJlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QErzaJBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QErzaJBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA7EC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718737762;
	bh=+RNZKsVYIu+0wZErOIqM9xJxaH876EAZlV/MBsl2hGg=;
	h=To:Subject:From:Date:From;
	b=QErzaJBy1EB0eAVazUm37eZK/BmF2kXX3zObBzjboO7+ufNjNlhWQkq/KN/URUHB0
	 Ym3MP4Y+qn+eGuFqgJeUjWVgc2NwcVxC8MOBMV/oF6yhetnyFyll9zqoUJ671uZLi4
	 WIfrocfhuwz9fjnjxJaAfjnbFBUzuza0Ob/sbBmG4H0ginEw1Y9yQXFJQHNBFYFGRg
	 E3HNc20BTFjK/NTWCX92tjSaut/1Px6TLrZjlCEw/8kbpy5bg/rDpDx9IdM6lMSXOJ
	 Vz9utsekxEeVENh1Zb2Ry1nl9uF6TakYME/wyZrRUk8WfCIgklSpryngOgOE3teuWe
	 V4BURHgjjulpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC96CC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171873776276.24390.7653880399566788498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ecd26664241bedb0a48944ebb0a5fef042edf13293820bb2b2547b7a30a20c
Date: Tue, 18 Jun 2024 19:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718737762
