Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187E650097B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768324434; cv=none; b=FtrCYyINKh1nWQc3TmHh9PdIhqvw//VlAJYl3Mv9PxDqHrpXdkQfCN20Z13Q/Kxzc6m/gbVEmz0dZw5QN1TBoqaEmOJqMDjh6ffsWjQllHos+h9hhvZmp3Z5U1bXvutTLlbO2Ch5AfzkN7EVL/9VAkIKLDkVurNjNnFDV/XDBw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768324434; c=relaxed/simple;
	bh=fzuYtSQuaMwpXk7iP5Gpp6PQbKfgQCBqQqGB/IFvZWk=;
	h=To:Subject:From:Message-Id:Date; b=r7QYZ60F2ktbZg+83qSW0Uaj0gl4Sx+3GgMdsSaGow8HIIz0gLEGkOWhrJMa4MeHLH0FoBrYIXgMoI3TDy/DNi8CPAZ2pSBCpAJul2fr1WMfUpdf2Ho5Tlwz0hx0zfwzEdtDybHFSEiQUWtx4hBGsAceWmT02WZxR8Gs2WMH1Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shAOfuf4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shAOfuf4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3DDC19422
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768324433;
	bh=fzuYtSQuaMwpXk7iP5Gpp6PQbKfgQCBqQqGB/IFvZWk=;
	h=To:Subject:From:Date:From;
	b=shAOfuf4Wdzc6Gn4E25tMNtQpROD+5363O6izc6KcMl1Aq7exe7wlRqIrlmWISFX6
	 5RQhtUZ+UicTdI8wfIvluMQuduSJ02Nj+Kc8+ME5FQRtFWJWkDJSbTcWZVwAb4/kJp
	 MfS9QJf1SgeA8uSy8/IRxOhjRNwBrwYYJfjFDCVVoFW4GC4OAn600/0G2f6jtucCwb
	 SzxBtCj5d/eB9ukKR+6fXc1SiBu29drxtfDMakwRiYLQZ32U8L2S8DUR9642sKarC8
	 LLJC/pMongmDKKs+G5/mwAIhQRDMGIYCGvwBu8iilA9+IObXfiowOBPx9I6fIN1OM2
	 GEl6tvDYNG01Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9621DD2F349
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832443358.26254.2462086601976841136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f631113995855ec6d1558a462c9011f9fdbdb61b57e1fd2dce78c702edf8950
Date: Tue, 13 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768324433
