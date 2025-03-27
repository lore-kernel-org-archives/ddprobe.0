Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4476D2BAF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743065394; cv=none; b=OECMv0fgkLhh8g8Iqhpmve9otBcom5//4e22C/LEuOEY14/VFdmpnOgZot5NzyLIKtxdnoc6HHBdxFomzCznaFBw+JwkSGdClkaD+R7YIPQ1GhvTVa2G7xFIe6OSWzIu3qPpHUZ7nEumRq6QM/j6O9GHTLthOG/mZ3BlRt1DFcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743065394; c=relaxed/simple;
	bh=YiY7yUSnHUQUSxrHFEV5GAOS3KzN7poehZy8jlF2j/s=;
	h=To:Subject:From:Message-Id:Date; b=hD5fmxYn5KvPOH8GZz/NKiTNVgmkRaxKSLtzorI4jhZ3RLTXimrLfbAIkTmCbJnP82SkVWTesu/3bjd+UfjE+iauPoR7N5q6ndDdy5wf5SKn3XyUMIHPawRb+C7NX5+0ggku1ejIkdPQNGlJ5nSu5Kyc6pY5Z+p7l5wi6YANHD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cujSN41w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cujSN41w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB86FC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743065393;
	bh=YiY7yUSnHUQUSxrHFEV5GAOS3KzN7poehZy8jlF2j/s=;
	h=To:Subject:From:Date:From;
	b=cujSN41w8GMC/6VGGkPrLo5g+Z6M8KgxTNsa1st4472eR8t2nJC1rYPIyL4O768XE
	 sjQT7al1jIbIpabfXsGR0DlMys4lwU52FqwTVBFLIzjZ9c6B7DX57Dj0pBnoRfdwQ6
	 5naGXPs2OnfnZtVFunBuFu9sbo7Qir1autjd0xzXtAW6hiNDOsHAz12nFWfAHCoYBQ
	 zNbGIW5blcKVYYTEZKsZLCIG441K1ZIacVibVvS9q+NaClYs5ePqt8lJe/bCMbzLbj
	 xUcAOVOULZcvOjhWFj7cIeTCWv8yf36rxaPpDMw8nPYMnaOftdZ7XGYmKTT7rfBwzW
	 gqZGdEDxoBBjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977FAC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174306539361.29418.12903641011722184502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c614c345d7b854a2f37a4e83c566187c44f6dd6ed306686482382cba8b3883
Date: Thu, 27 Mar 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743065393
