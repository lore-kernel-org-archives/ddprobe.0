Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E9D28D8DF
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763619714; cv=none; b=pepbN7uBMXQjXf9u3UqHNibw5nUkMMjBj23n14h6A8+jGXz4gA4qcqLOkEkTIuThf0vvdGxs3wxNWJyT15+/0chReYoeEZuDjjDZiUZPoaOS/o7+BX3nCZnW2J6dNg5u/qAK85JrXqh9XahTnEAqJsj/e93TG+o7bNGQ+jjckDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763619714; c=relaxed/simple;
	bh=rkXULf/NDXfUEiug5iN0gENQww3coaMfDvuJzlkJs90=;
	h=To:Subject:From:Message-Id:Date; b=XJckJjh+AjjNCUyJ4ZfIJGCof96X6FyEVzRDD4DwfNXpHc8gsYHO/51etYMykX8XbgS3iusNH/5tTmLUKcZprLL+NltnJKiz8wJsx3eHqd2JDPOa2l5fdEupbGTum8XSEUP8bUwdOS/h9Qc9yjeqHYJ7+hdfe9Ifi3zUOgtbkXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LX9kDxVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LX9kDxVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EB4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763619713;
	bh=rkXULf/NDXfUEiug5iN0gENQww3coaMfDvuJzlkJs90=;
	h=To:Subject:From:Date:From;
	b=LX9kDxVPuniMCqDb9WysyFEh9mHVPZuA3ePhz52dAscGBUIEb0vFDn83yhYgcuLMh
	 DS1blKnYAXd3Ak8QIsryWNqEqgyyC2/QGm5jccmIhj7beUJMdWlkLzvh38TvfWRshW
	 4OChA//4TM5moP7TJwqgF44AVRQbuHQFiYAqZZWvW6VHA3rFMJ5di6/+/g7jh6KlBo
	 TvBN5xaLbj6VILrJ4m/k1BRY8QYyXSHKrV0kOlrVidz14V+y6goNrrA38IZG+8n/LM
	 wjsNIk+epZUyUM5xPDknT4vwVMgIlLrYavtMrE8qCgzPWdCxq09FzNmjMW7fqnQbEC
	 qr10hwVNryErg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91870CF64BF
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 06:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361971358.8496.2342129702305652095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a3b82f4134dea6abc06894917b4e096a547a566d3c1d0d4d15812a4bda6afd
Date: Thu, 20 Nov 2025 06:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763619713
