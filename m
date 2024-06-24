Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCB48827
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 05:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719207143; cv=none; b=Y10sNyOlUv9Mzz1fMwd7LT6lmQaStzO9aRhutxgk4h0n1ay0B+Mah5DInJ9804p97ZE4AWYDZN39R1ELTgtzW5jzQ4tD2vk6kqWa54hEnXnzqlQDrLc7Woym5U7UqC8ppaTPR6IKYP4+0snRUlBpJalKaSrt6RX/eqkugUQslns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719207143; c=relaxed/simple;
	bh=836wW8vtOtN2SMY14OoSdRuu2qxr0CvWTINsVWvpAiA=;
	h=To:Subject:From:Message-Id:Date; b=GPdzbXnwLJ8YirY8vnzgujeRuCZXbGVSV6+PwS5UCA+KKYL17w8SGqhw31qezzTO6el+eUloyNd8hxnnprFi/KlgXnzfMNQido/uyjvO12gNMciZFFFEm3sZzWMBo9S+zeh7h5cX0eP4osQ445fiMVGqiA/wEZ4tyMa/OoO0hho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuaSBVuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuaSBVuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E73DCC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719207142;
	bh=836wW8vtOtN2SMY14OoSdRuu2qxr0CvWTINsVWvpAiA=;
	h=To:Subject:From:Date:From;
	b=cuaSBVuvp6UoO9rXPiqQMVtQC+yJCU6pDRdVv/XzNP1iHlcuzBekYtD4sU1OYlqEF
	 Vc4rB+JYz18EF211cx6ha67z3K+Ja0evqFviUfkH6OdOsZz3C9HbnPUzNCd9HufaQO
	 wPIJlD5lg/uL0vB7NS96uVi2hpEZEZdFE5RgtVzHOZ2h3Ep/Ah9Cu6mJG7Ujd3uEdr
	 YuKULV2ysU/QTkqwVCZUG1MgiAwjfBezQPA45BrEOFh/yGhxyk+Rf5RGaumoeEgGtR
	 P/mrAhrQFeK6Yn8CJBEXOLiUKa3aLiBCKhQW2ZKGTAgtgJEfwvB14h59BnBefd8MEe
	 bHxeV7BGGZEqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0010C2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171920714284.14840.1111643793644161302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177614d0aa7408558b270dc620bb024fd5efbce0d69aa87ea70e65b0c332283c
Date: Mon, 24 Jun 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719207142
