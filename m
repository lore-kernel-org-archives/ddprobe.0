Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510733CCA13
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790634034; cv=none; b=J+CDdLEmX2pnBkzsE+zu3Ys+uYCGUH1DjtsXWs0kwTzQY4rv4vdi30xZXNji8oj/nyeRGq9mgbfYMeixjD8Q0/dpMUjb21i6pl4SQEZP4e38eLDzxrK1ySH0tmQroHfHyK/Y6ePSpFmkm4Fk36r94xSwm4j+kNmz0rI4kPeHjdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790634034; c=relaxed/simple;
	bh=bwXlH9OxKJhV70RjR9zYcjl2bF7OsCc99PzeIWqqPvE=;
	h=To:Subject:From:Message-Id:Date; b=foT81YQ8fPJO0BJkurghL6BzrY38wS9y340M/VFtkuMvHIdL0x0QPXMmZ+WxQQWqLOAU3dh8HrrD4AjqGFEU4qqhxF35/M+Go6EFm2Kkk3H6RpqUIyzn1aO0DWHW2BCbpsa72P/T7iyJdDLrlTbu4KewJUSIcI9MNUB5xfcAsh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vs25RkaJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vs25RkaJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00C4C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790634033;
	bh=bwXlH9OxKJhV70RjR9zYcjl2bF7OsCc99PzeIWqqPvE=;
	h=To:Subject:From:Date:From;
	b=Vs25RkaJ0GCNbnizzNkLI4aiVfiaQwEEmHKkd0noZOvEYu3H0koNh1z7fvJgktOyr
	 5SqrASjUE7UE8JJREdTER5/V1qzZhyZFKjNxcguUr8eadKxW5z8P8JZnxUy1KY6h6H
	 e006yxi/mDXhenHlfQgIQHaeSmoCYu7kj0knpJrkX0od2cZwDdNe96z20mhy9F6m19
	 RBAYBz5mwXUfx9JZVQqa4rxnuIZJKmGDOqAHRTq6ISqEW3HYuZ0KNf5lKfFkCing+h
	 m5OuhkNQKBxJREA1G4c+tO7PLaLMZNg6xZOc0YduoDMl+1QD3dZhIS3cjhlIoZs6QK
	 eVmBLw/4P8N6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5EBCA5FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179063403370.12354.17792269389705575710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f38fd3a5ff1c9b2fcd8fec7638c985bdee4b0527d1acd599d6213c0fc481f1dc
Date: Mon, 28 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790634033
