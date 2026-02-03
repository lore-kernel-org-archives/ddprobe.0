Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E60086341
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770133434; cv=none; b=IABIsyRlL9mfke+SJbtn9hfoScX5y4Pric2HMTmW77Kt74lFKwl/shuXmKgTPb5j5R8OfZQIhKraqoJmA0oLmNoe4eLXMcdU2eIZhKKaYtBK/nwhd8/PtpScFRAUkWGcfvr0uP+9Y202K2QdFG4EXSAwikt6LkZdjzqI+P5lwPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770133434; c=relaxed/simple;
	bh=M5rGTaxwRmrHoG400nxcYYY6Iu8Rd0SxSoCJVNxk+1E=;
	h=To:Subject:From:Message-Id:Date; b=J78QaOJGyTJQi6ccb7k/MOgWKAL1R7ZZ/KRWqQ4RREO6XifCG+cEVf3AY1yofepMMX8LMB/H9DcCTSmAp3CXgvTIMJXd6ZpX2SdLUZS+IILIf5hQ8IjWPnADKitZGYL6arNG1PwkTKdjJpIOntVaW8dMzktlTLT+MfEAkh9WABQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hneo4WUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hneo4WUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39A7C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770133433;
	bh=M5rGTaxwRmrHoG400nxcYYY6Iu8Rd0SxSoCJVNxk+1E=;
	h=To:Subject:From:Date:From;
	b=hneo4WUNZHBAbGnQMNQLydQtqxW49KJWw08v2qU3R4fNoTLL/wSXoD2///UYG3zxH
	 fgnpQUif8Y3yrUCKAcrFS5y9wV+FkPq+oY2W2woivk/a/PU9qUialGZ8hOs7P3FPkD
	 o3Pvtg9We1jLp6dwWo8vSuaMczDHquZP2y9pNRLnl7xys1kuJQphKQ9OXKSwtbGGej
	 ODO25e7ng7UjS6nclS1k7ma2eBUl+QBuYHAAK5YRhWqwsH3PGNFM4SisyQ1bzPuUgw
	 6tX/yfzqi2LN3M7fldKdfxrT/pdxTKQXgFcLvOeQE/Hd7PkxevfcTJpgiwpbV6dnYd
	 2TptB49iIHT3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC9EE87842
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177013343375.15765.11433147617580226385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac1d6adb0251d169f73e02fe8a2fc6a98a3c5c0251cf15dc50e1eac182a5f70
Date: Tue, 03 Feb 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770133433
