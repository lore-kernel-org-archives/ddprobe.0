Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAA138F932
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773665094; cv=none; b=Jsr+0zaRNP2RXqDaOMpqWnGDE5fFikSxIvQD+g4b2nzxPfA28f05nkwEnhWRb+OJlK73CAarI/gEi7DqM3Tc1CMHsT8eZNr+GXymJyGylYHj/sRkArZ2i7TGNyYzOVzbq90utvOS/HPCepqGtb5/zlDgy38H/YStjFhRFCqUD6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773665094; c=relaxed/simple;
	bh=+eDWt5R8uLhY3HdZLVFLOzJkIVYhUfYOdnGqWXbH3Os=;
	h=To:Subject:From:Message-Id:Date; b=YgHHJeyPzO4hZkIMgOFPgJBwHEIvInGY/GOyatgNLxYnJ++a2eMJNZ1OsbbM6kKiBhC2zNC+sObd++xyggdIKfdcBmxHBdsfyUyO1XnGtXS5EUXaOJQkWkcIqtcDmCvZ+bzCDRb8dK1ejSWcPwkFNBtycI9M/AcuQjoszx28hJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHA9PR5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHA9PR5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E12AC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773665093;
	bh=+eDWt5R8uLhY3HdZLVFLOzJkIVYhUfYOdnGqWXbH3Os=;
	h=To:Subject:From:Date:From;
	b=mHA9PR5Pk/8R42RrwVyolvcdhltSW0vkEW1XjTbhg3siQaWZ4SCSIU6U2rE7VokZi
	 UDFPchGT0Ty2z4h2j4e5o8E0K/yDxMOW4CTFR2beeJ7G6lHusWZyezj2cEoBOF0F63
	 VwdzvTCRGw+JrKD5Uvron80AW/xfaapkjSm+V5E1Gui8Dr58Po6lJ3YE0uwC0EqG5N
	 eD2N6ibDAPrc/YONSJu1NZw1ko6IHhT3HQeNeYqY+9Bjb0vVdYK0aPxVXAQLj07SK9
	 K0tX8iwiYGjEyibLNPeNtAQzH4P38CJ3dqpRJ1NVEUNmLZ0Qi7f+y3hQrLPR28PDne
	 D07AUsHCyrf0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF7DF506C4
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366509357.26297.11850915582973141680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 705a50154216b81eafc90d4a410144d1a7377d33b4d2bcab6a95440d3dfceb69
Date: Mon, 16 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773665093
