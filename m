Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AEC2D6639
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765095174; cv=none; b=iFINUe9Rpwldqf+paZ4G8TCzqW9oZmQMoZdANd503lp40BlKX3ryjJuqOuVYnipbfBsbamF/BMXvJkEAm6VxLB83WJiOQY7sdG60q5MBOgX55Kvj/RTGqZETlGJCLJJynDY5lvHrzfvr8MWnjrhEsBG1/zltpnwOGhgRaf5LaRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765095174; c=relaxed/simple;
	bh=tyhlhYV0xSt193KZqOK5KU7N4u0e72ZwFGOgR7xW7D8=;
	h=To:Subject:From:Message-Id:Date; b=iSjxxik22293cXPKmK8CeUqUQpRIa8MIE2FeL4udbX5fe499iN4Lg2EMOJOCdK6yNJ3iX5M515aw3TqzrS6vXNczimsmKUnZBV6VkcOGDz7i3L/PEVtWfRs8oaQtS3encuH9I0qlhiKYwBluO1XuoIgJzosm96iSuZfeRNL3XA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jc5HybMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jc5HybMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2777C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765095173;
	bh=tyhlhYV0xSt193KZqOK5KU7N4u0e72ZwFGOgR7xW7D8=;
	h=To:Subject:From:Date:From;
	b=jc5HybMQX1Fu09iU56zM49GDIS3O+iHyaygJ4k8ZiRhzbqyEElIkdM+++Qw04n4x5
	 D6QFZMm9x1WoBHv3HauK3Jv5eLFy+gGjwcwK7lzXOBWEvHLDcsq6IuTcwP/VKs5bli
	 3U47u43A+18G2mvZ6sxM5NPUl3pOf/TzSMITcTJoJpSK8otyjl76djELCKdjBBInLY
	 btykF3/oUkBKAm4Kk3pjsRy5/mZ0SKyR0oPrHJw1orDn3wjJQYFE5+q8DzLeNazdcA
	 6FrzYBAiP7mijoGBwJjhEgLDnkYI6lPpn2cLa2KAwTpAqEIgvd8T40PZG9G/v2cxs8
	 0PZrmtlZcJzEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9430ED2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509517358.10718.14337965128680656520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317bd59a7951947e9d9d549989c9c4e827009745d58fcdc330c46fea8b3ba307
Date: Sun, 07 Dec 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765095173
