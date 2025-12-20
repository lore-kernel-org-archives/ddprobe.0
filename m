Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330CF279798
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766202234; cv=none; b=rSQvPzC4PQ3B/tU9RBwaeE+0d1mFgeAHBoXyslBSxk2eOrKKKV+NSydmrPnz2mMWO1QSm6tE7/NfQRjqKvJxmX6hb558IyjyQcqfo3bP7FhleuYVOwlTrK561a0w6tM+d8aimAvYqjwB5p8KbMP94X7PO0rzpYlvuBiB2IvCokY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766202234; c=relaxed/simple;
	bh=aR8709VWYZhhvcU5TUHsj/RFVgy6aykTkSXzS7/Glgc=;
	h=To:Subject:From:Message-Id:Date; b=ckD8BuGMM4jmto2Qj/A9vyve46r31uYbEqRj6D9/lOu2fvYFNlyoyoVD1F6p1kAFlxfzKr8ko6RJugivVFv7V8e+ZsiI0hTkI2U7g940Nw0LIzw+aZwdwTy3R3Qk9+L6QzkZLk79QMRBZkc+/XOEOUvHuY9G84Boz9CGpqB2uRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=th5rjILw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="th5rjILw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64B0C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766202233;
	bh=aR8709VWYZhhvcU5TUHsj/RFVgy6aykTkSXzS7/Glgc=;
	h=To:Subject:From:Date:From;
	b=th5rjILw+QnIMyI2P86UJN1aXVfPgCFkFPayc4ir6CnXDCN9el6UzobH7QN9VByj5
	 rKtO8rOb6TtjIs8JdBoh7WvscYgKriVNmkvDW+OGeWOfk10Re4aqhiFz1EOanNRflO
	 /dpOedOuFeuXLIlDuetF7aA4hvO1Y75OaxuDET4BSNAPNli+/aJU2b044FYZq6EFKm
	 zsBQyX2XVsZQmXHt380l3Fn+iNr7R8tnrPZelLxJVbplJmiPDBD4tWcQdru/wXCOHp
	 2CNL3Cypx03s2akagszmKtDtbriEleX4CWklZzeaBUsDsQFlRlDeOmoddOrWXRMv5F
	 EEurRtYieBbiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE3E668B1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176620223358.7335.15460042389048706864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d57efd525ac529a538ebb7247ec71ac7397dd7694272693258f70c4f7632f02c
Date: Sat, 20 Dec 2025 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766202233
