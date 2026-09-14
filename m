Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FED936EAA4
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789405234; cv=none; b=acvvDNsNS+AieAMQIKeU1zB2GL4a7uJj5f475zNiGaZbcgLORgjXBqX2Ht96OrOiDaRbtYkax/IDGZB5gHGf+LF92qVlqfhcnvt2BimMKKtJVionmZkWNX3X4rcTt4MHEuu3+53i7zp81KUskWSP9wq+BrTbbrMFUAFo+ANOCyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789405234; c=relaxed/simple;
	bh=1DuNJB/1aIJBbM+6gFf5y1VKqehqg1HDhkrt8oMSK+Y=;
	h=To:Subject:From:Message-Id:Date; b=lRdCC0SyLbZ6/qvYwOz2EB/cc2Ih2LbWmNPmQI3sWXsh6YxSJTwKvILgl6A+5twOwH2FZbg5ab6INU85Z8uBK4d5fNUxCUUYg4qAotKe08kNtoa632dhMVFrKieHQkLup5zTjXaSEPFmqN5wfTBwPGCl4HdOPlazEW7H0oP9Yik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfUIw/YF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfUIw/YF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D2FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789405233;
	bh=1DuNJB/1aIJBbM+6gFf5y1VKqehqg1HDhkrt8oMSK+Y=;
	h=To:Subject:From:Date:From;
	b=jfUIw/YFNJPijf9PewcqaRvPsg2ptulTOTiV2MmqvKUEREe8E8/eonSyelaOdC2XA
	 u1QyMVs+LMHlIDVS9Bc4O8EnJha15MPmmq9sIkYHYzAZ2Qrq5b5UQZAoUcNT0rdnUc
	 Qh61yuJBXG3ZAI+FZC7THRsFX9z+CGjeG+5ajAzSaotUOlYzCaErGJhu/eByGhfEq0
	 waps18+5zMXz9b9zlA5r592AHSCYg7X8lJOBVouA1KXopsN4pd+AHi/x6mawvlDvxC
	 sFZBhjQ6hLrbiuVr4Q2LSXgc6wb6jWR08Dj8wYPWwtXZUD4cY/smprzcElBzbcmkmM
	 WyDnarOQWlHJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE27BC88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178940523370.18879.3976552143487886952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 559382613a988c6e30f7b59c04eb7600a9f6e6b349cf78f4b716f5c1c6df75eb
Date: Mon, 14 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789405233
