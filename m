Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A550286D4C
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759363194; cv=none; b=Qa3OG5vVg4/8AYcUURwomklV+8cBbbQ26US+u5opIwn2RyJFJBBmPy1dyoRXnLPHybCo0ghj+0QGEiEYZPnEqacON2Xl2nR8eYGs9ZLaSk0ITu1h60AA0SoNG/h2toGHyRs2LQ+hyxhAoPMQzraTE9bx5PKza+MuBKwNP3T4bOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759363194; c=relaxed/simple;
	bh=Soy6POXnq9Ba/xgsMckKW9hpXMO4V0wW0qBCvqkDlEw=;
	h=To:Subject:From:Message-Id:Date; b=dvQBs1+QC1Z/JaiL4EjAkbKODjfcuBWZG/hrND3aJPZr4ZcXG3+15N4mDkaBICOL7NlIIc1cItI2pANd3pezvJUdePEy/02fHeFE2GEL2oM1vYsve3X6AA/29ZTVWB/y2kFY8W7tdN+edNhMzY4ZnnnDr5HQhgJTCozDz38wuMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKsHSf+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKsHSf+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C34C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759363193;
	bh=Soy6POXnq9Ba/xgsMckKW9hpXMO4V0wW0qBCvqkDlEw=;
	h=To:Subject:From:Date:From;
	b=rKsHSf+MsfjJ/BBa8tBLHXZ1qEHGWJdpbQtojirK0lZPEc5SPL5A/PYbzsGTzE70p
	 dAB4OkhanSVPt0BfEPqB5B39hA96wOIFIDdbvC00FQirFMSea8V0N5f0rH0PnqG1or
	 YwULshv7u+aZJ7Zc0K1TBhgbqeKoQVXaQ0kBcAY6OW8vwkRIAG/AQt3jIOua4GAFsn
	 4IP7BS6Xa3c3vh+XY9UOqnbS+tSxtId39sf8q4+TxM5d2GuBGS1dKlA2u/b5X/awRw
	 267STWLdRZG1/ujvyaMe6tdQEB69OiZcVt593r9dWr++LsAjSf02+5XOot4nqDy7eq
	 ukSQ852dRXg5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B4CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936319358.9361.3127387811000277419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eddcbc2117329486bd73216c18340c95e5c3e1113da7d9360dc7673e4e70e40
Date: Wed, 01 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759363193
