Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85FEF369D75
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791974434; cv=none; b=fvq4hxzD6syrOz6AY/8TI8x4MIk38SQ8X3LU4ieMgE4rIv5RNx87F9ltdBq0kzpWdZog3lGIHUIdSoLP7HZW5VNSaKovKY9KzIDV0i2gHckUBWbCB3jrH+vmAnOJZYloxfJOTplrDDZpFzcI3r1bAd+BvjTmBWiAXRzlkQYF6pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791974434; c=relaxed/simple;
	bh=EkP+OXoRzQuSd5B6JkekOrxVekAN0kRPutExF53cOo4=;
	h=To:Subject:From:Message-Id:Date; b=Zu1tYLCnXomN8413m6RXIMW4+NtMHz7Ia/bdySwei++bMOpJD1z4PKdf9wtQ4LYbyEwMVW6HyLdd6h93KQ607uVA48skDSLA+L+d9x4TkMSoGIEDQylS8KH5CeLvWFFwFkDVSvxl4QHcSJ1CE+gWFoC+ea8SkEt542MVLWNU7C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFcKzSc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFcKzSc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6B7C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791974433;
	bh=EkP+OXoRzQuSd5B6JkekOrxVekAN0kRPutExF53cOo4=;
	h=To:Subject:From:Date:From;
	b=kFcKzSc8gWeePTTfmjqT7xys8WJHWj5jlFufwVvI1cWF+RcrXCWjbtw4GuYGF+ELi
	 zbeYqup91/bVSK6Jhl3cQ3jDCyhfwSELdazkVY42dYa64RrmNjnRggC8STQD8u+bDR
	 AVoE5mCu60E+vcpT2M/y54V1mk0hpydIWghhl0ndQWF8L8NU4qDNA/VBsXndjx2WXu
	 sAIfI0VS5jGsSuyTSPOlzavBJJ/YncBd9sxGH7jQCf80WYDWOHFEi2xPC0/7Nh5WjN
	 HhedqKBIzqOBk7enhy6jQ50pS+BGUsPXWbyVzY48cmQrgzI5A17bk60IcUv/nCV4+A
	 X3xM7gPO/wnwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8016CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197443372.17816.815472185795720623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb24b8212a742a164d78395aeba235f670ae1c6efdc65fc2fdf8c2a9f93137c
Date: Wed, 14 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791974433
