Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6093613BC35
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 11:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719746063; cv=none; b=MvK+8Iaevuu0zjK06qGEi8iJyQYuthhrLcf9/TbddNw1y/6dKSSBHJtJCIzwlRKja9BA8kPy6JfXW3GqDzg8AQo9OuEZzhvMxdC1u3++WAloDgJET6MfKCJKKDEHZuYaESHDDAXcFUvv5owJ3UMTJ1CuVS9ANktIn33h2XXQHlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719746063; c=relaxed/simple;
	bh=EZVDXocfOOCfZhDwXa84lyiglueNvaGfAqZvgBo7mU8=;
	h=To:Subject:From:Message-Id:Date; b=l39hKheoa+j6pPY//a5Y+Gy0pzuu8iOtpkwqcGA9PW9iEnCLThoEN+xfCPpzZaMo+26bONc0/UxNJR2L3x4+/VMURYUVUuK1mfEvBay7uUq1KQBBcrO9qS5VyO5SRruo+QMZ3xZxGLg/Ycpq9JO3PvPFa6cwiN1iI5JYn4ElYfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/BlglQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/BlglQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEADDC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 11:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719746062;
	bh=EZVDXocfOOCfZhDwXa84lyiglueNvaGfAqZvgBo7mU8=;
	h=To:Subject:From:Date:From;
	b=r/BlglQGEWrmQpNwU+z27hWG70HgUwK3FDXRR9ESIau4330w3cAR8+aqxKKU/jUxp
	 Xk+I1PNaPoapVNSmWW2IHN0EuaBqL9YkFJY/EeGqIxWh5v1ZuaHnnc7AoS/T/o0cs0
	 nJpnqC4fWZFtAgHo3zQSeKpKzcEVVUV9S7dtsKtIlU+WxchB/AOs4fFDRwqzknkGM7
	 03HhivYFlXj6+3h1q94CJt8ATTsi5YEx/DiSUSk+61/qwZW9TM63tivEVgx1+TSTrj
	 TPA5PqCyedLjwJ0PfrgLqznH9QYKy04woP14w8AOvQwHupgLF2T+e5plvL8Y6+qgNf
	 7BUlGPpcfNQDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E7DC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 11:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171974606280.32065.1699882838657088329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe50149e4c0e2541c644268bc8641e59f8dffe5d1f625a87da6ce58e713c0be5
Date: Sun, 30 Jun 2024 11:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719746062
