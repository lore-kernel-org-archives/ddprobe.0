Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD4F270540
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778070454; cv=none; b=Dmr2xB4rcs/D8xkigdTqgKaAa/pUgeHGlCnpb1diGgOOocDQSvt51ox87lDPKTYUQ2RsT66zv0Zo4BJ+gI+FJ26dTjQGus06MkujWDifCwOBvcnkcl3oE5Q5vRUcUMN8aOONs0PzJOEHTC3o0JNs94hfGsQmmvEpDI1dNnsTmek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778070454; c=relaxed/simple;
	bh=s6IlVzFT8n0mmmgaK3Q8vRJkgAlCa+4mxyCfT3NlwcY=;
	h=To:Subject:From:Message-Id:Date; b=eeMjrA3xMYk3jQcyhL6hJTkWK7L5MET+ZqVfVVJw1jBiAjp7fiG1wX3fGC7JsSy/LKfUIsdEsurXSEIB0oyUKTfyhLE9x6ffm/d46pmxhYFvprQ4GbvasWNW+UgUwi2Gi/P/p+KVbjqXhIg7K3jGjW5P5wuDS3aqgGduCprEqH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nz5m7ITb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nz5m7ITb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2E6C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778070453;
	bh=s6IlVzFT8n0mmmgaK3Q8vRJkgAlCa+4mxyCfT3NlwcY=;
	h=To:Subject:From:Date:From;
	b=Nz5m7ITbh8QSIel0eyMGuCOPizb3E7NsHiT94JuR/9xj6I/CelW9Q3ecBlYJ1nw/L
	 E9zBO+Dz58f8ZgWpPf9biV/qWmgHfXKf3RApVBbUpI+jhhL3XVIhIx4HKi0lF79B5t
	 keUxh78hLXue4lcjWfD7AdeqxEDguO3FmmmYHpeznMKuomjC7mttRLVPGsA2yevnWi
	 US3yHv8R/d7a7R3JoVxyZbkatYclpxZKfjoJA0p+LHq2UPp4lqt3lzxwz33aDYb0uv
	 sQuI0EKShOftM+XFbuQVFUzuteScs/gzKNcLx9JyxjbF7GyCW+PBFOHEaxvJGmmut1
	 TbHqZ98EKIbUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8AFCD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177807045369.16804.6188851672068232516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c6833967a98468e207f3d85f81d14992ccb7c07ac6b5731fad4dff282a8efa1
Date: Wed, 06 May 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778070453
