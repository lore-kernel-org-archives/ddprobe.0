Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C86F276058
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748644794; cv=none; b=VCN4QB2729mlZuRLeUTMqkvb0StqIDcQWv0vzOYNqUm4BL3sIGUoTUa3GKUe29KnCcRwSTwbZ+x3Jr9FrrOTOlqWwW0a2WiBock/I5LUQ7Fm/RP/qINinHcMXWk+hwi5bMzFJ7TLnKeMO03AyiRaf6HBIeWHifUGuOal4p90oyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748644794; c=relaxed/simple;
	bh=NY22VYuO25WOHhvInzPKqrq0ftGse/E422VjyzuiXiY=;
	h=To:Subject:From:Message-Id:Date; b=nGsgHoAt9nizp3PBOJkT5H14+Pdyqs29JXnhuFTHVd0A6nm/6O4yijEAgKC8/KgdZnvFYq1eKsYVosxpY5k4Khsikf1HlFv1WLe3Xkys3kd2WJ+vMZWi5mvFEClBDYuNLFss8PPw0XXFYqxxMRcKpy7YI1eWvQ36UzVZwYC6j1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqmK1HDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqmK1HDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1594C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748644793;
	bh=NY22VYuO25WOHhvInzPKqrq0ftGse/E422VjyzuiXiY=;
	h=To:Subject:From:Date:From;
	b=GqmK1HDBqykNnor/n77xEoTJ5/IdapeSg6XTOWHa00W75clefpTHKhe+HTiR4TBQ+
	 9r/yfOcMiboi/la5XfMNZYagaA7WmCL/5g8ybg6yM7OIsrB6p2RA0eWm7mNWIhgobK
	 vXRGckKgKfJMOkdWu95fsPXZyGUFGHp0J9wUO63qQZI79Oqzx4XyuZ7TxSX/LttSE2
	 HJzAvblZ6Bgc+oRAKknHW5gINQGuEqtUscQ+qRgoh43bQNnbSB2ao6wyPrdF/NfSPQ
	 HWxk8v9gq97nj+zKcqC2j+8jSLG+hRhTkgjRIXsyj+5SOaXf76xGlPmTBsKLI6wy2J
	 z4PgNPktz0Qpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA30C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174864479357.31026.13270668398269886661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee546c3c942682b8367526c4ad791d3f1de030651cca9e01f35b1e9f7c17b7a7
Date: Fri, 30 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748644793
