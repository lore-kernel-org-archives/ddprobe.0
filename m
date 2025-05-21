Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2586D199396
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747790994; cv=none; b=c7G0Yw6EBUE6y0Vghb7XckBhQacEsw85oYZOMitBrz4qC+VIbYAYrMVxacbq9Vc5I0KOXz0RsT75DCTH5VRutTNIFD7dcqeUbYAdN/RmufuSKdOy7xrTQl2tevDCTBxdUQd4oqyEcqrUEWitzTap70hyolClpy5TAPeEzmXRJR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747790994; c=relaxed/simple;
	bh=GLi9CPI5hCM/dd+FzMiUiEepds2WpFqziKZN+NGLHB0=;
	h=To:Subject:From:Message-Id:Date; b=UaTgs7vaA0Eq619NGsWxCoMEa2CNZg70nMj7qdGp5iTVYy1vNaEu18uiGdPe3QCyRWszcZdDEplc61mzhLYBAA3nFZeinezq5ITnJa1UCf6J9SAUnWwWqzH010M8jGqogrpbg2NBWjphrY4cl15uUY9yooARiViI2hTbKQORv7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ij5rcfH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ij5rcfH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D80C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747790993;
	bh=GLi9CPI5hCM/dd+FzMiUiEepds2WpFqziKZN+NGLHB0=;
	h=To:Subject:From:Date:From;
	b=ij5rcfH/tJlHZwaZH9CMi3WKIuWgQRZAR1NqNCKuqXZKd774LyolgvsWQ28YifQTB
	 NbTwmyphWhr1w+tJHjMO68uXcfALgfnyGf4hW9U6bsSN5Go2w2TTbeOScFRBBt83kM
	 ZR9LFwMoUodJeUPoBRhlhamn6Ok90WQcyKIZ1QuDuIVk2aDdgfdLj1p90EUMuFYe7k
	 YJPP5EEGAsAggn0aYmV8OvUXFZohUU9s3VL00QpVRmb96ihKNlcuD3t+x//RGisk63
	 HGQ9ZbSw3Wwq9vW7Mg6t45gsyrWS5jEE1m1cziXpgqf1bRIBxOucFtviJzm/MJvkro
	 KR3xjvq4YlLrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93839C3DA6D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174779099357.31150.2833995671001892916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65e7d5152ca9c46e368e299aeddd06a5b73a9402400328411ccb332f0cb4161
Date: Wed, 21 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747790993
