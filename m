Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B811DDC0F
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750058394; cv=none; b=li9KjO46d/oq7cVrnv5dwJooD+G9e31M0fE5qqYcA8P01EYRHsSqtvNeHBhGRufhGmplo/XASYkq/7AyZxvYa0HXpva1VCTZ1AlKMVQgUhp85K/H3fnESZIW/1aB3yUaui8llVNg4GY2icpNJBxV9C7zq1qP0SGB2gsPmFBheB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750058394; c=relaxed/simple;
	bh=vN61MeN0b2PsX6nm41jlTItjEZwKEHSe3Ot8ZUzWL8A=;
	h=To:Subject:From:Message-Id:Date; b=l3BAdodAzgN7WQgELoyCBhY4z31C9Lv6Hq6do6L5BW9p16pYvUD7h+gAPQJSZndSc2HWNID9AYeD59KVd7wLqTjrRC5XBwBSxSzAnF21BxkRQ0wEIg/ZCnVLItQHWa28ocewxL1dIxLDhyf//ZcNqvcR+HiPBzr/7yEQnwwBWUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecEvjQXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecEvjQXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2487C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750058393;
	bh=vN61MeN0b2PsX6nm41jlTItjEZwKEHSe3Ot8ZUzWL8A=;
	h=To:Subject:From:Date:From;
	b=ecEvjQXcb6aeadyrhJL6DKWy06MQSWmD+ZZ4MCOd3g75LgKR2O0K5q2jwhx2gbEt6
	 Jr/zIpUGRi9X+RieYbT9CX0j6aZhT/xB0o/MO3VLGrJpgEQ43BsqJirGfHJf67KZO4
	 TsT8Nk357GK48ygaaPTBKiari6oNyrNcH2gL5laRBvAm3bqMAo6i1h5Kl9wh4XkhDh
	 MubOWWW24V6WYD9x1on7sk8cs44W48o3wbWaR7DQ2HWVYTiKXCOWHGgDdMFSvrHDw9
	 ViCFz0e/d5q1TLkOjD8lFJFzgd9LABoAh7IEAT0x+PGUI447YwDL0uwA9XHY8zGArg
	 fZLIAWQdTduag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90930C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175005839358.6195.9411339292537499906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc0c4f12a9b18115707f993f7e1434258e362fcd319a77681edd9ff09971187
Date: Mon, 16 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750058393
