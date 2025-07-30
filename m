Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F44B86338
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753880994; cv=none; b=QL8JK4WO2TF8AtGSeaqcASmU/hVPN4/2Jl39WEkAl79TXqm6Ii4LzRjr7mtehpZgz7wrtlfcAkpxzuYzvYspIyx+VkIEWfxWHv+ElePkKqiU3LXALjg3LwxrcVYj19w6FWSY/NFgE5dQtrA00Psso1lh96ECjIOuMVWKd5xILl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753880994; c=relaxed/simple;
	bh=Tt7jhKmx/nlpB2dkO0fYqb8B0/ruyWMUrH7b/wSTa+s=;
	h=To:Subject:From:Message-Id:Date; b=Tnv1OUtVAC2wmAR7hCh/rOa6j2qAE9vpBpc0c9LJ1EhFmrxWd68FILVNZhE4tRDcbt7ynCSBUbJY/WIHr47yIbyzXSO33VI2Fy1bIBPRiRA+23+0rKdQ50wgnK7bI7ZPKaFCYHl6oH841vsnLbmC2W6xylFC650/A0g6nNv8nmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ox+Q6ZnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ox+Q6ZnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6636C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753880993;
	bh=Tt7jhKmx/nlpB2dkO0fYqb8B0/ruyWMUrH7b/wSTa+s=;
	h=To:Subject:From:Date:From;
	b=Ox+Q6ZnJ0ndETMMf5Dwv9bMUO2Y/FbTMgUKnkolglfvW26n4e+W5C5tUxR0gr7W40
	 57A+TQOdvDFAPtuzrj7fPkzovBP28wXfrZ2Vx5LH2EzrV3rHgW0sIBTWxvvnf7U3GH
	 wRtiUkdqw9iYM70bCKgwCkqXQWOHsfbPJgi/QyJ7usdAYD0qnty3wwoo+GEnJVqHQP
	 xoIVGfoBvOdTu5MHb0OH1CKu4HbDoAWf62UzePTdRI5voTf+EoGrO4I2pgObm+Rifa
	 qu3Wf11/pSbqTvaa7CIYLzw7Y1ycVOrVgqQpKivKDd05EBqtS+nuytQxROs57PzqpL
	 xigqsp7YjaSRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E4C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388099357.19864.15777865912854707420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ef157688ae0c29fef6693597e80c27db6562f418d91c718231a511b87e3957
Date: Wed, 30 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753880993
