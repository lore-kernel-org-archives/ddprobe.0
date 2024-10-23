Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E76E1C75FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 15:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729697754; cv=none; b=HABdPOXD+88Hisk2ep1Yk3P7/drXsPxRI3u42fF/dRj9GTmfDSkQRve0LbDVltD16IsBEP/kTmRrdYM0de5ixje2bEYIr/OcIvfbBkBWl7BYpNsR2zrKmA8L2ruGmmUOSvkWPnVG5+LwizkXwXKTETr0Cr6/Tk3DmGY1TfJNAWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729697754; c=relaxed/simple;
	bh=Q3yHBdcVRZ+F7C0YL9UkMJf2AZPS+qwbFc7YW+KYvGc=;
	h=To:Subject:From:Message-Id:Date; b=Mqf6jrcrWz+GIAac3HQFx/wyxZ2npUmD5POT2Ufel3NP3f1cMrn4uwmmpypIKQkjIjKo6NEbfkWr23PuoMhoKIiSqreyngkUe9LJ1Be3hhKfi/u98ZNKvQZNsAtFJFPGRL8G9i4JydULWTXF2F3C3nbTg3G8AMxa3DMX9cFYrrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umvdXvdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umvdXvdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CC3C4CEE5
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729697753;
	bh=Q3yHBdcVRZ+F7C0YL9UkMJf2AZPS+qwbFc7YW+KYvGc=;
	h=To:Subject:From:Date:From;
	b=umvdXvdbsHOPD12IS88vtVr/giP5H2EiLY5AKLK42yeu7urVu+YOYBHWvmf+bsWu2
	 QApHu1alARun0xM+J3rrlxWv0oYPOCqJ4f+TQXUBQCyj3lx6jUMpBOD5Pdgo10KeGu
	 1pvH3ny5z9eD+EdoKkTmnAZ3Xs0VfPlrijjwSIOA2V3aAmGW7FJTWA7iSRCHakHnUH
	 ZhpEh0pZFkm+trQklvhzDybonPEpSM1I2kNXcCUBFuMB4y5qA+EumAY8QyKyAhtxo6
	 ZSCIs4cgqJ5QT55z5s/zNmmu4S1FHvxqB+buieL9RhzPA4+bcyAvdQC7R+GlPWfaX/
	 WL99UEXS07AQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B88CFA442
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172969775359.5621.12805645416548250228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1911f09b170217e8efe92135ef89a6dae9564eb715d9b91f9261c81ce653ad
Date: Wed, 23 Oct 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729697753
