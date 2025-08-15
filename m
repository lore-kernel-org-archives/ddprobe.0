Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1110126A1D0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755236395; cv=none; b=tbQ2DUkNWm4u91Rapbzob7B3skwzgFrZIfS65JFCIidTBPzG+9C+6FfbYqQBC9RtRNJNRb8WfQSgTQcSbLq4cUNYmPdkyfS1OMJdwUQ8WmtrVGEAfbKfp+WN8w4OH9upbz7mNnWexn81Z3PZIhgk/uyM15dsLXbjwlslggEZl+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755236395; c=relaxed/simple;
	bh=QC9GcfTXKs3x5OR2wHUhnQMzbsm+KZ5UmhzqR5DY5wQ=;
	h=To:Subject:From:Message-Id:Date; b=ODnhmLdTe+f2RiP+C4dLpBanVr7ut/XAYh/DlXOqUg+L4mwftexGKxQHdFFAGrPwN22lTiC5M9oXh8tL8u2ML71iFGVcyzA0p6g+ts9BxCG34XMLoJcjmy0faHjaznx4JIJZABbgPNXP1fQOzGZnsz0ZM129Wfvba68Mk0nEOc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIJK1KrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIJK1KrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C896C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755236393;
	bh=QC9GcfTXKs3x5OR2wHUhnQMzbsm+KZ5UmhzqR5DY5wQ=;
	h=To:Subject:From:Date:From;
	b=IIJK1KrOE6wzyZqL6sPSsGczD5BYEFgXhZVxV7nyzsjSJO7I34kqPYrjazo9C8cPp
	 NP33HHX96G7Y78YpVUK06e2MoH4aNOAi48eCDZpyNWLYZAcY+7YSSe8xSNKCv7OoUK
	 c0J/tAzMvButm8EzA4ZIfjs621QVez0wvOfOJlGGRt9PVNZlVQ8cjJZpX3Cjd17YZ/
	 GmDmMjYM0v0nYWDlzsAJ/GydQgNW5f93FuVy16CzphoOaDpWNLkGp9fcB9WSGii58n
	 DgONqMGAUv1FYeTcLVdYRyJUf7kSLmLiEG/8wVNNfQe30mEzGThTLWYkWDnKesD4Jl
	 VLBgzW1A8uN5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED4CA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523639357.5625.5542145655920764762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f3e22243a2e10e532f7c481d060396010d2e42b9138be4ce1378a3bf3386900
Date: Fri, 15 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755236393
