Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1423B2FF6
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786910434; cv=none; b=nWbDfg4pK1uny81XkLVqfGdb/itIQQDVwNlNmlI5GsX1iDpZPvdAuKeGi7zYUqX/WDbbn17VGHcddphHXSi0362uHlB4fORPimU1QK192wMPS/5/zcZoH8gTs2O7Bm2go9DP+RCXb9CQifv/cynyt4sE+8k01BfiQ3jYn2KZg3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786910434; c=relaxed/simple;
	bh=rbWY/z/DKifCD43mIJ4Bb8+F5kl3rX0xuJbCiohYm4w=;
	h=To:Subject:From:Message-Id:Date; b=cZJ2RsHiKhKmgy2KMJ9eeqgW2sG7EKp8W9C2YYB5J/nkV+wkeAE/v7DoQA28P6UldZ2AU7DpbDWXzAAlwhOfXOT4ZJ7+9/bUlwDLpWcVW34KXzUSRNXapslNtZuSN/ektgLBIwp7YzpzWn7KM0nkcglkvfQkdi20nMMVE4IlsTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7jHumLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7jHumLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D010AC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786910433;
	bh=rbWY/z/DKifCD43mIJ4Bb8+F5kl3rX0xuJbCiohYm4w=;
	h=To:Subject:From:Date:From;
	b=k7jHumLLskD5zss+tExTTPC60vCq3TA+h6HX0AW8Wz6J0pMomZk2J45a3lXZm2Wb/
	 hQlqzGeZ8WqVaNCYBn/m03S3R7kGGWZJBXi1Bup0USMq3Ju46NsOfd6oiIBKP769fv
	 sHG3tGwLDPMOqyye7JqXxY1T/Dv8LzKuFv2HPmcPSH92WX78dAuoSMuWF1IiM79jni
	 WqGwd++qLZ/SGkd5SVdIRjHWicIq8peXlbDFhgOatAJ8I4fpu2P8nww1EV5+JueRKE
	 Q+YgRvI9WqaTFLq4JhbkO9VKioemqJaWhLhAV7UkmLGOdOnNsZdfc695qlCnvKnHqn
	 KBGYPttmyXb8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC760C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178691043369.12465.7777104632673843215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18bbb9d1d5e428b24902ea6ad141e16ce92891f50043e5819796501d2a963597
Date: Sun, 16 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786910433
