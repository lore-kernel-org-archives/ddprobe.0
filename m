Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765A51B5A4
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 15:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718118503; cv=none; b=o+M9BJ9Iyw728GM5UHTFJ7vntPTECQcuNvr1lOOKYCXXeiQyr0c6oS2w7EpD0+Gd3vLYg1Hf2gberdebfLgmB5Am8GIpc3DnuoQYi1F7JI9b5TOmuJyU3/LWxB+/d4zp+Y3a5U7LcmV3vcwQYGRjiKqim6Bry8qllEWWbuen/GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718118503; c=relaxed/simple;
	bh=weVpZSu5uWuovmyb2aGtElouPDyOSRH1/oYqwJO+ggw=;
	h=To:Subject:From:Message-Id:Date; b=pbJZrkuvJlTFp1fr/g1325Y2/vgCR//0QbATiSsn0zPuotK/Whu3Qq8ouhtrA+Sap6w3fHNcV0oGz76tnzqAY+5l0My/ZzlKOpyzzjdHfwfrmQ1UPp38bGWfnbTHsYskE+HgULNyv6C3bBRIlovj+uZyqwausGIdzgdqH8iWhA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fouwSVfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fouwSVfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA06CC32789
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 15:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718118502;
	bh=weVpZSu5uWuovmyb2aGtElouPDyOSRH1/oYqwJO+ggw=;
	h=To:Subject:From:Date:From;
	b=fouwSVfazgun8jx/k+fb+V3SjXtJZYfR+P2tiHqg+4lVgcnKPXqeopw2vmD1EyYLJ
	 pU02lo5dnCqs1fbfPJb3XehJbME4ddPBOUuOZq5NqZalYzv/M1887G6U6+F7gGDsdg
	 GfuaHxi3YN4jFKbWDpSR6PmHZ0vs9tOMDsz7bGZtyVdMSy/ULdU813X2cvo8c35UUF
	 gX1w6Zoe1D0KMMGp4j+c5GVQCq8IZKPFJTZaRya2ClWRxwqzSxwVML6loFA79M4N7h
	 UpQVAnVCYXqU7rTAhQhlRdkbn6d2uVQxdA/bW4He0+l7SkXxCUxV7P8Zqp0Ge5rg5H
	 OJV5ESUo4gjTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFAEFC27C75
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 15:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171811850284.3827.1910037351597048772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94ff31e4e6698e0f503e0710009fe785d44d5c19e0db047ef96436ceeaa94cf
Date: Tue, 11 Jun 2024 15:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718118502
