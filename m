Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A87F377A8F
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790207434; cv=none; b=T221jYjxZsTiPgAuJTPKa5dLDVEYgsKL4dzCT9iz638dc3BP9+F+P7wOZff+VNTjJrZpO5IHRDvpD/Azcv1g8Q6uff6Pe0mmt2YOhkfkUfAsI417eyBEMU/FKoGj83cX5GoTDHJ1MVW9BSaV9+M5Xgf/lk3hxhzGh0mv9j34dOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790207434; c=relaxed/simple;
	bh=BemW0e9svAQ45r+KFhfIdanqwiZdIFKjx+NuXhNEk0s=;
	h=To:Subject:From:Message-Id:Date; b=Gtk6LUfKsswJGIAeXGKbPIQ1kxwZmd6uUOOSipZvbPvlwwmPzutAGqt9J22Zfj8ghboBZqdxOOWAutea4XXAY6a6JKoqwxP1VFiDV7rPXNFlP0EBwfIjEhd5Wd+5w9NjuySywNYbH24yqYY+0doQrL+ttMkJ5R26A3MxxdZB79w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBkCqWQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBkCqWQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E41C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790207433;
	bh=BemW0e9svAQ45r+KFhfIdanqwiZdIFKjx+NuXhNEk0s=;
	h=To:Subject:From:Date:From;
	b=sBkCqWQsL+r4I10M0QHEsnnv+yBBRUo2+j7e8543xb01JpuNjuCmAjjGwusjWfxk1
	 TR3jN0L9vvo6FBjkHqOBL5yT3sL53CzFyUObZrM3Dl57r3jHpkkD2NrQhtUqmIw7D6
	 kqzGjFn0GcZhV3kW5B0I78moTnywmvWOFIX7ZZcqhdKXCFSuLcKGeKv1Ge8akugqZv
	 Sxv96KzhibiNwNfjjbWgLJKed+w6IYoFzYE6jQ9i8lmP2FEllMx6lnhlpriZOibOPz
	 ya/4pdtH9ooFwajPrfX2cYWzO+ykbkJ5HVqbmVOAfgnf3cttxm4csKkFMDy53mURv/
	 boUQ4YRIc5poQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF1BC9830D
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020743369.22927.5086395390801883595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d38dd8dc0d899cda23e564751e51a0d16e64a43b603a0224f1ce088c14459552
Date: Wed, 23 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790207433
