Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE49277C88
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766909634; cv=none; b=nBVzXO9mIt+xiaXM4C9fW9bGjR/Soz8JqX1NsjeT/i/f9OCRaLj4F+9/TSvGZwg9YsTYcfpH2lhGgvDhIbxxduOqVt4NYuWGynP2MXaDvCB37F/USk54pBwMWa7WtPyd6uMlUSOiWb/dlk38DL1kpQFV6KZuonlbzXH0qLimjzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766909634; c=relaxed/simple;
	bh=TSK4JOUbBw38v629UBeyFwqxGw/l35RIRRgHHN5vXAY=;
	h=To:Subject:From:Message-Id:Date; b=bfFBtpbXXldCvS6LNOXBugbndK7SE9Ftf1ZpxPYPkqp7XtmRjFKEVo1pp+gmp+bK3LxPPQgP4G4YGLvT/3VSZbwoWX1rtZzsFLUaAl7GNa3BhhOE3v5T1CcMSoLjPWj6nVMn90UMMUKfehOEQGOYp6tcdUfEYBDcKp3TtMArQgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrhkdyjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrhkdyjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B023FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766909633;
	bh=TSK4JOUbBw38v629UBeyFwqxGw/l35RIRRgHHN5vXAY=;
	h=To:Subject:From:Date:From;
	b=LrhkdyjYKaBShK0hFskrSUJTSXfaYf7e9YY329pXN1ZEHprOx1jBIUxiAV3ZFqHtp
	 ZuqZ1bKntXtXh5XkTZWjuHdjeOGB6GmHmZpjU4vObCGf1pfuAA6oallVF2EcB+opFL
	 l+rRB3CDb/yncfM0MPS3O0/3wWda078oQpgbyLOiJFVL8eTXFVJmSUlHkWVl3rDali
	 hR9wKXaFm+fq49HmWVySwm90HAGPDRHaWCNuWWQhWmgpvuiPFcJTGoxfHHZH+Xygdt
	 EkWY1u+79hJx0lxiq5QYm6IXGQAD39OXz74l3A7r6cXVgPDOo1OeUsUZyWufN6OAVz
	 foFTFuZePjiAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D22D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690963359.5144.10004987815477706830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d28020f964f9d1b5be2e47f71c0103ca3b9976a0602d4e83a87cdf232ed84eb
Date: Sun, 28 Dec 2025 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766909633
