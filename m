Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CE52CA7
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714458743; cv=none; b=TxjDHgTbEsv/OMPnVFpdrLCsPelmYdOS3W+/JvCyp1CrIDgCn/0WkPZ1tNd2VE9TDroRqvd6F4S0QVxnr1cNfRAIX4weUr7V62+CMp+mMmYjyI8UwzIDlJqftixUb5SqS7wfbvPRrvrs7IObjK9fOSSu3vn89SWgaVdiq7PveCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714458743; c=relaxed/simple;
	bh=u3YypEuBq4oUggSVKqRJEOaCfydNkU+jCdoNas4vydA=;
	h=To:Subject:From:Message-Id:Date; b=s1B/uRCnSuxapdNWQqlpvtTefaM8mn8eM1/oz7DoJ9oYSd6r6MRHySeVeJ7to00WR8l2PwtbvT2GqBjGFLO70vnOszLNKJThRpbqOZsqP0wH+RrXlGYf3Q773SnJXtLhGJIBl2sJeEl4sS83kf5Djcw+ArvQ8NXQztOSr4yOrKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIz6j1TN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIz6j1TN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4ACC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714458742;
	bh=u3YypEuBq4oUggSVKqRJEOaCfydNkU+jCdoNas4vydA=;
	h=To:Subject:From:Date:From;
	b=SIz6j1TNnWrWK/BTx7eOKQMfkwakhkmdP+hPtgOfD/7BCTCVPbI9cYOv5DB+b0VD8
	 YuHqJbiXue7EpCKiI/zuqdnt964pj+InXumITkHpxUvI36zhBByDHSuP8nEvlDn8X4
	 I8Dh8LEl16skpqCM56ivIscqRggJb9roSA6HiW7D1uaWHEDQpvbrlaUAPvyvg5dqz0
	 UCocpo9nujyXMayJf13PuwUbtF07Ake/e+zJYLUiew59JJgIwcReC/AUJgxgxyOS46
	 ipAPCyhEaUGawG7ehTGsDknpdqxaO8vpSSTFUBHb5KxL7sVnXunG0LWqJqjVoJQ4ku
	 XNgIzDgh9jyPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D6FC10F16
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171445874279.9257.9086845718642363763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d22c722f985387aed82427da297cd3a7e2b67535daa483a8eeb34ad5e773f5a3
Date: Tue, 30 Apr 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714458742
