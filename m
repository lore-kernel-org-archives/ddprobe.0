Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F421C9B7A
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732635954; cv=none; b=ts4iSfsvmcCNxIhjNueFi4Bjjjwgq9Oph1HrFaeRH15S0wzOYmp3vUdaBPx1RczOz0flotSb2RL1/Ck2kqK+xDhZQm0qvK1rhDbuk/UQIwf1S0QASdtvWyH/rimunYSzzB0fIb/PyhsjhuleH8g1fJHx48wS9/gixVKmRFupQpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732635954; c=relaxed/simple;
	bh=QAF2thsfb+kdXN+KB0z9sh5QOqhVAK5Xmsv8rnS+W04=;
	h=To:Subject:From:Message-Id:Date; b=YU10KvO5o9A0JGrR4ZU00uxGNDHd/C+6K9M8QwrPLU4eCP2ZV7oy8CsqKIyQwTHuDJlOBXgdHqHtkBzp4j5ElHoEWk6vS3e5En2rPA/wwsscnc1KnTfuLfEAcXQ13oXvY03DcbilpgiaPglq5lqzXwAhll7H/o3JT9bD1Eu5LOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n40Fa2aM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n40Fa2aM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B686FC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732635953;
	bh=QAF2thsfb+kdXN+KB0z9sh5QOqhVAK5Xmsv8rnS+W04=;
	h=To:Subject:From:Date:From;
	b=n40Fa2aMHR3i6yNNbDPLaBuUaoGwhiBTl2U1xeXDd7QM+yg3Gp30xXmD1oTyOkbO7
	 LA5IPWzhYBY5SAleRmzDxa0q3uY1CKKWY8CCicRdHdGra0G1MNyo5mDlreF1TQoEuy
	 fmK8f2AvO5qqCfGSend+I9Ktb+mCremypRgE1FCCWqJbdd6O8eD76P6TLTMbnrjyGa
	 sLD3V3Jcw0VbXgGA7QFG1xVwd65ilFlR2q41jPBlhJ9GrOVsDdAtQtUpsHpr2bY7/v
	 TvdkxQnde01AakqEjqFWQaHxX6afliiH0ZXkBwAty969jiZUhf5meQkMMhty3cQF8x
	 lzPMZOK+q+8qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9EED3B9A4
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173263595363.21961.4844238070119562009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad882cb95138870bda82eb79a32e41f5df7397993632225af4f072902fadabe2
Date: Tue, 26 Nov 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732635953
