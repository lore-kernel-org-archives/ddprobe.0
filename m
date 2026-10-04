Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504FA426EAD
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791114034; cv=none; b=PkGA1zuVJq+dnsr7eLDCcPLFUQXlc8n2rNksNDinRRylA2qxKk2edT4HEkfVENw3pQuEomQxdD1c+P1LYMLnCtkbfcj/Y8+Ick/R5J3YYYbIKdkb2ffCjR/mb0nHP10TB9aXktn5tml8ce2uPkyPiPjOcrm9IZqQ0HWwnrdiF34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791114034; c=relaxed/simple;
	bh=pgMR8qJPnt2sGr8IAdSSM6nch6Nk2CqM8tqyS4vz8vo=;
	h=To:Subject:From:Message-Id:Date; b=iH2aW2R3HMT68u4diRbWHJyaNG2XiTYfELfGqzwVFZWwKprqRAohIqNyrwf3VydDAjpzfGy3WvUgm9sI9oEKaAvaCFAbbwdLmT/X5PBARtDVbW2AJyoe2Qav+qOFLs7/fGrChC3V7+kiW2n9o5VU1bdILhCBED4MbBtEaei8oow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V49tOTC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V49tOTC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1000C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791114033;
	bh=pgMR8qJPnt2sGr8IAdSSM6nch6Nk2CqM8tqyS4vz8vo=;
	h=To:Subject:From:Date:From;
	b=V49tOTC78kWb7nZRDJ1++ziOfBdSaZFIUZmTo9UJDL3c8sTMSOIHa9HEIwq2XUkGP
	 Q9vIDy8e/0EuWPAxBvb7EuWi2KhQWJISs52j7USu0xpO0yjwkrxZeBNMAjLTWyEtWm
	 jAg5q5rCI6HjOiAXV+tRUq4PjJWc8hizwGBOUn98i6k+h4pej58BkNFrMzutXDFZgH
	 YnIxUwyNwyWR6IaHBUMaNZdYmiHkXhqG9P1JFad13AdWyxm8TZZ0z4a1XNVkp/TaKv
	 fRZSVujzZ3viPKVIzNXz/jKq4U4tmjx45o3ZhkkliAlvyB/vtt2PPVxjXKiVB0rUF1
	 gzazwSdHSQIcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC55CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179111403368.30389.17905915324187489475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea2c03529455e41c903542b2488c1f005f77a3f685e006a283328515f235d41
Date: Sun, 04 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791114033
