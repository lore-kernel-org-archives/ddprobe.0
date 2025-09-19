Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A07C523A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758325194; cv=none; b=mD/mbW5tTRTnP1DwYFxuwBioK1NS6EVBxtgjPa+3lFrz20J24mbuNU5rFIgbdrMSBAPId/kvD3QopPxF/19PjbrqWavgxgj5jlK+7vFwz5FEKuZS150vnCpB3NmA92MY9JaOyxCEp7wb3Taahf4aw7nJpd9l7bv/CCU9gv8QglI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758325194; c=relaxed/simple;
	bh=b+MCeZxdOW2f3GQorSb6I66FD9IyQ0WqEr8NlMuvOLE=;
	h=To:Subject:From:Message-Id:Date; b=qGzTQhmU76AAoozihbvJ+ZI3ulR/no1ABc36moxSWeIE1jjuwPDMTrXstVv58iZgWv/RKhcPpJLyrXcSxvu/kB07tdN5VudooeBXeO6SMgjxypsvG2+IVB6sXV0ovMKW8/7YbxSPm4a7cc+olrkSlIQjfW3y60PKl3bPyZYZ4go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feV/C3Kc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feV/C3Kc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3143C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758325193;
	bh=b+MCeZxdOW2f3GQorSb6I66FD9IyQ0WqEr8NlMuvOLE=;
	h=To:Subject:From:Date:From;
	b=feV/C3KcAPLZVeQkmknlTM3SnI+mpEy5E/IU+ttF9PUnb6/a4Wp4NqTpozfnuech/
	 wq3QdMprDSMVKSTehe/g0WOvdtZ0LSryI9Mr0dvVuIXvhV/KjYkSqCGBVI28HXY5Wk
	 0kYxdIdtqwT6t+qDDiu9EySp6CfIFhRCYE5hXUxA4XegurehVkGnlsVJEJYm7Nkrl0
	 g/Tsky2HXX+ekUnRCq8NuyQm+A2XL86SlirVOTnYyFcf0UlbuiwZgYfGZY8X+PhMWF
	 KuzDKEXRaFN3dLyl6OglFVfE0hDXz28Mpjxy/LKpsT8/6BIz5uFnCWTMO7qhDBPc8f
	 Qhe9aBVQQvcqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D60CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832519358.12311.4112463566998021512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76d8b710094319c5c824e4ce235b3b37d210d1e03646f53dbfba82a5a8ade185
Date: Fri, 19 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758325193
