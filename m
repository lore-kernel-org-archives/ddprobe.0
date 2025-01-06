Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288751DD874
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736165754; cv=none; b=nUTfScxDmfN5q22jbCri7KBDItN3MWdBdJjDqYKxA8430bFw5QBwCAOkO6QW+imR/gWU3oYwIiJwgckKFXvER4iGCH6h5WafmtD0hWX95V0ChMTcIP2BmT9IL/iqqs/cAKme1sQjwbnFwEn0Q9/UiRiibhAoDedY2zWKW/s16vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736165754; c=relaxed/simple;
	bh=y1OcTxYJDKQ0XJHC+iFYIf5Bzm3OV86LIu2aaSLf+fk=;
	h=To:Subject:From:Message-Id:Date; b=WMBGrnUJQzasTGZxzKCv8E84h1imbHwUpHYWXGnZ9fLleWlqxxf8HMIizKVzZ7bUU3Jj/SA9/uxc+VnboWxb9Wu11YS44Et1g+s11e/YOEwey79DHjx9oUrDHcHuEZS9BzhKEcBdReuJD/jiXG1287e52o4rKoA343uRkQOpx+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtUM/Gql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtUM/Gql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29EAC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736165753;
	bh=y1OcTxYJDKQ0XJHC+iFYIf5Bzm3OV86LIu2aaSLf+fk=;
	h=To:Subject:From:Date:From;
	b=UtUM/Gql+/EWW0hsvDRKh+lQ2v+YV0vF3szOYrgKnL3K0DeggF4AqZMw1lNg0gA6I
	 2HsTGrAu+cR6/o/+ZAvscpIebYFShHxeXKGJibp/rp1f0/+H/0GbSagAQTrW3LSBNi
	 btkfMgsXMOmH4TuwdDSq0J9zE4h3SNwyTq98bM1zE9YHwE+5W1Lv9j8nytlSvlf2Q/
	 cb6GriweJlpnaVuKqCNyo2kyFuJd8zD8n59GQDYJJDzcSGR1RXq4ePoBOzteHWHyf+
	 q3GMSZHajvsXeNZhSLVE469aMNHcpdQUv0t/b8EeiLyHa3KESME+JOeVu5tKK+45/Y
	 WbRYSFkD5Gg0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FB1E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173616575359.22773.4324629760380165734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463a617905a663ed63b24678ac44a4153a0d4e72dc2ab4793e204fc677b20aaa
Date: Mon, 06 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736165753
