Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644874A2E17
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782910714; cv=none; b=bDUEab6Q8vYgc+w1hWZwwDrl+yCTImK/XMxrl6hV3vDTOZpoM0R60x1IN0J5ZWS5yQ5y7bjqJ1jDDwfLKERw6YV3IPrUoSSMUTWGgKuQR6AhyaPfU3JMTJhUgc87xbgVg2nSnEqBZrE0b8AQni3iMsEnYOwoPp3f7tET/w/VRMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782910714; c=relaxed/simple;
	bh=MuOMvRtlhu9qQFgKuOkq0MylXJ+04Mwu6WkzZ0poXsc=;
	h=To:Subject:From:Message-Id:Date; b=NUEibRiA7qhP+ldnmZv3fbGFIgdP89axNWHbStykTOPBgKBLXMj7Iarg2NE+kSb9xNWXBGxQ53Ij+ksFh8kip3Xj2kWjzI5jQrUkpkARzCSFmbkd7GsjwOuIj7PyirKxJ1CwdPI2+FlxeuBMK7QnqBIeCa3dR4DFU3l0F0Pcm8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHg5H7aa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHg5H7aa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C396FC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782910713;
	bh=MuOMvRtlhu9qQFgKuOkq0MylXJ+04Mwu6WkzZ0poXsc=;
	h=To:Subject:From:Date:From;
	b=qHg5H7aaYCFoZY2za+mp9QDJ/2PCBb5fkMLa/Uso1M3UqYiZgVBIURMDyPVDYqEiH
	 20dH2T26EN8Bp0XuFGfbsEpQ/pNUZEaF0W2hN45980bhHFVnOXuGS5KDTxGq63v1I9
	 0PQxt8R49KyZ7bykHtlqkmXyxom9kKqOO/69KPBkTFKa6hhVcjn+LoEkfCkUpONnn6
	 bNozsvcj/CeAX/IZbyNsLAthVZt4tyCAqjrIBI3fS4XxsBs7Nj2+fvgnau4qy8DPO7
	 dCzwNI1SRrv+uNsXd5APKCppHg3BBxwRjeM0ECoXCrreBtZwGiFJMQWa4R2hgrfDBp
	 Gt5mAZZZ9ymAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3CCC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291071369.32198.17938752490985172895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a689927c19baf4cf3b79e680c5edc96511e4f2fe2fd55f2680dafc03b0ee15
Date: Wed, 01 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782910713
