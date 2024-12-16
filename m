Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D7625757
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734318954; cv=none; b=l38HIo+S17PMmRCIK35Cc6hyL3IRGmj+9FxCFz7qnOgqY6tq+PoSi3EWD2uytQgbIzTbguTT/nZZDqD96+XnZUsE/OnvxS9U6VNK078/RxsUX+AudchZ7Y6ZbAn275Vn7ECt3v8OpYGB0cEn/0kcTedLnP7F0KcPMDvzRxm8l0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734318954; c=relaxed/simple;
	bh=sGEhd8PtogoR0YvnOZnFB64XlAF3YA2haGu/T/0rQbg=;
	h=To:Subject:From:Message-Id:Date; b=O6CCX6/VDQ7571rzpIlLQmVKeIf9nu7R4k14PUghnnMYcu6AXpV6fet/8K43PMoOF/Bqu6/Ra+gcxk5wOibqcsXuiYFAvAPr4O9F1IH/jDicKxljEdUzrUUFo0rDDL0jm+EnE/PyLsTLEu+dUFKnYvCe1Vx05ifbQ4si0y9W+uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8UJeIwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8UJeIwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58FEC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734318953;
	bh=sGEhd8PtogoR0YvnOZnFB64XlAF3YA2haGu/T/0rQbg=;
	h=To:Subject:From:Date:From;
	b=Y8UJeIwumbrOOH7LsuyzgbXJTxf1mquPG/FTv3YHxHdhJm5HCROp/ilEUsODoMpGe
	 YakepK7e9vCZDu0IgR61MMWZLmH2zgkKMzb/Kl941L3KlqcP8+yyyeSBPruOQJ1yod
	 pVI6PtB0qjzJzDKNor3c+7FtBNVDRFXM08OLzrAF+j5I7T0X+oSYTV7rHVgMLTLkwt
	 7LYgWQCT0cmfqEo89JQyOSnizHOPSMosYrAc+/WvfZJSc2I1Cy1mpA9m+Pj0dlaq4m
	 W7MW6EGnRL5JM2KRo1fAIKZIa9Sj619/pW/XPvegoZ+9qhPg9oqNxn4MYkvTwKZbI+
	 r/9AFk9bYbEFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90801E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173431895358.16699.17738249987740550517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 731422cafe63a95de2fe351e7c04a9ac26896a8e5493e1c48db91a7814154a32
Date: Mon, 16 Dec 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734318953
