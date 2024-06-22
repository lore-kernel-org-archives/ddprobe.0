Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6732B1E4AB
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719066743; cv=none; b=sTd5mm6Dy3xMjH4d55r57RsC1AtCOVWKdU4nx0cXQ+u94M/abITF9L4ze09/7SU9KH0AuEbEQ65fy5oTmljzdI27pVbXdKrSXMOi0liweG4x+UmHFhy2a43M/USV9lJL3oSe/R5XXnBMpa8EFjfcItTcm/8E1zrax0muSJ9Gq4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719066743; c=relaxed/simple;
	bh=xfUoXWxnUAiEWGGp/HdK55YxUGo9EIlQrTZcik4wouI=;
	h=To:Subject:From:Message-Id:Date; b=BO/J9+7y6XlLIoWDzj7EquitKAeUf8KGdp1fMPPxj7sGUmjt0oO8AeI5QCfgpiD+iadOMRfglEUxFJLN8Fobr2OMDUB6gMDiUJ8y/RTC0kat86prWNYgB1syecRzw8HNnhBoDnEkw/P4Wqvkeg0jzDquIpRLIWLCrPVKEPG3GDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1zQBBoi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1zQBBoi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D255CC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719066742;
	bh=xfUoXWxnUAiEWGGp/HdK55YxUGo9EIlQrTZcik4wouI=;
	h=To:Subject:From:Date:From;
	b=B1zQBBoi0FvWpVMGSbMFKKX9LBrBTMmrOFw8MwVLXLbEyJDH/UrSeK5c48XnQko9l
	 j3bod9h4KSF6x0JNhUXvtOZ3qvCo4lyCiLh+uDsI0astLxBGuik+O/SKPRq85y0Rxd
	 7yqulT+Jp3E4mMUhOxTIpABScSuIn0aYNtikKE2PPhpxb8I0qWBlSihTSMT0Uk84WL
	 8fwKX0Lq+MgCGm/uZoVJwjMgvZgTl5fOLRdtDMKXDr4SCquOvLpFlUEyZhKApHqUR5
	 d4D2mX8KYOpC+MuPBVX8nP+Hv1BhtOfZhAw/+GxBBdIvQmFpEA53X6q3UEUFLX2kM2
	 NXrfI5jjPrkmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0D5C27C78
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171906674277.30612.17563206830491883631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01c623697e3aff04d067f94cde4e36e94ca68309919c1d569a631f1d44c8e14a
Date: Sat, 22 Jun 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719066742
