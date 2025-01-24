Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444A227726
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737745554; cv=none; b=Ba0Fudy0RSmHGczZu3skOn63aS8KFOxas4c5RY8Vysgl1OjPnoc7w/qxZ6+KrVavIvWQjYUMaPQUKl+akNGjIgZZDwLuADwzSenruY0x/aD2u6BkDSf+QLcG5S7cJv6qi1P5aPQST+tp6LsW8Da4VXVpcAWyMvAm85jNPn+RgXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737745554; c=relaxed/simple;
	bh=+SJDgk/4rcFWfSUoTuJKStyNm6bazBR3R1geB/NmnAM=;
	h=To:Subject:From:Message-Id:Date; b=tKYZz/3CNoyf0iMtqQePxwRDsq4wVZze/2yiTGANRUOwxLs1nVBN+jHeItHFSL2PNGuRzPGwCpkeEMdppIuIGJIT3N4K56D2YrmzxahjjZaDv6HM81g7eFDY1FOCjZt/cscWmZPzwU+3+uc5p8JZrDHpCHK1UlG0THuprVYc2aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDaZAcSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDaZAcSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ACAC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737745553;
	bh=+SJDgk/4rcFWfSUoTuJKStyNm6bazBR3R1geB/NmnAM=;
	h=To:Subject:From:Date:From;
	b=QDaZAcSP3nbFZ9X+P/DSvkyk/A7InkRsYhi23Bk9EiA7jltPT8ZA2sgOqtLjQeZHd
	 4FktznuUULBifX9zpDliBA4k8n35ymvtZX/Q/LXdUFSsswKXW5RCUOMbN0xPuXCrQc
	 e0YDDre9kx/fMk8y89t8ej5LKgOr7l5fhG5muvIUXS3IF9OGZcyQ1AsVWkoYuIM7Mj
	 X6ROE6i7vEr/e++KRrJIe4BAeXczs7AsrdhNmab0dRTS54Q2QKfbOUWXiKphhn8TqE
	 iTSCcHvCNBMImdL7P0QyOyMD7aMllSiMOZm01wPyAfrBjd/EJeOsaY2VtFQAV/gLy9
	 WtNJtm0jZAyNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949F7C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173774555360.8660.5222351508127616264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6ba242c44ec224c4119c53dd2661e0b0feea670a07fb169c58e3b97f4dc61c
Date: Fri, 24 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737745553
