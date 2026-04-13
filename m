Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180933D6CB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776089254; cv=none; b=n9G660YHz+Hzcr9tQD0DFHtOdKu5pui+O5PhUIu1xQ9Cim8NOR6USMFHkQ+ADFaIYQbr/Ckm6ePXFvg4bgf037MxPp5SY/RRsMx9FO/JisUFea65H0C07gEbY/jGDfbZF6kVupDYNSg8f3AQBnfBm9/wWAZC4lvVksLniW1XIXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776089254; c=relaxed/simple;
	bh=py/URUvix9d+1HZ5vxM98KvKLctrbIYOMkAyiGa5syA=;
	h=To:Subject:From:Message-Id:Date; b=mFLBDc07Rd3G+sMzDII5DsTEE7t7UN6wPr+35fXPl/Cl7rtUBqo30LjblF36o68PwOU4yVEJ8jCO1MDtCNTsSOvUny1Lc7KlBMeQuJwzHJs5HkWLwu+NGIGsjksD5Fc9WAOCwU3jdi8lOLK/P8wD/ZBUJzdFjacClTZsv82UPz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/84dDSl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/84dDSl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB79DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776089253;
	bh=py/URUvix9d+1HZ5vxM98KvKLctrbIYOMkAyiGa5syA=;
	h=To:Subject:From:Date:From;
	b=V/84dDSlqywzMyPWqmZOSoMuhTvXFhCgVzzsXybEZ8Iqn6qZXjJIbfeGbwgkCyPm3
	 mBKwDBfdeigyGK8pw8f6eUDVw1hi870ofzY3BDNo7TtqYIOY0eKQuyBisatl0RMaUP
	 1n0mUlMviCu50QMQMFDfUztsAWLPa9TXrOyh+tv+7Bvtmo41FP3nNiH0hvHbQ7UGUt
	 d6lp/vke1ey9CPa+INfbnbJH4AKDTFDE5vZ2GwmPPQIQ1oAuWq4fVFtMTrY6cXGFx4
	 FDFE0gv2J1DCLCEt9KHlKb39ZDZoeEky77KeaT8sb9iAaR5n5tShv0AujO4kQCRb97
	 wwPS5pR0ZH+8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0FBF34C54
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608925368.8545.16630588023408550261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba64e2bc2a3cea9188690af1b1c14ef3b7d604c74c53ade6bceb3f80466b288
Date: Mon, 13 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776089253
