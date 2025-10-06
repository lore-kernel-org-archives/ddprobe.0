Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277AB139579
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759730994; cv=none; b=jrThtMUq+xTbiJ5njzjrPo+6DMk84+7b3h+/07R700shr5hfkXmWKeEiOTbhSs6DdWkveu/GI7DyX1tcuOSt3i8CSVpBMXNrjQ9XhJJazaXjfZINXkMYD2ndAC4vNLm0aU9lcui/Rlmy72UPIPCAjdB02iUObX8mGq/ePRCpbxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759730994; c=relaxed/simple;
	bh=YpZT8+im9Vuz7qfHzDdtxVC/cUJxwbo5tqKN++LtZbY=;
	h=To:Subject:From:Message-Id:Date; b=sQFaoxjfFMIx3wFNiJ8/7lEURI5EITYP7VNNJ2DCso/jWsXibCHRkhoQKgTP+FVCmpR/i4kcJVeDxpPmCDaa9tkqZhT7GgxQUZjQKluMhsiFfsjyZWqhvzUUwKrIAy1vscKz3Of+NfwTGw7JoUG6FvfkdS40B4ZgfYuFWq8qOzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHWSxeJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHWSxeJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C98C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759730993;
	bh=YpZT8+im9Vuz7qfHzDdtxVC/cUJxwbo5tqKN++LtZbY=;
	h=To:Subject:From:Date:From;
	b=aHWSxeJOWkK7rF9hncR3DCu94F3Ksbb+iiPZW+1s2Nli/jQsJynYWZ4QqkIcYSii0
	 pRL8KgRIwylRBFGpiHw57tK9EL/MYappCMmKrjImkE+jKGowFM+ygIJj95qWtw6/o3
	 VRGQ7LlmLSTIcbAMOf9HlEkRv50tt3msgRpRPYcTHEGzfq7rU5nmfFhpd8p3t3vET7
	 ciL8WfV4wCHUNJ/YcG17mHeBOldTXIok57+TvJf67Ijrx6u5WZ8fIfKaeGqiGypLOM
	 b5aA2sUf/BcEjBxo88oN8nRsh63P36l4j820/p7HquzrcIFJ/yC8Ma8aYIsmsDnY50
	 jvvkgHYYnl3UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A31CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973099357.30071.13518117031822060269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77124e24a53a3176de51c37d670741fe950e073a8fe084f127e660f173ae494e
Date: Mon, 06 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759730993
