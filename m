Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADE42E3388
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742011135; cv=none; b=iyo55bFEt54ESBeccMgpLp7+6xTjSocHIfoKgXClc3B/DlU/8mshhyIfMgqRpaW2Oo6CW0IUcQGgwhLKvIwGBX5imF+/e4lTPR75K62/Wi5yO7Et6qlATBa1uP/eFCUlD21q3Z4QyjT9+xci6rPAvw65SIMzVUy1pZ5zCy555mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742011135; c=relaxed/simple;
	bh=GB9JsLBQ6YFXXjUPxyQAs5q8v68yEllnZ4N8tXxMBwE=;
	h=To:Subject:From:Message-Id:Date; b=sgnhxUq21Y5NOnj5kP60JHs96AOx+3Qi/HFMjPEvln5jVxXvwWcsw3coIOyonjPS7KjnTPxIoJtzt5c4jaY9+9KyhuR5cffR5G5iWqbsc8jD0Aa5hBhDrNG4Mme3GNcDS7/bTfuwrUTdT6JPNDj103JhWZpWP2FoE//dLhGe/Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMdjgkzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMdjgkzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6FAC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 03:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742011133;
	bh=GB9JsLBQ6YFXXjUPxyQAs5q8v68yEllnZ4N8tXxMBwE=;
	h=To:Subject:From:Date:From;
	b=eMdjgkzkNZUlSODEBNCP3LJfVHlQX2ZF66P++oKyz5LAHrnWg8IEQRFl/C0T1rUTH
	 q5PSSJD76ijAD2z3h85TkwzSwB2H4T08nBthfh5KfvddvykSi1btayu1XGgeLVQTZQ
	 vdfmXzQknkRihDRQjL7HYgi5uSEZoFPP5bc2lvTKlnQfqB4SDT2XTSKMoq14bjIatI
	 lUDUuWMrhfoLVjTZKvdiYgxzG+gp3T2WeOGJZ47UsRrhm7hehjwzn2qi6VZxzJ/0xx
	 RfDH8Xnyc9yLqiIunqY176aIWxrKC6UGntGYVIhAQq4kKGvkYAyUk9OV7hukFR4HU7
	 mwptfjnoMOInw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B0FC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 03:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174201113359.13846.14511677155561904143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f3ecbe01fdf3230245815817c1402dacfaf07b36beb92d59b50364925908bc8
Date: Sat, 15 Mar 2025 03:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742011133
