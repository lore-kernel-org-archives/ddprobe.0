Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690E83B6C16
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786613434; cv=none; b=NYdep3rUzme/KbvuRIJEe+B89gHQt9Sp2Xk3C/7Vw2mpBDs5KqURYCDeFMyV85qXaooVHrgaH6OI5DvCKYaILzROk4yqkwh6lw/ogGKgOjIQkma96tKnrUThoWuhiQICjVtEPrK3mqKnEXyv9T594XrnDDvGFeKFTbghP/fFDdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786613434; c=relaxed/simple;
	bh=1l07MhskwFhq34sZEiKQkeMLdYwzOXGT3FvpkBj68zE=;
	h=To:Subject:From:Message-Id:Date; b=grouQk627sUWKfHSh8pkxUWEVkKc5DVr62gMww3I7DabLK5AjKikDnyUir4qr8WzxA2BWi8oPIhprfe9KG/qw5E339G1BaHMfHwqveeq2p2BiwToD/wCfXyOSsf3aVR9NHYaB+WdepPhE8zkJs6MJcMkpRUEg0HsCzHGF6/PJOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Elkx9kYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Elkx9kYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC596C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786613433;
	bh=1l07MhskwFhq34sZEiKQkeMLdYwzOXGT3FvpkBj68zE=;
	h=To:Subject:From:Date:From;
	b=Elkx9kYfkNZE+u5cxDgKkC+T7Cysncg81B1DOORSoEp1Fua5Rli8Qsqr3VoM006Q6
	 7cIMgqaAHRHZR75dYrw9HC6hVupCHm8Po0g1RCW4vZsPm4110A1kqyR92HLWBrHTtS
	 QUfCDfUSFf7RlyzN+CHZHzbsVkued9N8iZVHAGwwKh9xS2eGrLwm4OOWPznd7BKIpm
	 7hAvhbDdRuaxuTE+5jINNbMstAO7EjkBAWLxft9YjY2Oi52z2y0ih51UF0XANcTu3k
	 osehNHHOYsD94ChwpBWbU8RYXQdHleqrmE7zAQEf3Hr+8cKTd/bTz8I07MTXTGjv70
	 cyZ5vHFJ5mLKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9250C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178661343368.27248.17053270645107330931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e374da218068bd42f2ae18d8a8837f8bf89f83ad0f744f914cfb86cf461954d
Date: Thu, 13 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786613433
