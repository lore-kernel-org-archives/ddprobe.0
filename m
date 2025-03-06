Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3BE18DB05
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 08:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741249734; cv=none; b=YSHe/Ql2GJpFT5gs4vfdM7nwgsD9w+TEMy8dJuoebbbhn5TaZb3sV9pN+0I2VUcwTHsrXKYmkNKf7ajPB+fYRdJUbGPn6WEAi6wvOEyoxUNX+tR+Be6myf2FPazOCltM58tFnJZwzmVqq7N8Rp557SqbzH6nEn1hi0hmYcRh1DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741249734; c=relaxed/simple;
	bh=m3KY+Bhl/eQHVjrKlAghAbz8dD3dqrePZ3wCymhpvd0=;
	h=To:Subject:From:Message-Id:Date; b=D1fP2ehhqlAzQiyGUJVui3MSMVDbXBlIzffQNiUjWw4diH7Jh391uUi3+uImaujr/PXC7UeDfh82OUQmzC6qCvq1VJRbEdwwt60XTGIhBvbZhGIbUdI/L1buxIP0foAINwmwZ9CEoDR6helBqXqNpjJTNzJMBvlqwHSOZ1XQZ+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZUaxYle; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZUaxYle"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE03C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 08:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741249733;
	bh=m3KY+Bhl/eQHVjrKlAghAbz8dD3dqrePZ3wCymhpvd0=;
	h=To:Subject:From:Date:From;
	b=QZUaxYlewB8xLVxWspgiXxEhb6Znyyl26SjhGv9NRm1EWQVMNEKChgbRTWwMXHknv
	 IJHIuBd4P8cqJAayl0kSVjSZIEUiqhQucxcPTgaY6t0Mm+2iKjhBYy1YgEJniW7XKe
	 mziPkpqkq4MX7FY3NRAaR4syZNcWzzqyqfn6il2nq70INrCzOibF2dhoU/8kPKmN9m
	 2jrW1RAaD7HvYh9AV9uXIZB5r9/PJ/wk1+WAp5Jzxb+C53u3ZHPPsVpEn7Ew6qOSok
	 C3mBlZh4R3YaCdKwDKFYo2qVTYo3pESOXs/ISnUC0jarf4j6Nr7xfVPLeVAVB+Cd1D
	 wGBkRBm19gGHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986CFC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 08:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174124973361.19922.16425485196370104590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f269d01915281777c741db8701bedc622c75eeeb45ba7bec245f3a0a50b8cde
Date: Thu, 06 Mar 2025 08:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741249733
