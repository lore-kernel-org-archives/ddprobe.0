Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C77647779
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 07:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717052663; cv=none; b=KmPK1bf/2V8aREc97RJTzrJ0XxmOLkVMu5ep8m8VVcMd+wpirs8lVWEK1GuQdpirLB8UqNQIARuFgfD2U7ImcMpK5gB2yfbvQyC1eNa2dRknJqxJqya5MunmuS8mhjAd8jP+z3fQviVr46kCl6diee1qjRMAYNQfbqMg5uu46pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717052663; c=relaxed/simple;
	bh=vhThdXkgqDCzZr84K/4kEPjlOITwF7fnGwDfjtg9HsA=;
	h=To:Subject:From:Message-Id:Date; b=S0S5ZNzilRpezFSdMP5e+m3K9Y91rP4b9WngaTfqBdtXTFgIYat9E6occVv92SBHZDDPHt749EXJq3Wl3u3312q4IrqKUM6cxXx/QJpeDjW9lhDN4SJtW+T14Ge+odkJZFfYeSEmEC8E98xNwLB8XLblJ8OgpT/tAz6bwZp/xVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQBj+xAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQBj+xAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3856C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 07:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717052662;
	bh=vhThdXkgqDCzZr84K/4kEPjlOITwF7fnGwDfjtg9HsA=;
	h=To:Subject:From:Date:From;
	b=kQBj+xAF8T9peZT1ufy4fWrvOtzNzt0gllgIvHfxbrQPr13bR2KwFDFQpeJFNTV2i
	 KKYttWuttctXX2CIMNs3z6JvMwfAOCG9OPYO6sJrhC7bNoYCfASszRFQdBqCnNN8JQ
	 V7lj7Aelv8RNmc3Wrf8CARci8PY/gB5ibaccMo/FN0ZHtUsYm+nNSBmE1F4DLlxpej
	 vLKVVQe2h2v/rUcf4UaQnE8xmVO2/LE7i9LdDfnqPUWO0TkOvtvZGbVZN9i7rxisiu
	 5NDZ0M+efJVR1+4bSewLm7bH+Ten6efJPWOvPB8nvYIoAL74leT+tnsNBxo2hefgLF
	 Cc4228P9Q/Iyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCE69C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 07:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171705266280.29529.2582793287021817854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb2ce043f1c907e4d8b506e5344da1c1726ac26e21aa6d18282c397898b9484
Date: Thu, 30 May 2024 07:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717052662
