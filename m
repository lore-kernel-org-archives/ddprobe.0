Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DAE209F43
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761502794; cv=none; b=r35iJKaCaADhDYc0kdty77IbZpXaend9eNvs/UAWOW+8AtJf8COpPadeo398HQhtgTIE7gW96ICBysr64xR8mdF4epFarYtcBMHa2Bz7Qa1Eod+X/BJuGtVWt/lCAd5RcC2GlIV0bj1cCRD1DewtxPfRPosSuqjJOTr4TFRlSuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761502794; c=relaxed/simple;
	bh=gYlneQRkV+ijre7jaqdU5Ojiax411bNY8czFQtwxs6s=;
	h=To:Subject:From:Message-Id:Date; b=H6qfdOau9LKiW5GhbElhOoPttIrGcluEO8ljA3oBgdfIZVeVM2XLqH/AIhwb7JkspgLD0t83LY1YxVAKRlbdCHvfd4V/U4Lc9etNpo4rxq7jgMRDQlT//BGKJAVim3npXZluqGSC8koGlUArOis3Tzge01LuHzrc5NUQqwRBJMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYw/FmyJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYw/FmyJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3FFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761502793;
	bh=gYlneQRkV+ijre7jaqdU5Ojiax411bNY8czFQtwxs6s=;
	h=To:Subject:From:Date:From;
	b=OYw/FmyJif+q0WqmJfD7L7cnv7JOasvA+Vd0FCERLjab2b4JybXx+ZWJNgB3KrP7N
	 Z3ZMqhEQqybwkPPwOvOoDPzrGUQC6jN3MpOslkZC6fuifpzc7ZspjVsBExvrQuHPIg
	 WaoSQrpnMN0mmDQ9lVtrnT81LhNgi//Gx5hvtc6piu58Qv8spbHXPdeAiXEGrry+qP
	 VBtF/xCBxEN/xX1kGqY+U6stuTQME2SsMt7bQIWpZRP4CpaV+/uzqIQBcYPREE3ilf
	 Cq04b5kw3etMv5hC9frxnuKk2KueICVdMRrqC4iy3LJGEmrbzNrMSo1ViZiJx37pCT
	 tXLa1CsF7KPkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97324CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150279358.27676.1059092513877313957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747ed6291b9bdde365870aaf3bcfcf0b713d962225b1d29197e7a9d18e567e54
Date: Sun, 26 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761502793
