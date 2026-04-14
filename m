Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2030BBA3D
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776125854; cv=none; b=d65UHIl25RnN/bqzYVH6rqjZA9n7NE6utRpHvnLnE6CsV/W9aBlFypkL/pZHjZ4GRd0Kg6q+XcIrRIdI86r011dEEKqgAhVK6k4V9FH0W8Y1JingEv22c2sSR3hKGZ7L4celsf1127d1Qp9IxpUCLbcQ0GIUkmUG+xYaBuCLedo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776125854; c=relaxed/simple;
	bh=VvgsHNQaPNvGcP47hFfOZUypHh4jYxb1uN1di5snEEI=;
	h=To:Subject:From:Message-Id:Date; b=vBEuoANpQAGJL5TULTGC1sWvpn1EK5TSrO7Ibav4x6wkXrhd63CRmxt6TTM2rFaAdxviqR2V41R4ZEhpnKnNlhiXJ7ucTFFq/f6d+RElrKfmUPV8p5X/M7uLv6hV2ArVTijXYnHoRlU3OUf7iu2gXwmcaujZThtPM0pbnKulH8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktkCw1vt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktkCw1vt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85CFC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776125853;
	bh=VvgsHNQaPNvGcP47hFfOZUypHh4jYxb1uN1di5snEEI=;
	h=To:Subject:From:Date:From;
	b=ktkCw1vtNGajcsgesdnXrESV8/CauAocI9IhGxPYmHP1wKCBSZdSivg0B03e6wdTk
	 mNfrS5xi3qZ1q7b+ENjiMp30nFqBHj7Dd+Z7+FGTjh3Ewxun1uAm+OzInsQyRy6PUn
	 elOOQRdJQ0FrhuELk6lkKdAgkfeX5M8edOT3GrOYQrQUlhgsYLg2oqGNkqDXgzjWjp
	 6SSkd4yZhhxYjjTu55yiMHb3qTpCz7O7qGJVLemLeLEOInxDCVjubxycF0YWF7cdp3
	 1fxWyFmHYj2FiOmqQyqkxzGKL12h1ROw0pvLW2aRWj6a2ahUW24VHpLuKf7ich31p2
	 R4vjzqSb11tbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EB6F531DE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177612585368.5058.3083322137690991383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5bebbf7017dde579dc462521f71abdfb69f7cc70a68ea2a57a635d8b69974c3
Date: Tue, 14 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776125853
