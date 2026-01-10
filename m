Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F10A42050
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768068234; cv=none; b=gkVcGXY8xcLLIUrUv0IzyDj/bStdgrfGGrUXycktzCvnEbjV2Ofijme+8jvo6oct9I/+wjJ5dbrjvZf/delLEy/N/mt5dtne2VitBAVp9GUpWSuP2EQegyRUwfpdUpLaIw7uP5tXdINagyat/hzPIjCDkligBnCvcd/Ge9mTFxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768068234; c=relaxed/simple;
	bh=TouvRYUTxEqoPI9vizKMNnMDlKWZGDdJV7N3JnecNrM=;
	h=To:Subject:From:Message-Id:Date; b=ixx4eQxS9UqtJfsyD+mnEYiUOmZDiPLu0he6Fgg2RzqFzAOkbzhX9Z+XkWzWstcfgiBG3rxlauDwxA5LM/g/Z+kZMA6s04eN5ZGo4gFebK9tSZHn5njMhg2nVh0TNpzw9ZLpv3hr9JbeDKJ4rkQAEukyPpEkQReCTPeq7kFd47I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iU9OSgNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iU9OSgNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA57C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768068233;
	bh=TouvRYUTxEqoPI9vizKMNnMDlKWZGDdJV7N3JnecNrM=;
	h=To:Subject:From:Date:From;
	b=iU9OSgNlm8S9T2SmKqDBO8FOTDLpxId9iVWaSv7zaovBOWEn2pM1qaQ+0bzuE5u9k
	 IBLvk3TKsN+BekjL8C8JI8p8neHwo8QTSTp5vJK88ekZCDsdZPFctAd+bi7CielFQ3
	 vHeyoS6LCQCZMIcn3SmHX9d3MGglX8BccSM1Rx8OKaEFZb8DtOywfK8Qr98O/97n3l
	 fZo+lmwz+1AcKfE0cGKGJNSnMwH3J14UEz7duLc2BDFx+IsYVDdPadiXr21lwmsLrg
	 4TZYY77Ln8mAjU1rhPfRpmdNpl0WpOC59jNXIYmy9UPhU5RT/DSwyhU2fyV2ehqut8
	 OMUTzA93l3b5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98153D1A63D
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176806823358.2741.1181469652214334612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1734faeb15982da7e65ae19f739f9e9b1aca0ca750f4ee5b7958f52c4b6780e8
Date: Sat, 10 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768068233
