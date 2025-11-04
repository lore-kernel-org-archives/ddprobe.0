Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2B1313534
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762295994; cv=none; b=VC6n6TNs14RMY9FtvyjoQccqBnEow2IQAkHtN/U8qZ8VkFXt2j2fxK3ssbDJoYI90be6OR6rt5JVwV5hLoxsMWtTKSJ/TbLmRG02VpzV0W19D93JweFnKQNBp1yL6VPUUYMps0ld6+BW66dCjfY556xthgVulcM4GbeqqvGh3qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762295994; c=relaxed/simple;
	bh=8o0m7EU/O4BWejTWki+ldHsnqiFG1cdHlNpzaWvaUfE=;
	h=To:Subject:From:Message-Id:Date; b=FVzFZxM/Z+EnY8JRWAa5E99sB72Z+bP4qk8e+mLSAz1rrDEjVZeQ5bVKLban6c8nBE7G1JYzpEl4Cty0vBYqg8qn/ziQTqO7CC6Ch45uIL7y2b26QukzPubzIKYCcYyFBz0lw78MZeyaqpL81JZxYgXpeNcDF3ZfW3oq4XuLU7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMEq5Ntd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMEq5Ntd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF1EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762295993;
	bh=8o0m7EU/O4BWejTWki+ldHsnqiFG1cdHlNpzaWvaUfE=;
	h=To:Subject:From:Date:From;
	b=UMEq5NtdCwy3la9L09wcLjgaF3BBYGftQhQzkoKuvchhiJidGu/njsqADAXT+YVNv
	 2gsfdG3dBQQKyZ1OAGuBfz6tkzJLpOpDBE43wW53ag5mLdOMCzLMAAloLjSmlOJPeq
	 cKjhZ5S65PBkKeuaIMtTvqt/WjYGGyh/1Y9DL8EgUzMWx3PfOdhvkLKwfhdYTDatqQ
	 9PvvCoW8dyA+nxtRwnhakjNy4jmdwdbzE26yw1PYztOxPt1VaOS7MtSKYFAgDiJuMs
	 KZI4NV5DfsdszDukbKae2o/GoGSLqZhN54b7lDUKtwxULRc4vlUDAm1dm+NnNrWafJ
	 oTlDAVXFmSaCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971C1CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176229599358.6591.5189425151132085790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dedbabcf5eb912c9ebec73985a2dcd75b71a986ae46635b090811ad14cf2059
Date: Tue, 04 Nov 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762295993
