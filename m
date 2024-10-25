Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424DA22B657
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729840554; cv=none; b=ub5+9P90LIcRXVDUC7fYw/KdrLWvCYegOzX3JUq+/TCyA4sTy631GH6Ttjj1kR0d3rrZ+aR4kDVDAfpTTNVwpbVyzu7wLuyIsxVS8B7airEi8nsbJZ+jLND/L8x8a7lMEbsqQvT8Au/osb8KqAArwXGYvfYVVH2oSr4k4HmQ8tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729840554; c=relaxed/simple;
	bh=XqJkIOnIaZpq7QutbcpvFo37QYHtRpy5XgrdlQdlO3Y=;
	h=To:Subject:From:Message-Id:Date; b=BoocndXeqoNRsLucvzgFmnApzPruwYpLzJqe475nsK+Vz4BD0tC/02G2JXJmpq0ftGB0CEhtDa6tWKXhW53PSEa6CjUB1yneLrx8fN0w3yyUp6J/T6jwiaQIq+gythbGQAjsbPtnyJl97OgA+g1e9MlaoPfyGu47T0WilrIsh00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLJ0QO3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLJ0QO3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2216C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729840553;
	bh=XqJkIOnIaZpq7QutbcpvFo37QYHtRpy5XgrdlQdlO3Y=;
	h=To:Subject:From:Date:From;
	b=DLJ0QO3Qtl3H9D58aHIpRTbj3MP2cXpxmIc578bScFt5TUpZ3ZIC/ZiZBhkadFN0Q
	 Mu5FwTmd6GwX03mS4aIjMOJAmyyLrJOhB30wGAzdk3F3tTqkWoQDsWv99mHXgKO9pq
	 VH6WIY54erV+1gfrOwVgD1qvgD3pCYv9tvor7eHYti89lWRuRgs/wT/wck+s9Jm+xH
	 XyP6S6nm+EBXIlYIwi+W58SHmh7YwMLcBqFtpEkPgtevb6HXcVK7qrs7Mo1l73i6z7
	 GyxTOkoztuXBxlS0/Q1u/NmltqCKyIbuG6SBlU83VS5jzcCuB+ICTwiyDhlNJqeKks
	 vtEy/COnnho9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D18CD11704
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172984055363.17515.12615340610114691550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f454b45ce6e6ccd1a1eed3d383e17c502194ecf102d97c57bc271f8a16c5bb83
Date: Fri, 25 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729840553
