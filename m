Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515B951CF77
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792067434; cv=none; b=cwSTZL/qmOUURZrGfKpyoleIfMLtWI2fAt7x1G00h0ZEjedCwBNMayr/J5Qw5XH/vKWZDh/0jrpcKFbwnsi58u3TD7tlmgN0PPgh/N+o5VtJ52lxnyAlpYD9uNUSosob+BGbtxWfRCWx/gvtZPF8rEFfz81pbPyiyH0941b/hRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792067434; c=relaxed/simple;
	bh=yJa4Pk28FGJ9IHVb9IGJvzflRbS80FMmV9/iPvNfXJI=;
	h=To:Subject:From:Message-Id:Date; b=TOdvvcXqm+Q3ERm3eLUWIVemoVor8AtOWvuU0OomV+3KdumXhoVX2J31JC+vWv9amAtzOtP31rqGA4Hd0dr3Sj9rmgrSO8A9MUcRqmhI326RXfDlpkyh+aC5QlKcVRJM1SL7SFnKflQaSMtXEm+Jf1GxeI7VSExcq4m7SllZS+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+bCptMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+bCptMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC03C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792067433;
	bh=yJa4Pk28FGJ9IHVb9IGJvzflRbS80FMmV9/iPvNfXJI=;
	h=To:Subject:From:Date:From;
	b=J+bCptMArkqeUIMCyexZieFaYtm6FuQ5/+GXdD3i+ncFtxmvqki4+iT7zIUZdaRO5
	 FS2WpP1nw4T4qPDIoKuKQmWwjowlI6uZk8w/GTrkrjvZpFdFUF70YxoXyNki08k+Jp
	 IjG9KoSqWuKI/I+uujLRDw0mCu/7Lh+AoKwwanWOyf2ubAFZCdQOFtoZFxCW8D4Li4
	 iljBIURFX5sSZHbX4ZHyXMZnHyHskZyME4Yg6kdIIpKFos2Jf972usor4irsCmt6lp
	 H5ZVX9Jhb9Pq9ipju73Ohj7PXfxC0nHqSc73QOPaiqiJfvvHxo7zfxS+knbw1JpKPf
	 rY0rzJiLE3XHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA865CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206743368.17047.8634098364330679641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44042b33d4ea702ae7ba87c5bf9b57a1a13aceb53796250dd38e6b3d1ae117fb
Date: Thu, 15 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792067433
