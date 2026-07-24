Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B68D36729C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784877034; cv=none; b=ONNSA4E22YaeR4HdU1iXQINn0vWdzsJPDegddZo2XBEHYc2a/WVw9fbRZuLIqouHn4QoxMnN47Q8d5fCTUpwf2E3HXBfd2HcdTe0tYq3zW5V7WX7dpKMfU2tV97ozQG+oh6WBWywWLh+fM8Cu5iyM2gpPg06Gql9SxwhF6kK5cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784877034; c=relaxed/simple;
	bh=xTAzuLGiBZcr+9nb8ew3C8oJUcP9NQ2mynr9ljqybvs=;
	h=To:Subject:From:Message-Id:Date; b=dATZyIZx4qcfjel2kQVISjmHXqDBAqdVwn4UTQK9HvO9e/88yZBw71bRQYmKcWRX05A8D2t5RcMH0G+WceK//EzPd+PofW00OYQkajEbME+icv4aU79ym78io4igTpR24EaUog+petIz9JoS+b1/WNVjDwDrblWpYwT7fetpfpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjbH9YFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjbH9YFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13CAC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784877033;
	bh=xTAzuLGiBZcr+9nb8ew3C8oJUcP9NQ2mynr9ljqybvs=;
	h=To:Subject:From:Date:From;
	b=WjbH9YFafdbt0IkayRiic4u8zaleusxTeaJtGEXL2EApYV/1TqCzbFaFD7Vhz6aoh
	 AgFMou3vplVFfmSZitU+crryCpWiLkPngCRP5Vxvu1mew4EBBvgnT8RXAqGt9kPPda
	 DbOO3nlXOD2z+qZCT5cnQKFG7vQf/g1jYf1pfi7EmSsU7b7GL2BnXGP3ZSnyPbVIhB
	 sY2xKAdFvbW9U82JgQKJrgIw1MBoKykZL9YEaXcrJ4li7UAqO/X3cXQs3YhkSUsp83
	 PvppKDxiqlO8snZB9dcWqrRSeyPl/4UXpbFGh8EcOsB216UMA7WshMZdTxk1l8A+qU
	 Hlo9/4hAtVdgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC95C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178487703368.7946.8858220331378995831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9755598fab4cffbdd942349ca3ec7f2d0e8237faa0b4756ef9478604f32b48e
Date: Fri, 24 Jul 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784877033
