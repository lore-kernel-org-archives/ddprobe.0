Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1790B3603E8
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777634854; cv=none; b=f52gSxorQ4V7HSAFGeDRrVykOGZhJUeyiLK8rX7A+uIbTSaY5yysueXXo90vpxnNTFCy5fm5LEuvwILoAww5BTx+pZtkiwu7Ogogimy6XFo6z7cr3eQ/0A52iHBF9TZlM62LQwDFnfl2D7nezaj4jN1b4sauL0wAdB3yD2+s8tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777634854; c=relaxed/simple;
	bh=DxjrdPOaQ+SzgE7L9fMCYeNb0mp4fj8L3GDkw5nuSDQ=;
	h=To:Subject:From:Message-Id:Date; b=qI2zrJg6HifFkbEweRH2cMj4f5Nf9paDYjOSgk0T6U+k27tgISjqh1FVrc43kO1uZzdB+sv3uFSzDaFg5rAHsiKLNbbuHVrknRw9xhB3fowGOHI/jrxmxpe4E6XYyb/X6CtNua5XDgDOnq3TaP0ooqqoEeb+mUGXMEMlFeQ2INk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHWP3zU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHWP3zU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2FFC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777634853;
	bh=DxjrdPOaQ+SzgE7L9fMCYeNb0mp4fj8L3GDkw5nuSDQ=;
	h=To:Subject:From:Date:From;
	b=RHWP3zU7eR9bJMMdQZlSNMKKnVd/M/vAa6B7KSDXvnIB/A3fWCOk8LEirRl8yIAGu
	 +N4WJvhjHQdCG3V/JpmCvw2djoGgV66jubIDYi93gU1ZVR8mh+WWgHrEZAMvq10QAy
	 ZiTcqHlC/r3CQwXBAFOf8KsKrnRaWxYUmdTyzbkTYMFIOUv6Emfg0PtilwEvCqrZV1
	 Qg+k5hym6n2KQtn7bpvQUv/Crtk75Oydi+ca47sTYMdS8BrjPw58AG/qCvymhocOTZ
	 BN0Cq5XzbnayqvPE+DHz4XHJjNYa3YI0mokrDatWFDlgdCdDxqTzLrtFwCBID/m9SJ
	 cnBAjUr7R2aKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEE0CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763485368.9071.7568408124183187233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fbdd06e5d4a88b36c49a109038b4c1ea0dcf5127b40692a63f033f37cb4bcd2
Date: Fri, 01 May 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777634853
