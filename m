Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A5C17C220
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737576954; cv=none; b=GdZh141O5CdZTuefqvmWFFPdOPykkMitkLn62wiiPuFTuhbp7fKr0bbRBnVckJ000dEJOLUP8pT8ESwlEBSuXfhvh31+4ig2LTrwrWXtJnL/xddI4YifsZ6zyCGUdV8jGYyLGxwZeaF10LFMUQ0jaiFhZzCbc0AXeHhZk1I65ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737576954; c=relaxed/simple;
	bh=2HCMlhoV9K1/jlL0YHZQ1m40n4xk2ICN0T/RrBWCsyc=;
	h=To:Subject:From:Message-Id:Date; b=nQQhoJSHCpC1JqDs3NIjTfJ1eu5gKGer+fv8qjDp7a0+5C3sm/i66NNXdVzUYPc9DlWZ/ECVHLCp7yxuOUM57euGdggAOeYkXH89sCWQDcjWXbVGL5CnfoT0kHdZVOkxIqmu58Z8iroZqC+QiLiUPBfUdrmOmLKVpW3SxKIB/eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRHS19nM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRHS19nM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE410C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737576953;
	bh=2HCMlhoV9K1/jlL0YHZQ1m40n4xk2ICN0T/RrBWCsyc=;
	h=To:Subject:From:Date:From;
	b=oRHS19nMzpzIATkPTBuQWleH9BqL4prttDjbijtz3dbid7ZY/S3+yl+ITwwZCj7Gc
	 8A6aBX5N6aSiGN5Ti1yimtejZ11RKOWmIsc2AWhz7wd4MaSf9wiCM17xCWwsCNLcNn
	 MITQv1TCC0aTuPJ1b1S+chKnrDja8BzhLm2N8YbT9VDRknSo5RlfcllZzNrn0YOvuk
	 Ma980KBKzc/eYvIENoEj2gppP1Kw7RlvbNmaEMUaJ012TPSWEJ3/pG3soA9RWLU4FM
	 p9BgTd4tyHxg7JSqcA8dMI8lybwAwuZ/824Xj4vC5b3XlrB4KJLOLtpKT2lyM90hou
	 8Tg+MADSJ2Czw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985CFC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173757695358.7449.15444115214836321137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52213e4bba84497646a7c35281b106c10603090d1398127022fe249474f16f99
Date: Wed, 22 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737576953
