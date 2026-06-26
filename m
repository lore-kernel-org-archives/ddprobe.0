Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F46376BEF
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782488254; cv=none; b=Hwmh7RP6k3LAVF9RhHII3n7gN93BjRq7K8hsZ53WotDCKDgSx++l5V4tjXQSgPhJnV7UTXCW7SpHh+szb0eEldwlRMTy4CWh//WP5cQWYYHnKKFtlQVsqjY66zdj3+cl3eWf/yDZAMv3RmEoyCciJJlL6ARDFXVxfDrc4puOVE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782488254; c=relaxed/simple;
	bh=bqzuUrsGM9+1dCHIukv2YUdUSIz/XX32XEkjSugDVkY=;
	h=To:Subject:From:Message-Id:Date; b=Kob1202trZK+MZ08pIeGQQ0/JUEf2eaDzQpTputS3uxdvSsgS8C4FiRcZ4bvvCzE+thFls8U9mRxkbQRyz0VNjHa+lLgMKDjTIy/Mf0UZYl9HE213YIvi0LUP0LWrX8gbu1TgAbdlTYF1ocfU3O7MpLP6EBij7q4hzSI/YazB4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUEPy5sc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUEPy5sc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D186EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782488253;
	bh=bqzuUrsGM9+1dCHIukv2YUdUSIz/XX32XEkjSugDVkY=;
	h=To:Subject:From:Date:From;
	b=bUEPy5scU3Sxlit2KuoOgnJFRBLf3JXMb09xbm2feW7mFjfkYQ3f5HD86Y85PU2R9
	 VBykh4+HZuvUWb11AO+FyC4oWtEYZX9S6Bm8RFxx/iXH3/KeTif0dEzL/Kj7I/IEeN
	 g3OCi+9w9upIPOwwt+w48ZnCmN0Biz578cGfKtelP62e2VCqPQddpNqSbPxoqzTXLx
	 iHuUjQzZb/Mj34y1QnoGrwNrRpdlpJ+GBXHTK5b8mph46RnOs/LGk243tsu2S+i04U
	 h4DpfZPnA4PZMLxC/okFlaHSkssJMTr2aGZDg2MpInntMEHtJaIzJ+SSKIjEes2tWd
	 WvEDgTbb4K1DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B74EBC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178248825372.4560.8465970627183406773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8508cedbfb97c2ce34495bd491d260245943d4e5d01de52d3d6efc5c33fb8c5
Date: Fri, 26 Jun 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782488253
