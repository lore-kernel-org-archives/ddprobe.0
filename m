Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2409528C871
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765399374; cv=none; b=umXDi2bXa9JjijfJYQNGp5ctDtd/HdILb9q33ytpDl9zl/UCwflM2Gbi+6/gkQA6t0RO93WkLTGJMeNdCy9dOAIfbMy8mYUETXMI8JIoiqW9GRwhkidjI9VW1IEOQSK9gu1SYNbJFOIKPjAaWoYqHc9BRUO4yaFbS4kRd3+JAro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765399374; c=relaxed/simple;
	bh=xuMxCmnz6+mEv3muTm7mzqJYNa5b2A6LxiTveR8eQg4=;
	h=To:Subject:From:Message-Id:Date; b=Ngr3+BzNDqM4dtv/4+oOX2BMDfzCjPwNx+Ezt+EmBVMLtxh4b4+LVZG5rGN8gWKgiHbrUkUjq8VzmfdiHV16IN/CW7m/gGLBIp2VaLRKb71MOKmMr5mXHUYBs7qIN9WgA9IHXLh7yBs5P8cPbtj6MvgzkhxdXYgYIEX1HohT1XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1tnEpjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1tnEpjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49F3C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765399373;
	bh=xuMxCmnz6+mEv3muTm7mzqJYNa5b2A6LxiTveR8eQg4=;
	h=To:Subject:From:Date:From;
	b=l1tnEpjKAihcUCV6RiGH5mGvqyRybokJM3cdC6xC9R0DqaP3z3xCIZB9yPbAhvn3T
	 SlWw40ARUQvbLc83CWm7Pkg5arW9ihJn1xY6sj8TICf3XJsoV0MdXk3rCIzorVlgL+
	 qRF/Sk5XNCWfneli+ABTZ3NJqj2Oc5kMn/QmMLjVnw2a9YzsC95fuo0uuhSq1OuJN3
	 2VFuZ9dTTSDaV/3ae8HG06Qxski+5q733U2HEA3RWznvaTmTQjWzs98/YeC5mY9Iyf
	 DctOdZdXBp0QfBs6FX9VF9/77QM4xaSF4R0SehGYRwts2GhRMMWoVIMLm5wMogNeCY
	 8+9+Z707hafxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BADD3E77D
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539937358.22852.7203602634261563631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94fc042c16f08c502c35f4a4c476a098c5edac3c09c3ccc6be19196fac380d73
Date: Wed, 10 Dec 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765399373
