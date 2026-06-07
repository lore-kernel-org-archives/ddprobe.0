Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327A22DF68
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780869874; cv=none; b=Q1SxEicybZy2lcssmzunMlpRbNuxgD9s6FO7VQuIoREi8WGY9VfcpUjp3Xyw9PVl4OgEOyI2ngItVzUw8ZcJarwBl2cZJv8Kys4Ko9+uYiS06DLsKwiHOiZ8akf3Ffg8snvQJrt1wBk5ym4egsQ90jfseSfK0whTuPFJF92dlDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780869874; c=relaxed/simple;
	bh=UkeN3LVEJfoR4bj7VCE8t4s14zg4jm5qF9u8xlMmBI0=;
	h=To:Subject:From:Message-Id:Date; b=k9DQAgGv/ir+4/bbWfzDydBpEcbgYx0s7CvTPOsYLr2GDkHg7DR0AuitdVFbkdn+HDXsxOswFOC7/+NALvgj/n59Qodklq1IyJNAHJ7gll18daYGnUxhXFm3EiWLy4B2rXRXlpgne/SGRtx1fvckJ1IXv2K6n3/oEzoBRcOhPjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emGs8h45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emGs8h45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6386C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780869873;
	bh=UkeN3LVEJfoR4bj7VCE8t4s14zg4jm5qF9u8xlMmBI0=;
	h=To:Subject:From:Date:From;
	b=emGs8h45nA9vZXKLN2loind/ocY4z/2rJSxzC24b/I3IO6Qp13yu82WAhXOtyPMd6
	 HelYScwgwvLEyzqClB4YfLgcOrEv9d81JH+vDcICnBHM82ydXJ0RxwQotkVbtSlv3K
	 gWxtXDXe54e4kWAACzCDTCA7qQDFYBy98bH9jULba0QCl0SiRKmM+yzar8NxnWmBYp
	 n5JBhYGRaXcUecm3Md7Z0udO9wpLxJy4crz+kw1vl0SrsWaZVCOUiyrllpIzGC2QNu
	 xcGev32ANJTU6ZGVPdTG++y8pptavBLqxlbXXk64lDLStEjG20Fj1sAZ7+nrd00VG1
	 QMG13ULe6gg1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC25CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086987368.30480.1483395774068778121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98dafe75fa19025edb8ff6342d44644866deb4a5f9cf73793575720301d87a7
Date: Sun, 07 Jun 2026 22:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780869873
