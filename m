Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BD12DA774
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751975394; cv=none; b=MdHldFmW1EaH0oqekjRBsBaBjBFiaHL+GS6JW7OzhPQGRjuf9VolLfPA5tK76yC0/7lNUoEra308x4ef+LWDOkZ69tuSb+cVal39KkRVsjB1kke5pDHVa5oStVZuZiKFCvJTNUFD8DDQFkIWE/xDAWxqDBf237MBMWslSEN3qyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751975394; c=relaxed/simple;
	bh=onnkoYnQA4hqEZGniNjTnvpsgaETpCi57zUTOBL1zm8=;
	h=To:Subject:From:Message-Id:Date; b=hAtIxzrtx1gpm0iXXc3znQ5+DIIDyyZ3eX7DQPp76F4ZITKN8rPk/5Q3ylo2Vw/g1RtSRmx8RwofVDwKenzHRjlrw+Z6bBslgjN+AUb/SqNeXzTQnNyK74tX1YJDmwwAGvaPhLq+otWCYqfhjv+hAY0H26ZNyaRC9EzowfN8fvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwQjX0GJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwQjX0GJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BBAC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751975393;
	bh=onnkoYnQA4hqEZGniNjTnvpsgaETpCi57zUTOBL1zm8=;
	h=To:Subject:From:Date:From;
	b=lwQjX0GJR3ZnYpskMK6/mZRtnGCffBG7rAC5W88EL2IyKAwhccpdgWEvSmfNmItH4
	 UPflVXlarXiezkXyjneJsqp+5S0875MR9kVQpjok52AwboT+TpG15iwJnlRFojnjHh
	 MJzWbE9TvwXCf3szseyYm4GSphxvAY0Q8zCcHU48QFvbKHUo63vibIaZ7IIBhl1g0T
	 nqs6ByAj671Xg0w4hYUTsJr2lacbOzB4GWSUA8e3l5vr29HArQReIvThdE5oWpaMyW
	 MHKpIkNSVQLN+R32MBAsPSZrVL1eQQ0TjE4lPcB0rrejoa226+FgZW8wCX+cmUf/hn
	 nifXFyqdM+7fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6ECC83F0A
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175197539357.12378.8679483921321592769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b81e463572cccecde49ffd2ce54beff5c0c8336c0a0f34ed89e2d3593e6275a
Date: Tue, 08 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751975393
