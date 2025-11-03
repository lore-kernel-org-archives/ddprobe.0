Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D5C2FD7A0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762165794; cv=none; b=cU0W84iGxt8SZoVhBv3fujFF7b3OBXDfFBIMIBJuAmHI0yYWF39gqWmp833hYc14q06w/IpECJlYY7gYQByIbDfaWJ3DL5wQdQKgCYvZHy1CWtPKbjo+FOqD2R58ufHTI1w26+YZZymt0gNVzxGTIp0uuOjxL81hzZewp9w4W2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762165794; c=relaxed/simple;
	bh=hVIPAGDs6m04LPAso547PvvP8FUKou95uCBl6td5WLU=;
	h=To:Subject:From:Message-Id:Date; b=e/I+MKpLH4/rokIncweQ7meK2ZGBvSPA1aqvESsL/hRJX7DaF7RWQyTf6YFur0aFNfQG8JoSbvMrQCv7vgqYW/YlZ6A85y+W5Fsd6AiMlitrvpYP4pN3/gItedysLRFejaSmcxCj4PExzyq8Yv8jcwbwV1ySiOuL0HYAn1RPuQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baA7s++j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baA7s++j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B179AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762165793;
	bh=hVIPAGDs6m04LPAso547PvvP8FUKou95uCBl6td5WLU=;
	h=To:Subject:From:Date:From;
	b=baA7s++jHCTgajF9tP+rNj+qSzUQqqRB9cHVvxnLf1CH7JHRozyyUeD4oVWRYqpDW
	 KN2gn8o2mE442RemwDaZuUtqaOb3iai9mc9PtrK1RvmsFj426ac5XA3Zatk8IeCEim
	 SidslDKhR4mxbX/xNm2M2VhSS44s7mN9Rgp+vz3yzNfLxgkSszwwVT6X3L0DEGY+YZ
	 cNcXT4lSewoVzxAQm62GNopKL29as963ukBgp/KcRGqigNGbVcgatiXlDj2Q7BxC9+
	 OO7kvZjzXB8flr2tvx9UzRhTzQuXjP4cf/y6Ov6ciYhmrPJSPjqbEJGrk9BDhbtr2F
	 XNxwceJLNXOFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0CBCCFA04
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216579363.5572.13914813835187193503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e17c3fecfbd62e92596fc2a5353a5bffca9dff4f060c94425128a8cc49c886
Date: Mon, 03 Nov 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762165793
