Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2522914
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737597354; cv=none; b=OQAjbTF+Qh7s1C2rDTd1bSuy2cJLIybFtY+yTBUsrEwjbae6u8SfAWBV/nysxS/UWsJYv6k5F2UetHzI8qHjhhp71dWgYInQ5qSmpWxaV1KEx8YSCM6gZ3xiP/cdtnF//CLcHxHh2qfk0zCuyzYwmtlhOZXHEsKvN13aANhM84c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737597354; c=relaxed/simple;
	bh=1B8sgcHzmSF7G88F4A7WpNXBaLKiDVc2DeMnXqsjzIw=;
	h=To:Subject:From:Message-Id:Date; b=cXM7eVVuXIlt7DvZvz/6E7VRQjYokaRWEZjrQ0X2IKox0e7e0XzVfR0c4ypklskIN/6a3/t7DXWwjzaUHg6CKHp5Uju2HpyEud7yoAyFe7ghyx+9mTlCu0ljb77QjTojcTVJliM5kqjDMpVuO2D122L80O6ZO3arK6b8gdV8Nq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hticpphu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hticpphu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99A8C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737597353;
	bh=1B8sgcHzmSF7G88F4A7WpNXBaLKiDVc2DeMnXqsjzIw=;
	h=To:Subject:From:Date:From;
	b=Hticpphurs64UY8xjBtrBu8jdia2/rjCHM0vcb1lBSaph3f2tx4pmizdEdfe6dQ36
	 uVMp/2gGCUc5BnhP5UZ0h8K5NWRaV6Zz1AKV7ksvUpoMwBdXnrNfYoRJ1ZVr98VWdF
	 5+zgOtbQZ8EE5//GJC+CTmxKPbxYbF+erOu8Oui8PsQzcM9KF43ZVJxf/4O2Wf+4nc
	 cs+YR08/X3fFLWlYLXvGP0dnR93Vau1WD26jZDE1Uk1+ACnhtD+9BOy1LAwDFz1Va/
	 hh8/9LroW/p2zfOVltjiUqg3CH4sCvkN36hBft4JYa9yTS31A1bP4KkcK4BXq42ixP
	 HG9zcQJ2bB5Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9631FC02181
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173759735358.30263.13060975809170243630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1fafec159bc591839a747aececc03ee94e084cc78812ea7363f280fe8bf6446
Date: Thu, 23 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737597353
