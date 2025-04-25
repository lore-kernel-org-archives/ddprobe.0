Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E9CA29
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745566794; cv=none; b=BHvxZtmX4wR3o+RJffLbeFd70q0lSoy15umRm2CLQpQu/SAs5DjELxwLRysNs/65GmopWaqBKuaR6Mhswlq6HEcks0v5VBxa7mQuMcTAIQxeNaeYtgGb/GIZvVDakh6NHLzehv0ixi6mSKY9Wv/eE8aCHroE1g4JOyj3NHcz8ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745566794; c=relaxed/simple;
	bh=a2nMQR8yDlpjqGPyxEWQ5kdW/xuycrY7zHrR0VNUEG8=;
	h=To:Subject:From:Message-Id:Date; b=CGBIGGbN/zMuHO8R9K78iVYjcBHMx/FoP+o6w6gUgGaN+NBKprW15wbWzxfW4EBhFAZIrPrjhxHxufTzYlOVkuC9Iqbah29J7ty3BDqaoLYyfv4EOTPcVNqoUJ0Qi7g/dncHTLskN++/YnU89H08nFcD7AbMReyB0wsk1JhCNd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFuFe61z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFuFe61z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C67AC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745566793;
	bh=a2nMQR8yDlpjqGPyxEWQ5kdW/xuycrY7zHrR0VNUEG8=;
	h=To:Subject:From:Date:From;
	b=UFuFe61zBqtjXSR1QRzeGsQJFVqoRdgAbwjg3D1RGQD4loN1JxQvt/w3ynCa+Ia49
	 VSAgQ8HRZp9ZKCaQ01o+zjUFiro+AuZdgA+aCOke1WgKbRlBkuKp6dlQ5q8W814lnZ
	 vSdIGRKifBvumBoQdIHuO6z1LYOKR9iJBaehiTMphACKk9PnYxuzHHgNuJVfXVDqZJ
	 auYVTvlbfvUyr1uOk8vSnJg8A5Yi/7OZmrd+PzAU5P8pUy764TKGb11DbUKN7T4OWT
	 RAW5+bVDxedkWakw6pgkyiyjHtd+9xbZZor8Mq7RcoiOdK6hyYvtYActH0Wb5hm0dD
	 eOAX8p1HDK2dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E48FC369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174556679357.16873.7419816913590881087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd64f790f67dacefd53a634f9fefe0101edd0dd8fc9b83937e78b28c16328f2b
Date: Fri, 25 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745566793
