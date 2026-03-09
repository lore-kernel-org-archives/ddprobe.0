Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA5626D4CA
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773038094; cv=none; b=bhgOE917o+vZmJHPHGvURNV91oJ2scVZ17rIY5zMsRSsITR96olfmXESS8YSvd2zdPJW3PQzuxGsgGQmb2j8BUqSDFeBKKgwwmJ28CtFyPOHjCgMHvZTHCtUjuCYRG98D9WJQh6W3GHJ+q8aqfW0cjoULGoFmFc8VaM8yqwlj0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773038094; c=relaxed/simple;
	bh=WqYStx7Fk8xw91rCXeLn+gy04M5kyAlov2pmjItP2TQ=;
	h=To:Subject:From:Message-Id:Date; b=rshBhF9COALa9vfeMkVcdDQnxvmE9NoxLY4Nue3d1BX30Cs6Rs3WCDFTosp/gsHevHk52KywA6zYpaTEO2CGxRPDsxM9m/O/ZxjcMs/yq7RHOfOJNcpdLqrwBif1CzP1W+6qJmy5dzsNwbeBw3+u+3rB3dXExKqfB6yfrO0ZKpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EasfjdxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EasfjdxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97135C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773038093;
	bh=WqYStx7Fk8xw91rCXeLn+gy04M5kyAlov2pmjItP2TQ=;
	h=To:Subject:From:Date:From;
	b=EasfjdxWrJWldgM4VANENu/Bjx//avCTako43WoW/LBuVWCVgiQHF4+PXhiEjo/ye
	 z2/OtiZtR5ET5YpgiGbH7CQ3y3+a6RpEQDWESXmA9atWAYRkALtZTZrorK9cc0oZDc
	 XmNRVCrwMrLoCvEW5DLlDdIiemB7FIXpGpoAiJAy+ByAAllSrMhb2x1YsmV/ocIHnB
	 SEiYXO5l0iBRvtn5E8Sfv8qp1Hrvli622POtk7WA3pE6CdOszLuzCjsrlnz3cXEsAa
	 vyjJjiJN2qWyHTtg0kCM7nO4LTW1rB+MgeBnB7grX7wS46FW/Gta+PmVZBiw1EcxBa
	 GBIMZCrhexcJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D3EF36E5
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303809357.26283.7061295993188540734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ffc2f498a95dae78c69ffe678f17e30a95c044bd25621d68f6b6963e217413a
Date: Mon, 09 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773038093
