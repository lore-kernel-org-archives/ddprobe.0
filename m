Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF951BE230
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727768154; cv=none; b=jDgAl4kqQRIlpMWEJA+jvh0PZbYKXz1zQv8JLVoOlXtTvwRXvS8tkyLb80ehWSWwsUZTx20w4q8H1s903TA5m9rXoBGmIQoF9GmE7jY4O0Qc/iTi2RJlw0/okKtThalWKx+QoZfOpsSb4uSJKUeM6H9+HGAlYnQ9T3esMpvYfhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727768154; c=relaxed/simple;
	bh=ZB3AARpIqkxJ2U5buuFor+QMWyfxGKY1g5BPOrsHiKc=;
	h=To:Subject:From:Message-Id:Date; b=i+ntS3aJ0PvXV28JtU+oRMKO2mRpRLdqxlTvavncnXAjym3iICswp4bEECZvQa0nw1rvRbzD9Iihsevg6yqDmlsxz207xUqmNL+qj+iJAkogpYzepwBKvxDxfP8QrzkaeiS2rvGUwpqFh5UClTIqjrB9N8UlaMgyZD6XRy4Tqp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X204xRwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X204xRwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10AFC4CECE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727768153;
	bh=ZB3AARpIqkxJ2U5buuFor+QMWyfxGKY1g5BPOrsHiKc=;
	h=To:Subject:From:Date:From;
	b=X204xRwcD6t/rYZ4vnx2gt7g3hgbdNuN3+USKl4EwPuL5waFO+Ui08ptkkymiIMnw
	 iyiFiWulNTAvobvibGwL5/DLyY0Ii2pZkq/L1Ny5z/5r6nbgavXFwqZA5RT0utxcdq
	 /Qugam6bebfroJNAC4vuSW8P1E1+IfsYsMh5XC9lCoB0XphEf/b4Id17TTodlvhQN0
	 IITGGP9oFL778ob4Ot55CMrPLJrf0oIkj1GdFD7ZY3n8pR5l5gS69iNymewJ74GzA9
	 /j3A/mt1nfzl3c3c7tBMvTNQI0ROzDVXpe1ZxFqr4u2SRnEIViiSJ2f90HJV3NTbE4
	 XROs21gtpYPMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA7DCE7CE1
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172776815364.10548.9618043931702308078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55edc7cc738877ae194226c56e28cbfd9ec56a94193e0e83a7373a65bf08127e
Date: Tue, 01 Oct 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727768153
