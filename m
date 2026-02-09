Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2D73783CC
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770645234; cv=none; b=OC04EN62KQxIuvYUmTzksDaDC0LNT0rnKvsy/rCtLmFQJZzafi8Ib45KP+7bhoHAaHJHhMd//1gFBgGQs7ECMySj9GP+6ZLyajuQ2/HPdr9kzz+rwTvEAtb2p+4UgYoEiyRMTIOCgdzUiCoITeGIsv84skJn8j9yLOAtEKgl5Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770645234; c=relaxed/simple;
	bh=3On4OxHl1gGaF40AqPqU1BxByIm41ZNKNy10+Nc+vdI=;
	h=To:Subject:From:Message-Id:Date; b=Tx2BuuE/ayxQaftm8bXfi2KFq5cxX9lBUWKCE9x9+CRqqPleK19FJLu6CrSOKGuiRRuGS9rxUIYEzeflsZmP/28en6UauEeFkA57zf3+60kdjphQkk0br3/dse22GVs+N7R6BoovDis55o8j/Cnf0WQrj1yKllOLzn40Z7LQJmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csGwFPHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csGwFPHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C69C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770645233;
	bh=3On4OxHl1gGaF40AqPqU1BxByIm41ZNKNy10+Nc+vdI=;
	h=To:Subject:From:Date:From;
	b=csGwFPHcEeV8oNMebNjBEv9mwZh8zAA1JmzlH8FC75VKqMReJrTF3Bzwyx6A9q6CN
	 9AsPwOYP4JnRCzzsjGjAJNTwGzs/fF+1eS+Tik0tBNCNX1ZhEgOGdL+cxkBiWhQQ8P
	 W8bO5/ngYvgiUjiorA9efbvmtdg2Hv/Kdm3WvImXyMLqxURFOPeicP+n1qAIGhf0M7
	 pNlIIJ6lOib1RsWtrFpjpow7vohcQyae95XzdD727qL8+3mMnr2j0bI5UdbRvCUAVb
	 gXwFve/nEg/KlAckjnJzB5Dq/l0T5yQ4JM5IONsTySc1B4nKMFdPj7JZTMz202NoAU
	 qlFS5d5XdDTNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A42CCE81BC2
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177064523363.3641.17833461039952134823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03b8f61dec55bbd13afa1c5495de24ff8ed99bb8c19a0dc5f038b0c18ae516d
Date: Mon, 09 Feb 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770645233
