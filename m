Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0781F194C96
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770140634; cv=none; b=dJMHr6YUAXHV4ldxlJugZ38L2cj9vcNfpMjeLfipwqns3d1SIzGsXE3QIFU+7E3taWvXu9em28ZwnHOmi3ydq7788/sWSCYKPls99di71PO4r2q+f7JBrxakuvqHJHUaeWRRNe7zSkkIIlY8dxaBty+3OIabZYoydtv5v3HjjzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770140634; c=relaxed/simple;
	bh=9QFAh7I1yxzhWGgs/G/g1lVhKwUkKzyrxo2NFaMkWTU=;
	h=To:Subject:From:Message-Id:Date; b=ngrnTGSSj2We2FqESDpnuFMxTwR6+q3bzMGF5m4X4AsyG5c8W4R4q9H/3AE/RdIh7nWDfnN13LPbQfZ42Js2pEsK9N5Wgp8KUi4vQLW87VpX2Kde9BRnpVxA3Eanf2Vd0PG1nDRdNWwRDXIrGOXHMlYfroupWFsR4UQUzXOTnto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CABhUdV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CABhUdV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3EDC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770140633;
	bh=9QFAh7I1yxzhWGgs/G/g1lVhKwUkKzyrxo2NFaMkWTU=;
	h=To:Subject:From:Date:From;
	b=CABhUdV2/gLVl0zJ6xuf20mFEK9yRgxtSUk/gE/c+G+NClyLEfUH2/+aG49ton3Wb
	 13XLJFPWyKeqKQGgmM10EONfaPjsAfX/W6aDNZDm+7WWkGmLpCkazyaD3gF4xT0meC
	 573hwE6uFkpIAwYKO0q0qedEMtiXGmKrh+mvK6mvnejdv66IYDXjJkcGuV0p8FA3yy
	 qtZLMrDItb3t3so6c7fR22i6qhcEo1dKOq+v6Fs0hZyC+oTzD/J6PpDgxvWmJwzCWn
	 zLVsCx5FqyTtw9ll9TUhb4N7WvTmCoDGRnW5kvv496sJsJ2CnQbeIktAwq0tNdiUu9
	 TVTR7Vl0wNXLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977EAE8784C
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177014063360.564.17494146469936854997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07bcc79993c88dc114d2d03ec451c1474ef791d47e0996df7cf1cb220df8ed3
Date: Tue, 03 Feb 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770140633
