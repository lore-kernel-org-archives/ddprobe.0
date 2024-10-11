Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A852BB09
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728634554; cv=none; b=VCj9R+c8axoOWjmxAsHSNKMz/YEM3IT09+p8qs1GIDJxq/KZcZEJQH0sU/y0sYY/zOhuX5G5mQCEducydVIwjxJ4dBiSrwx0gHGD3E7P36mWlBATPXIaAcpExObM/Srf5hFgrmNN5UIykh8Wze2JVMtAjnEtaNXflZefVTQRvTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728634554; c=relaxed/simple;
	bh=BrGvE5hmYOchzpHxEJNi0jZGVUFPI6TkX4XYrWw3KLY=;
	h=To:Subject:From:Message-Id:Date; b=jIo92iIwsMKmNTJAhTuh1NrQPZw631/9olNgIartsYXXK7sLZuQqpXcn4JSWv1zpMQ5BKsGfUrWw9AhFXszEU6vEKDrcIeaiQywf18R3ivLL09+yW63d2FhvSxlivVaKWMt8y+1KEh0QqtkCuQpTVyr2SZFWLgmEckGOOnVfUd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWT/5RLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWT/5RLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CFAC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728634553;
	bh=BrGvE5hmYOchzpHxEJNi0jZGVUFPI6TkX4XYrWw3KLY=;
	h=To:Subject:From:Date:From;
	b=oWT/5RLM17qo2XkgqrYD+GuwKkaKWiNx5Xk1YAIZcSs65YnDFCBxY7Q4N46Ashutz
	 E32yxBiokM8veha/2lROXonXZ1J0fx/VvYoZzl0E8k88Ej0Kc7UZuRNaN+bDrAMgKL
	 pN3INmlxuAbKCtzYEUjTWOQ1F4MXnhCxVgKoI9wnh0UiTWqXPixBnCA+EvEWqte5Nv
	 tiOkWPzVLUN0aX+0/XFN163mKxov1zd6wfE1ui5hma7vJKcUWdbuuHLl3BvEIpdUzR
	 nKpSRovgF6ERq2Iyhy1/XdGCHL9zTjVfYd7J/SradBFDWWq6IGYrurr4sW/sfgqypI
	 BEo2DIna2QI9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A55FCFC61B
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172863455361.6391.17714856426448551300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610179e16745e3416be81e68db69bc5a72726d570f6d5472715c75cee12e2abb
Date: Fri, 11 Oct 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728634553
