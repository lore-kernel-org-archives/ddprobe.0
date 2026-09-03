Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48ACB402B8F
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788421834; cv=none; b=A9JpKpU8up9yiq3UpwFRWNBCor3JCGe0hN/2+bBYa+WwFRGJuc/WKw662/7bIrZPr6umCKP/rFGmT0QxWUzaJs+/0lScyVv5eSAk/Yp7qpApR+BwCoMzGfd9dU1WwT4bsd2fOeuY8gYQIVFSFu7GRAtqrw2C6YgRexDFvbXEFJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788421834; c=relaxed/simple;
	bh=AFr9K8PrBpPhb8rYITTQHMPFznl+pmVc6psP2q4d+mw=;
	h=To:Subject:From:Message-Id:Date; b=BidCn3BxA9nf5iDk90UtDu72ZX0eEybD4rgypxZHzzyjxloDPNAetj1p3RykqN3kRFMhcWgNRmY0KeEcc9LdyLrNgS0Tt/56nn0QejddqCAmVq6iD0JctAaeFIIB5I8Rkgul+3XWEMhVTbSpUMoUm4PWTwxl/D0jk60ZWmNEJ5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXD4z9S7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXD4z9S7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C358DC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788421833;
	bh=AFr9K8PrBpPhb8rYITTQHMPFznl+pmVc6psP2q4d+mw=;
	h=To:Subject:From:Date:From;
	b=fXD4z9S7dmvjIjXZ4Sg6ChY+IkSJw4Ar80jHthRjWJlS2YJBLY7XreiGjp6SQVCWz
	 QXEDxYeZlqz6y1SSoFFIGpWkH0OfiXZvXma8FH/hupa1lXCtNhNZcca/yUOqsmqjIu
	 j2lNu65u8+dnStVVrv8wgxoCcl23ljZd7fxe7+b9isJH1BR4aKdtTEO9LPHz5RcKMn
	 RScsDzMh/Wn6jHEkSD5GZDH8pWelwiZ9tAbGfIlpatqajqhuSATHSf+W3tJAiUM4Lk
	 R+T5DBFLrCPeUBF66vu1l/DfgsXi89Qb8eb1YAQSCLs00B6jqaIww99QFtpJVZCnmB
	 3/C0vtQGfg/bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD72C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842183369.1484.13537034343549039126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d97716a682bf56e7978b30b54c1574e2af8f1e9386d74e2254c48b50133e580
Date: Thu, 03 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788421833
