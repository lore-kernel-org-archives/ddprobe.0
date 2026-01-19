Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD2E257825
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768856634; cv=none; b=YbmtVAKCPKrIJQuIxWG8hrjn2o+3zQhDzKnxCiXAxmxO2tCH0GVpr34QcEVbYKJRHeer/FNzkfjQYF1N4NhjlbjtWiVeAX6yWNXEnmawranKVN+mPdUGKHHgtDv0Waqo8WDJYTj0DGjfN3NXnArYwyxYLXDXR5+h3/UpETWwOBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768856634; c=relaxed/simple;
	bh=AfPpfBqhZndMAPZt3RuJo3kJkejfcW4YwwYGv36tqvs=;
	h=To:Subject:From:Message-Id:Date; b=q4pra3MesxYZFJxr3Coijd0KMR6ZbGMD6IAeJ6D61G2IH3+A2pp/RJTGGD37FKUA7V45CXc8CwYlxgNms+4g1ShbR/dLvJtRCJdWI58GHSUQ/sl3V/StBcVcRSgkZD8sBfvgDhy365uGcD7vwR00GD3HYlQy9vqQoeOeGYGytjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfLuqpgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfLuqpgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B73C19422
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768856633;
	bh=AfPpfBqhZndMAPZt3RuJo3kJkejfcW4YwwYGv36tqvs=;
	h=To:Subject:From:Date:From;
	b=jfLuqpgmu8T1rbUx8/ObkXTOdVRlF6qVdYRuc4L3xhIKagJVJRISH1Vu4dXFYnwEO
	 avzfXA60j0B6ouNZeVUQoF5vCpu1x6BUvBN8UCV+eBn7jkO9oCmvlzIj5wRrwoP+2S
	 hJU0r0ewbRBj0bAELtCkI44kvbuPYG4ZmLaUeQiKVxl6UqwCaV1JkAieW8JGt7gXri
	 hYiIFMEvGnRjTZr2qHcebbTFSFIY+xN4sTQShM287+bcFNW++dPHs1rtOmy5JkfKP8
	 CRq09NeFRajNqb4O7kcG+J+lfFGyqqLUqukt5MFHsv5Sv7Q1Cz5EU6JzzyS36MQhT/
	 XONUIQ+AaPynA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F0D2ECE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885663358.14133.12629054127474650095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f745f34525dcb86ecaa5e1939441b1f5094a3f5e8dc4d9e0b18839c081c4fa
Date: Mon, 19 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768856633
