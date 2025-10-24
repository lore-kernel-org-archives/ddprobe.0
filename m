Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6913218B3
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761332394; cv=none; b=TJbIOEZpaOfwUH0tDTAgFYvzvVT0AAy1sT++RQm/FBD8W9b5Qiu23OYVZ+T+nmY8S8dsWEeg2pce+HdHpXKP9SfIpLEvObQRgAFaduT6FXC7BPpX1XdUmJo5NcFaUILDJ3+Hr4gLubmQfQKBfWkLzRO+woWbQOsuTeHRTr2Spz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761332394; c=relaxed/simple;
	bh=nDKcnlhpwk4M5QWASfqHbLcp1V7CqaxHridGaeMx0ks=;
	h=To:Subject:From:Message-Id:Date; b=I1451HxFOoiYHdONQjqeUMsqnNDhppzXIQ2FPdWkIUcMJBwfNwq61BzXT3INPLHiwofMPaREGElSJXp364tiZ4bShMYdAkyJsggJDXG+Wy4xuCPhPrsjFRkPFAgIQkAmNzsrsDUip6CeOgx9fbm7M/+lzhHt9GHY1+9+ajE1ZJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeJDez5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeJDez5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20D1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761332393;
	bh=nDKcnlhpwk4M5QWASfqHbLcp1V7CqaxHridGaeMx0ks=;
	h=To:Subject:From:Date:From;
	b=GeJDez5mn4QDjmX2phG/vJWCRPsZ0C0WFKi3M1ghYYFeYauwqFJRktxfkQJXWej1m
	 5I7YRLa80uIVl4OG4KyO7maltQBBeFYDJbgtTCFsR6XMSOCoPCSIqW/hQ8yXwge54z
	 Wn8QHIuOBzy58tbX266LfVw+0LDywGHLc4mVZ0EdX9Hw2O4IkQoAYMxAl1n0vhh4El
	 Z9PbNichoItUwE6W/mhau6Jhf4+STMGbr+Ok5AJIjAtB3bym3Ve4uYfVIaO1DKV1Yr
	 CTfAbArow+0Q1U4pi2cRbuzqJCqCLTDtB+ESJv41r7XgKgLJ3xK9r73w5Jj3rLLPlq
	 vkEBCIhOlRIOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928D0CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176133239359.10991.10715469790915466608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca513879168936229b1826decf8c5495530c0aa30746c02f7e20202f88cd6b77
Date: Fri, 24 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761332393
