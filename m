Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3980A13D531
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743793794; cv=none; b=vD6R6+TzeSLeZcSbGv9qRPICxyqw2IqPfAItyc7jBnxT4J0vin69/SIEvHHJ5uHKpVJ4tX0h+3YGH41ylWqmyKhxffNdOqCAO8zEnnFvRgCeBRkPNr0IYjP/O74toRaG5NxIEgrtIj9mSOUBU0fvX4Lk3DLGWhddPRnpefJpTsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743793794; c=relaxed/simple;
	bh=XpamuWWyY2JTHJy5YhADoUK2b1Xuev4iRw8TkuGML7s=;
	h=To:Subject:From:Message-Id:Date; b=Wyf66pT+Std0kbWcBaWzZ4IRrnrkFhFP68zgNVHkPusS2uS9XZzmRJL0WHZH8Z+p8ThTHJ7mjgutulpUSLqPEB+3VStlXcFbJ529VgqCKD3Yn7QQgplJkJcDh5JVsmAvEJSNS1MXh9c9T543LD9y3Z/OLjPszderEtRa0RenYKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CesdMgh9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CesdMgh9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B4EC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743793793;
	bh=XpamuWWyY2JTHJy5YhADoUK2b1Xuev4iRw8TkuGML7s=;
	h=To:Subject:From:Date:From;
	b=CesdMgh92YOTRWAwZXa1GQvD7QgvmNGW4F/e7fI/G+i3W3EfabS0w7qz1gu7lNdNf
	 zriTtn1754JnEHnxKWXxf4ySqlH8pfGXG7YdEe910AfKPgBeJZEMA3yh+J2Fc8tbl7
	 3qrPPYFmw3Pjn3r/fDQJ1WqHTkcKux+UUj5aDw8k6+Xg8e9ls50mlXnOl0TpV8r+xs
	 Cw/x/6rBJtNpwgRIO3Q3EeUhldQQkgWw2YrU9sZGqHGL5PnkIRuu6OJMJW6kqFEZQq
	 Is1PGHCuXf41B800uwjQ77YN9qKOQWI7g53ooGL6aX3et5K0lYmL4/KK/FQVtucc0w
	 NKIPgA/W0uigg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9388FC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379379359.18834.6328299522452382009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff6a568c3cc47f6bfd531d82c03af82d7df06db029de39ced93ad86498bb6ed
Date: Fri, 04 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743793793
