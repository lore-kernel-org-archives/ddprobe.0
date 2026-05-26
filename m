Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4893F6C3A
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779796954; cv=none; b=gyRdSu7qk5+x6qPZKN2MV/eC+N+OlPw0c46N7unMQuR+zEy0cVvdKrS16cNV1crAJh7iJ8O/4raLXi9xpLEs0fHNRa4swrxgHQrRtB9U24lW2lmHwySREGTieS0luhHHeQw1q/FfAjSL9nXJRxYOJtHbpnSAdsZJZ1sEIMmWnTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779796954; c=relaxed/simple;
	bh=mb6VteYzq2mRbhHLCdSSxyWTNOaIbkhggX9i415REDU=;
	h=To:Subject:From:Message-Id:Date; b=Wq+Q15a7KuHeAvtAG7MCrcq8KDEP/KGyaEIgPAzIm52QXmul/rzGRPz12OpuV9P5CWIxBRu/WF+Nybu77pcXobpHwlcY/7YiXWF+1Gt6Lk/nffDQf8+MIdP7kKD7yMFL3T9+5Rq2sWtX9IPhY9kBUgAIl5Dy+VzyiISlYGghfiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CO3AFjh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CO3AFjh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAE2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779796953;
	bh=mb6VteYzq2mRbhHLCdSSxyWTNOaIbkhggX9i415REDU=;
	h=To:Subject:From:Date:From;
	b=CO3AFjh+uOIdZqRcQRqBC3iYr3YqMAcOjRzz7bzFTAhwzXQTr/44nMyE+fUkqd5g+
	 4WYsGB9yBGrH5m3gZnT1lkNBKEEbiDmfitaygoxRXATXJVECujE9AdjP20Iw+7pu1o
	 MT4zRb0DpJ9z/xV0Xqmd6h7LK1CXUq3r/Mve2sZ1TBd4XlXyjEWsRZra8+/qFjBR49
	 Vz5/HEu91OGK/pjXDbab1+b3VUk0kBldLemv3L1cKhsz3yCQwIowuj+9gLEvYqrpZH
	 905ILsFiYqUUg1KQAdHpZLIhD6BMR0vCTQG/XB4hhM5EBNJB6NqKKsF16wxftoRKBY
	 REzuLQVSd9/jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB544CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979695369.21526.15877091070850306034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbbc4b818d5ee7efc1b1221a09d771c3a9723d1186edc2a17b4852d7a8d1ac4d
Date: Tue, 26 May 2026 12:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779796953
