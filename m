Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C012F7F09
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779005434; cv=none; b=HtoK3o1C+UegXS0cgi8EW5aHAsGapL28wJnv8cBqb36oN/QlDwDbkqb5P9EoZ+UP97MQyT645FQYtCzNCkan78MurpKopr6OlbPl8rs63kWhF0/9HqKA+V5lcJWi2J1/oT3U5x/6+87kPBsjkwqx1jsMF6yBl6UDLZyJgih6ZXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779005434; c=relaxed/simple;
	bh=X8xsoUwYBSAceIFyz874aq3tQ3rLIQSRP0snxBlYsA0=;
	h=To:Subject:From:Message-Id:Date; b=RhWnXTsTqoRo1tzxd42BEjGyHd8o3IOjxIkJHqejZNh6aJa0fPwFIXJLnfv58wsp4fMlTIK3TSD//8aeMe0nuggud/Y4+rnwAdwFCuqK+cyBMbA6P7Tu9+R4kK8S/ipcL71MJCUzw2LcQ5hSt3Q6GXjQihgiBOK3Epliv6pg8Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYSSSw8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYSSSw8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4EEC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779005433;
	bh=X8xsoUwYBSAceIFyz874aq3tQ3rLIQSRP0snxBlYsA0=;
	h=To:Subject:From:Date:From;
	b=IYSSSw8adclGXRIC0f9NtBvlIuxnCFupGvOSLk1iAEMQvRD8bAorpqLkevxrmtoUu
	 FvJc1NTfkiqZypdtcmUVo2qD/VqbPG9aPV+dKRwJQkTXvKzVPDP4c8KO5RCjIsZxDY
	 1nu4hyYcnKUeg0/e7B5maxe+Mxlfv4nQ0IWQPT6EEhO02NDaScw4GhQAxys+q1AoAt
	 CWNVSXdvbkInnY++1NonrEPM3fcz6jB0BWi1bQPUKgRJhLs+O/eb0WIju7yM4evCOA
	 SMQQ1LYmEbUizvCAhOps5WhGss6zFs+WK8/VGgpMBOyef7JszcUN06NYvaEVN8zQqP
	 5wbpVDnHHbEPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CEFCD4F25
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900543368.16547.8728644465352639821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee0a86f1dfcc02c944196c1296fccc7c04f5581f0957ef4988f7b8516bfc62a
Date: Sun, 17 May 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779005433
