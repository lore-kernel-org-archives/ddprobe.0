Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B7617983
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709368097; cv=none; b=nfNOR7YGHvfUr7dhaCZqRy/gHxdCj27PIeJEEUbaFOSRyJEUNNZiR92wA6AVJgPS42Kv8zYJypN6ZMKElLV+qYN0CSbCZQ+ri3kXbvgtHkDOpezFqhTCkCG3QEm4KzJjIJyBUQl2QsLZvLHICieBH2HYlmRPrYOGli0xHahkXgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709368097; c=relaxed/simple;
	bh=jEuke+Sg9U1P1K+/9hErvDpohcvYgE+9wmE1EgeoymI=;
	h=To:Subject:From:Message-Id:Date; b=PVZuzskvm3iYzqxqYSMyZqV3wsij6SmRcWU4cAaE5trBSWXLdQqxPqikKTiH3yFXLE2M/N3inT8uMZyOxZTW+tL4JvCu56kcwlAMiPdV3fOTYzW9znERaQOHPngVV6MFPyRv7D7SrFkF8/XGorlADoJsy9rzAeQxckLiS3U3x5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1YfYLTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1YfYLTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C31BC433F1
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709368096;
	bh=jEuke+Sg9U1P1K+/9hErvDpohcvYgE+9wmE1EgeoymI=;
	h=To:Subject:From:Date:From;
	b=C1YfYLTaQz0RyIwdiehhAZsUTI9NtCKZ7LjM+pbNrxMaWFVH5NzS2U4bOQQbh5FM1
	 TuXI4j4ISxEPjj+dg7IUaAe1AcbBU4vZdWoSRRC6lgvZLcbSNVXoFQPPfRBjNNSkGr
	 riBESY8mFc2Wvs3ZO6jetkV6H5tjlLz3qId+4fcBXwpeaF6dG72JgxUPDbMjctphvq
	 kQIEpQewDj30Due8r3xOzCWpFKpdTTbi/Dg+c9c4gf+GyvXfO9zXjVeO8EOCQVxl0K
	 N6tyEGJyJPaXRoa87nxyZtf0MptvY3bMOLd6R4N54lw1KpCDKZtWuucyNSvvqSSgox
	 WqnYrcgGyZMhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62841C5478C
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170936809637.31001.817201078310163927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d0805ff90848101fde8b1495241fb46d8976398f663d68898969cb62ca8b58
Date: Sat, 02 Mar 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709368096
