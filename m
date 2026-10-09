Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409F044AB86
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791552034; cv=none; b=P4b08k+uWSueDaKOs88HFGMFFqWJTWnrHOvyHZtDMgV+kUaC0pt2Th7MaB1u9rbwHrOf9lXCyPwPM0bYMa63MdVsWwh9D+/W9Qr216lb4by8ie/uBKYnGRJ3xbOY1v5ADgYr9jqZuK1vnW8LyaLpzy23+0sYDt7k8VDFUZVYKgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791552034; c=relaxed/simple;
	bh=jRFiQixOwcRd107YRNhiHEpt97+NgAggUZ0iT7CuNmE=;
	h=To:Subject:From:Message-Id:Date; b=B5huUkHsximG6YTKR00GSYx0rq6AjGBEKISuHZaxPOyVXjI6119UqB1gfVEirjpKch7wh5y3JDvYcK5OtMNre9KE1SfAdQ50nsPstI3L5xD21R7FqgIwaRaofe2QVI0JgGLVYe77n5hvv/R3ngI+kv2BCBN23AAe9hzbjJ7pwQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKyr8Dpc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKyr8Dpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF718C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791552033;
	bh=jRFiQixOwcRd107YRNhiHEpt97+NgAggUZ0iT7CuNmE=;
	h=To:Subject:From:Date:From;
	b=vKyr8Dpck/phn056cD5jPp/cXCGrqTp+eyqdDViljM0kKO6wsu0JQpU3mmRVpQCwa
	 O85GhgCBCF+owqAy1sMfxUqbU0ueTV1TDcD9ThrnohhT9+1qQEODynOeALmsPlati/
	 inoKJ/7Qgnfsh7L48fGkrap5DjaSKtifzu7rOHbg253a3uAAwiWFAjho1odoKaRrIY
	 o3g6gDYDOJ39+qDQ7dc7k943glGkAmbNqhWG7gfzdPDbGCzvV7E8fwpQuJQ24srRi+
	 GViT/Y+JMJgLELMFZvRuCsuLsKpBx6qlBKQ54bJBuj1rPQfwAQzsEYLosWDmQ4rstt
	 eceqarLBQ1d4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0FECA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155203368.25309.13046994585161597721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8acb861ab72dd34ed06f63aa8daabbcd3767a9dc2269164e3182250b5d0a441
Date: Fri, 09 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791552033
