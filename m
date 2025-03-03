Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0722E630
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 09:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740993534; cv=none; b=FVu8b60cN8W35ziaXHzYf+682x26LsDA2fKOBRLcvDM8T3+fa9t9VFSUkQ6t5f6ZBncPO4PwatSqhaJ7ofxMZjVcq8NPE3IntrwaWcCdY3HnEEHBmJddviqPUjDXtnFsLUm0PN+PWbuR+a68hN2Ngk9slaVSgnqbpxkiadxkBPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740993534; c=relaxed/simple;
	bh=o3RInHqr+IuhkIjsAFIK2wU1YMGtdphGSJfbjC4NN1M=;
	h=To:Subject:From:Message-Id:Date; b=PXASR2JWvHs6jaq5nJjUYIQI4PSmx+77cj6IGv3JGlOI7U8tchdWaLaJ6zlQm+tQSMtNHRzOTnTEhdlTSEiNRHwQU7VENgH5gGOksyNpR5VsNLAeo/44PpX8Sbrnwte+PW9mndGOZynAsTPmFQkrs8CFRmiMv89KbU7GE5vaG/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxsHb8HL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxsHb8HL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A702DC4CEE5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740993533;
	bh=o3RInHqr+IuhkIjsAFIK2wU1YMGtdphGSJfbjC4NN1M=;
	h=To:Subject:From:Date:From;
	b=JxsHb8HLjK1iE4RlcOdCx8yam4Hf05gtNhaurfRBEplfoeTlDV+wfi55xu4Dmf0o3
	 7ExpjEK61p8715IGNB7SR4F4Q1cIOjVGoh+4Vv9Nq40w86sdMh1ksW0nZyq9aSm9/P
	 r0q5JOs0SfMK9m62o7YS9nGcqPX7nVpVc2EoZnPs96T4rtLEVdyD3esaAiJqKYI9fQ
	 iJxFFD5rDHX8R4P6KMaw58YwaEJbvhcjdNSJ9NO9fco4GKBv/Ns7D+lxaVCUC+Y/H+
	 ItX81gISS0aPbCU5GAazmJ1OrpJP6wr8gdBPGEYV1d7u4NAhEYn0M+QUrfagI5Wogc
	 PfEd2WO+DgINg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95241C282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 09:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174099353359.23486.10762918130126522442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69776b7823ebfc5ecb5f31ac2bf9cce5bd8ecc153e28bdfad00ccfecf3d490bf
Date: Mon, 03 Mar 2025 09:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740993533
