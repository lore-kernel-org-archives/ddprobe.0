Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261FD218E8B
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734710154; cv=none; b=YBDpz/Dlo+PyrVn6wsWh8A0i3HJyPigRXhGtYK+3uRrCW6LEMbNUQ8kV4loXaMDLeSx/4RTAmBzgCmrU4LV2FThTlTkZLR10MtTvv/kgU/P0H3WcB1rye4tSqYa8j4Y8x8y9a4moyEWTi4cn3vN40IsHoRLUsjj7oYreFxc/IiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734710154; c=relaxed/simple;
	bh=/BpDHBF8O2noIbGJA5954iY1/T5qMvs18BbS06XO658=;
	h=To:Subject:From:Message-Id:Date; b=A+cl0PArX2qKKZGds3pHcLYxfdJiua+lIUM9+hvxGJyLNmtsMsBBozTMdJAXQaUQwTvoEYgi6cfzhNfIXbIG6aUcYQ/cJr4DOZpbZKgX439X799DvZ9VOfB3RydxqGzz6qe029H2JOfSTGFjq7EFLWZRYX7UiYlORroGDFBPpQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WaPXM9U5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WaPXM9U5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5746C4CED7
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734710153;
	bh=/BpDHBF8O2noIbGJA5954iY1/T5qMvs18BbS06XO658=;
	h=To:Subject:From:Date:From;
	b=WaPXM9U51efxKxeXY9uOEmu6GgwS7TQTKzqFgUQcDkZMKLA0RBMi4yGrcGThXhhqt
	 JEHptu/FY1CNwRVXqcsew4KvM/MlBm61AV70Wfe+sl6Q1TAgzeLbvbIsnWovdpI44F
	 VHL0FWPZS6ZbE4GV46624rDP399P2d/7T2dTaUfYVvf9i7iV0DYY/j69rlE79/BKI8
	 K75m0kKaRJfoRKecuIA/m4v5GXtHpO6FQpgpvD1yUmCTEvunXbOLI6HeW25jAH0+O4
	 5bHr9wugJdNd4lDkhnRu9osyv2JiLOd8iv7N3zfqEwxtmbJQKg67jpQQH8pDazvE2a
	 714N5KWwF7hew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A13FDE7718B
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173471015363.15003.17737058483316799799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa045ed5ffaf43a295a66e0da92d41a25fc18def4f7c371697449af461cd0e1
Date: Fri, 20 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734710153
