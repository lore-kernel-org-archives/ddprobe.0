Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A33C1487CB
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 19:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712948963; cv=none; b=urzl1pyuIPPe3ZMzBTiXKxmuQ0UxuNbrarr4I68+jQHG7myf06osBV36Myaz+IXQkV+agzgY5xOjRJUtGB9Csu5iD01yAGe0bl+mdA9wR65VunCqrnETWcVmmg/zsFxZMqO08hE/LQdvJtgsyU+yMje/tk1JW7YB+JSLcjytg30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712948963; c=relaxed/simple;
	bh=QT/nUXcNn4Ber/ZU00ZM6vGb18S9HqY7i9fP3mp3BQE=;
	h=To:Subject:From:Message-Id:Date; b=AoXbFqxPFeh2QAxQc2kLFHkmpp+qijIcPJHT6Aj1lUFi4SHffB/4bL4Uu3lDC1dDIpdWs5tSoGp88qplJ4p9oC0ZTqAQypVW+Vzt0zxznQEQ1TKm74FNiwwg9lITRrXwXL9D0K6K0m1ptAwWueaKzHMJyku7zLIWT/OLQVfwZoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKnIChoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKnIChoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED4E2C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 19:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712948963;
	bh=QT/nUXcNn4Ber/ZU00ZM6vGb18S9HqY7i9fP3mp3BQE=;
	h=To:Subject:From:Date:From;
	b=JKnIChoAwH9v7X7Vtq/n0IuRMjBVoE5fY9NrVluqBixYC64rFx2HTozIu9uCYh5g/
	 Wll3qCss+7Fu3d3OUuvuhU8haGmjGJlekdCB/+xh1quxHgBl11/b7gSDhweqSytZb8
	 iDuFmdDAMVm/RfbWJSJPjLfnRfg3dW5LMNqnYsTUirlt7rlHfXPTr2vOvjztAJxT8R
	 Q2EQ6UQwWP4ANWjLg2uYKblG2PdqFVjmFY+Hs0bIdcr1p+xsiuo3A+8lZFh9WXb5px
	 tbAVBoBN4yBYcL+W6DnUnuVq80At0ahlSCj+ziej6rJI2Al1oDS0O6rGznBbpHYO3q
	 aKrbK9wWv/vYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D422BC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 19:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171294896285.11255.11986202630019169356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e71f0001122339f1b5c34183a4a52d1f6821661491b8f723d1439873f4e2f82d
Date: Fri, 12 Apr 2024 19:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712948962
