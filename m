Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6A447886A
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787952634; cv=none; b=LA0m4J1ltZEW9igV1AAdwGVsw/3of8uL6feiOyZUuPXBZV/bP1xPwR2JeiI7tZCBoy5z6WATcm/lM0ZDPFlgDq4ao0YdboZvYDSo0zx3TiBkKY2BMbW7xRrzFMErIb7DKG0urky9X1O8PgokdA5H/IWOyHRVtAAjjVjzuAjrfck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787952634; c=relaxed/simple;
	bh=j8I8mgJ9x2UtM2e4QJFiGsiFEIKg9AHM3tVTuiEdd34=;
	h=To:Subject:From:Message-Id:Date; b=gZg9/QbNi7aJvLCR3xBB6rrRefaNl7XekjNb5PD2H24dsoQPkGsVeKQbZP01GdnLftfR/1pzF4HFKqY5O4f95JhGrWa+tJAzorQrC8fcN9xYjQ6qHxFX7u2+bAkgQuNMCrE5a2w6DaiQyyMcPMO1GY5dkMSMv7DMmdWEPojrNns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pf78UxIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pf78UxIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0021C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787952633;
	bh=j8I8mgJ9x2UtM2e4QJFiGsiFEIKg9AHM3tVTuiEdd34=;
	h=To:Subject:From:Date:From;
	b=pf78UxIbt9s/F2++MqZyZGCZPUDbcO2UHCXPBqE3Unz0cAdt+1qmM+d5VlE0swOF5
	 p+DCZn8wke/RnIuAt/ABr0bhGCSMDPlS8lx1nCMK5b9Cdy4pKPMWM6H73uepxLyIFu
	 3lTJiVGb/vwHxHxNWqtgb+XyzL2pBAEprVcVpdOHkaKrYn+FhOm5TfFdFoXT8nsJw6
	 TXHpw6iks0TzFj6zy2j5YxP/jGxutlEp8900536qBCSsRMg3B5jUHMHlc6nuwPRAes
	 qqwOCW2JpSKOWRApqK1wFI1qOoC2MlN8jgcs4jxbALDGRUQFWk+LsrASvclqk266y6
	 HtQGLqkBxwDLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F13C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795263374.23124.9284250983672737736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9edc6f320874a6281fb4231ca21c8f6ccb0607e2aba407875d95e9631d65574c
Date: Fri, 28 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787952633
