Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263A93A1E67
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767240234; cv=none; b=VM2rx4rIaXHigOF9ii4dYrMM9s0CvHooLFb9PT2TpuuXHkVTUWKkFNWWBWc+K+Rm4oUNwfbvk8yMYmSeXOEAHBSGqJBKlNjF/NyKlmXJLEJTCxTVMoKNv73rJYWy/yBFcyPZUfp55lyd/ZXowWdybvk5ic24ngPY2t1wLPY87kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767240234; c=relaxed/simple;
	bh=/mD115LCme1M7+2VT+YZdxa/tbhDi/ty1Kc47Pa9nF8=;
	h=To:Subject:From:Message-Id:Date; b=PAMJVGP/U9ezK/9YeGTcH2v2HbwP1MJAOb0utHiipoW+X1Sap+idhF2bcTe3Q1uCtLRD7dkmTurAZhiKe2vA0vytIqM/TBImw7A783luEEdgryuH4T9hM7Z13ianoFoIzrmhXf3D5Q7u+r4j+bVKsP311SMWoemUnXgnuqzKtuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFbNPzA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFbNPzA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8061C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767240233;
	bh=/mD115LCme1M7+2VT+YZdxa/tbhDi/ty1Kc47Pa9nF8=;
	h=To:Subject:From:Date:From;
	b=OFbNPzA4WyZ4hBBoA71z9b4x17hQLQ17vVW/9zi7jB7O8uGU1wJHruoo8uamXK13T
	 U82h4O/OW4WmY0tmopFAkwhX49wPX9jA10FhpfkiEeXQywOF1pp2LsMqYRnBvj0UQe
	 b6Oo2Wf8Be9P9Ak73UoPSnwQ0/dLyREd47mgbsFpyPhR7WmeorJISH5b04i+OHGCtj
	 Rg3KzQo1BlmBtBkn2f4mjVWlNjXQXHjOWOH+LpQZpPkWOzsBKRLfMR/XR/pMWPhO5b
	 qS0pMEpwV+tbpEP1Zoek4tzL7gv5/ltfwQjztA585kTxn1ZYCobIyOb4mxUh1ic0mC
	 AX8QOQegtkd3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F6EEE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724023358.9355.12836068321432801312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a24c699b5e3785096e771ed6bdb1e918c79597272cd971a3ce97e97d899a12
Date: Thu, 01 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767240233
