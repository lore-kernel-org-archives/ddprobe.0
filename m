Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389312931E0
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785708634; cv=none; b=SDILNR+o6Vipinl7DxOVaxJZubjq5rvhhqPNO5OqTGn9H4ufxQxfL73WH+SX+AnHE/j2bhsq7EL5zOUGvL1kFX4CbXLMdvOh8f9QdGMqX2GaB0EJIKZ2dALjUxtPUto5kohUpBO2HHVetV8p64O+qAMtFh+6C5sHcXbZ5IHBB3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785708634; c=relaxed/simple;
	bh=5IHZmS7nCfxe3ArGt8cMADCjcufXq/mZ4lNfEnEjhS4=;
	h=To:Subject:From:Message-Id:Date; b=h2h4ULcPi9z34oG4I7E9ZFhOqidSP+RCXJL3QoaeUg5NaY2EE03FDJ2f5V3W42NtumlXmoaEdsaMbgE/kCndgp78Y4UY+j9i46kmeehJZEH1dP81po+ALTlbFt+6CSjadAxeTYkEeya3qfWPXzQ+HlIqn1ZLurTz/Qaad1Oj/7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXKrC7KK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXKrC7KK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C268DC2BCF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785708633;
	bh=5IHZmS7nCfxe3ArGt8cMADCjcufXq/mZ4lNfEnEjhS4=;
	h=To:Subject:From:Date:From;
	b=mXKrC7KKJz6cLy4NGYbuVoT/TMscA7d9Z83RUoAFQEoPR2t3PsAHGd5iumuR4Ewwz
	 /V3ZL3DR5aBHHQU6Wr3A8QoSoaSnZ+ZyCrgsQVpXcyXfFcqCSwcJJPpZfsbSxvn4Ca
	 1qIT+vmtnw9qTupP8KoXUST0I9VYRgM7b+VzwoNZKvMOBTQrp5Oh5ajrkSjdfH8CQ6
	 pjAmTOKfQjnKsL7OJLVKywYQz58G2YaPKVlDoLwX/R4M5lTMACASV+GTlFD20/p753
	 FBgX8Aa9XLdRmhsJtOHz7WsfUz+TDEyTnk45KUB8+mDNDdeMEMzVuecdvoBZwfMhTV
	 t+9nn63lRDgkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B0CC55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570863368.21494.2741103897002015615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c90741cc8f09708bec0e1dfe8218489fc53378f03f36caa91335585e1b5bdf9
Date: Sun, 02 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785708633
