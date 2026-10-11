Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421BC223DE5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791714634; cv=none; b=aqp9XWursd4rVNVnqBc9QotbZuOioSpnsgA9K/EAqLFY8BoKk9aMZZd2oYkbLpDGqGGjr8ti8VoeGwVD48iGphtRTy/qnvyz6vzyklZw3ZEKiyd5JGgYWIyKs+NJKnhQboqWGxD0GzRhG+kP9+gfupKv/CD0tj01Wueb9hF9QrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791714634; c=relaxed/simple;
	bh=feAyyg8kvnhq70bc+46TGii8o1YagucnFo0FxZy86T8=;
	h=To:Subject:From:Message-Id:Date; b=rVODZEfDJmtbpiLGQ7lxAY3iR28kxx+/ox9slgvNwrQFj4Z+5c91vnOHsQFq1rq0A4p4N3igpGTwvoU+6/nhQoCvDJtwsqyNH++0oCn6LOt3LEjhXMeWTr97h2/YG7GI0pmGKo2UcO5uW/RZKEvHV2E9X30Fk9lMoTO7mbBtV0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G976BcON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G976BcON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3BFC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791714633;
	bh=feAyyg8kvnhq70bc+46TGii8o1YagucnFo0FxZy86T8=;
	h=To:Subject:From:Date:From;
	b=G976BcONC8O13vO9g8GUbvAOPY6HNpVArZFh38JUCrDKoWnYateQOG4RsT4QgrCVs
	 0vQ09y4fMusHS5g9IB67mIUAknJc2eQult1vdT+h6dBRJQ6p5/h5xmKd8DC3ze41/W
	 199SPc0HJkovxzyapaFQsIuEz67LzfolOieFGNqZKQDR4oyspIVOhv4bpUKkQFRw7c
	 G/15Jfep3mopPdgxVwW+OfyTf2469JvJN/lZE+noUs8QyM7ypQveWyrnY3yFVBydLE
	 GdTsGon+GQiyjmDg7TdseRuawHSrlkcZOM0xWWQ/DE0z0g+2fx6PZhVSns8q3kdTFr
	 hbVv/cIjNTmGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99E3CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179171463368.27284.9630702893215730472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a43dcf5d9819d5f01daa6db241602d10532a90b1c5836d8a8da49fbd5d1cfd0d
Date: Sun, 11 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791714633
