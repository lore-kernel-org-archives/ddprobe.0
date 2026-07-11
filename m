Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87B70495E5
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783747714; cv=none; b=iSdzcne1ItJD8S1/L7gJFvkqjmW8A3XhfYkSJlt/jIQ4msQXl8PTTZQrgKZtPLwRuPfZ9fAS4snKyn0D1CWAq//vcCqTC5O2ys9ANpioZ4ZepMute4Bj5v6D6cCDZikYdhNG2N2nalLNM0mN8mFCSBDWsjagKTM6lI/998TYIck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783747714; c=relaxed/simple;
	bh=DZbnRqMbiBYvcx261PXbxEPARRRLndxPxxNhhZX10zo=;
	h=To:Subject:From:Message-Id:Date; b=XEHRnC1t5HpPRVCalaSnKijqRZA9lHQDnr6SEYJ61Yhe/8YLX4mngMe09jseJTNdpbzfNMJPA0ADhA/hSzlSN2rlHPHZUv1wkaobcKgTRMgp/GqyPc/vB4hLxa/ScZ3hbvbAt4Dj9jQkDElnh+igRn1teQL/r1f6GWW8TtqSxwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/y/nDWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/y/nDWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA41FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783747713;
	bh=DZbnRqMbiBYvcx261PXbxEPARRRLndxPxxNhhZX10zo=;
	h=To:Subject:From:Date:From;
	b=a/y/nDWBPXkBgfv/051svnj+ntqXOSYyQzAQFfcxcwcdDcROurBvWke8nmfBGUMHu
	 d9wqZlrzeT1lUIYDDDvUirliaVydWi97sCh2GKHce/+F5WKcv7LA94OkBQgsysLc2u
	 KWisi5dkmnVKgxqJveM7EfAzJwbA5a81Ijt0hTdNIyzJAHLGvdS9Oi0+RmBvKaMLx7
	 J8IQkWYQGJluAVxPnpTem9cyMzUSJjNUxFAecoF7DvXaca5vE+pYsMa64OFx0vCt7X
	 O0SQMpdW+ta41cw8+n54ppd+2/Y70xRPNxz98T7YaZPkl9ftEGEYJx1bQvyQ1wT503
	 x+A31kq2bfu8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91A5C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178374771368.30986.17825878577502441979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb8b002e2dfbb1e67ebb177c5df2b005b2eda737b1d146a7f537422834b7850
Date: Sat, 11 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783747713
