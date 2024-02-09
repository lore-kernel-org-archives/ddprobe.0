Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CE0393
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707440297; cv=none; b=aoepgkA/TipsFDZYSEJEMeaO/t0DU0dtInLOd+0vIA3IUtRh8QiX47ThNjFUjET0w1RHBmBib6gVXRJAErdD29LNU0LXIUmgtJ/qw4heLSlWSv8AIlxLHsV5ADSCvkQ8J10lyBep3DA23oWnFL9TjJaMNgqBDNxm3sG6ULp3Xi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707440297; c=relaxed/simple;
	bh=vKEPsBGFGxqP+21SG3w9d6A5lzLyQi0RqfiZBw+ooRY=;
	h=To:Subject:From:Message-Id:Date; b=hmjiki3fYi3i1JEV3pxisDdUlgFoP5vX45LjgAPlx2kjXXBtJVm8QuD3pmWSB0T5m9TUvgpcPFNPlnqUoBPPAs0U+QbeLvUTDi8V1Mv+OJ9KJ+iP35ZH8J17zI0GQVYKkaU7nV65PcANLgg1Z8uUlX7bGPZ4aZHLDzoThSwH+/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQYPFS/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQYPFS/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 996B5C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707440296;
	bh=vKEPsBGFGxqP+21SG3w9d6A5lzLyQi0RqfiZBw+ooRY=;
	h=To:Subject:From:Date:From;
	b=rQYPFS/h79EP46pGvb9HT6QQkwLSHNzRxVreBKUqvxKw5cjp2gDyJHQiVc5NaRcrU
	 qyETC0WAEQvo3PE1y7OeBtEni5is/jbY4yHscoOguDRRh8EZ+jY/QxQXxyob/sOwID
	 w988IndtRXROXPfrEqSqJXaap+FDf47WonfyZ+sobpC6bX4oYZgOvkwusdl4DB/Vre
	 5Br/X96sO1djhUIhtXQmJ5YjIcO22BObsBOXnUM2C3An8TeGU5hb7/46Az584Hvw5S
	 UURaso9+SEWPqHm3LmPNnajwbJ7s0AdBKCSDWuwRlLoCjm9/Y5IQ0gf1ojzC1hZTjo
	 L9Y+NsxErXizA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E732C48260
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170744029647.12076.5548632110641699212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd225c2d292008447b7548057964219b67dd609532e2e732668521caa0a51c8
Date: Fri, 09 Feb 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707440296
