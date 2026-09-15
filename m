Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465E243B3C9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789450234; cv=none; b=R/v4YxuDUwGPgcTeH8gTpnqxv+5dSb5sZesFfIV1gVUMMPXvf4RMszCq/0CyJ8piTylqHMbbRdqhyHSc+Miyf3FpxzkO162jM/15K9bZ5VErTyZShghXI+jqn4zMF1oSBJgudUfB2JZ/TCvFCxx1EmE9xWxdFWod5rG4QhNbX0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789450234; c=relaxed/simple;
	bh=jWzriz8hffklYNUZTOVLkPWrq5xZTJrQ+GQEBJ4bEJk=;
	h=To:Subject:From:Message-Id:Date; b=jGUCnFDdzGzBUMSebcVw0uWsF0tzD/wZRUWedOAAGB1nnySEY6dNbsA9gXRCsxOhMTg0qpL2CWj1FvoisgS6ncs4DF/1K3PNmEWQjD89TrcumrbwerJqBeD5YLqvDfwjDZZeTLhKaCn6LHfuFHffMou+Gh36HQdb+to1d5VDsK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoKkJSN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoKkJSN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B7DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789450233;
	bh=jWzriz8hffklYNUZTOVLkPWrq5xZTJrQ+GQEBJ4bEJk=;
	h=To:Subject:From:Date:From;
	b=KoKkJSN9DUAfK4YFdYPeUUj9E9v0Pb9DjaRB8d+071DZ8kLJXjskBk44SjBwU0WGj
	 FTAYGf7Y3uBjL6r7o8VYLZva3T+TiehN1rTLpYsJ96g+QeaZprFXAeigsrDmxqT8/F
	 cWttaYuGN98KKo2MKPQkWn4VZTyHluBhoZqq7ekEUVINLKML7RcBZFcq1ktt5g6nO7
	 fIQoSCdOz2rD+Xbsc6CETgcAk68bmF97eXfS3Oi0hY35+RVpYW4I7o4JH8uRn1eNJQ
	 v56Q1a+RLV/IEBpUU87fP93R0MLK0DH2xLyzauKNxKVQNqArIqWWfbq10ilvVnt6Vt
	 U0yLT2X59FKyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9E0C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945023370.3206.1385340332121712659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a32b3025e39a5318e6e110b668876069b3514e0d724b1ef5b763df703b54b7
Date: Tue, 15 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789450233
