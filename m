Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187E9148FF9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736619354; cv=none; b=uvBl2VSIhmURX+bHKjSN0WqhSGmfbj6zd4edcdjVQ6x57wbN9wHizJVoShz5ER04R2Ysec73MpYIA8+fYBqtqUzAgXLMx8G9SOUaN1mAanaxvh7xdF/nwBqs6EL3pWFg4C8h3reVv5AbHMucpYHSIsx0q7rCK/O0NdHZTp3+pbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736619354; c=relaxed/simple;
	bh=NpHg8PbWvE8Lnrnia/mEIPz955a0BN89cukE6ArCoSc=;
	h=To:Subject:From:Message-Id:Date; b=I2rgTdT0aw7btTxEFzy7BObNS4tmUwVbgG+TI0oUr3QLSbY8xXjuY+jAxKnrwb9klMY+0VR8iA+JihtjPcQ3HAGFiUAvL/mR8T+BsU8FV63gp6SpQ+6/ubtHJK/R+6dAGIiuXPcogdxj8wb+M/JQcy5pcBjU7fCNKusyESQamsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9/BJj40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9/BJj40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABABCC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736619353;
	bh=NpHg8PbWvE8Lnrnia/mEIPz955a0BN89cukE6ArCoSc=;
	h=To:Subject:From:Date:From;
	b=m9/BJj40mAYa+6QHVfJdgcOMhoVrzCsuV6kf03RCxauWus9Ho4quV/5gt/vE9fOx3
	 TJpaA943LdDN0iaxR8cblmAalILZwpP2Wup0XS+Y2pOVygUvOEHN87+BcRK1VviGpO
	 sBH0/1OwHzw/W8eYluv9gQkbbou+m9Bi+jD/J8IVOg45koJ0n+u4FUkJyXqhcXSZ1A
	 pkFsx/y+XvVPecc7dI8tk64bht2drPSVWgHh7JUopDXDdnndsgkMbwNTfhjRSwEEMm
	 xdnlhDIbQsSRFnixxkQ8O/aoPAKTUKP4fCj+b0HGbVH+AQRDZgiZh5Q9rBhGKxG4hR
	 JS0HDp4ZAZ4SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953F0E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173661935360.4156.9985431413902964064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f8a9f803f6673cad9c3606dfc2dbab5d88d75f5957005329f4f64c80520491
Date: Sat, 11 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736619353
