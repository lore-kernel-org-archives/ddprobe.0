Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3674539CD13
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787910034; cv=none; b=AExkWEyBw9g9SiFDNWvmyHJH1KR6YpTYlrW9+CHCojN7/SRf81FeEqejVShltQfXW5DcZ4GlLIheIXaQi0QFherAGzjmwZU7qHvOWNsg3BlFSC05G6JKjnIQSQz+6/6mROcQaXhnaHZVIMMWuPpK9kfdlgTFxwF8C3RHq4qjSE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787910034; c=relaxed/simple;
	bh=82BBfWXfeQF8z1YDdx8Qo1hCMGrLLs8JoywIr+9dqfI=;
	h=To:Subject:From:Message-Id:Date; b=smeZmYaP3ug0smabJWuBRJx9iJDajHxU5xT5RBBTEtHdKGlVO0rxYwiMojTGkNLTSTekl05/DoGmKzzZ4Msetz53xVxwN0n63SMMOvI/kWucfiqTah90qYoAvFDP8lPTlCzyNDBhKWfCyUwf3v7vznnAWxy/rU4bZEYTXVZybqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cq/51NLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cq/51NLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7DAC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787910033;
	bh=82BBfWXfeQF8z1YDdx8Qo1hCMGrLLs8JoywIr+9dqfI=;
	h=To:Subject:From:Date:From;
	b=cq/51NLGhgisq1xYgrX8l/Ov2ZPoY1QVx1s2vplHStOudIhCm/dp69lgAeFhWm0LB
	 mQUnAZUzWWzSxboXkAJcUVnxT23uv7WPzBAhHUhRuUAc9GfbOciwranpothaUM1QV3
	 yv4rmHMKqbrAAoYkVJnduc1ByjPDeUsOS3xtCAq8LJuiCAxelWlkOxuflhnXXl13zZ
	 tVZiUThaAhnbNJUxPHGs/HIyKvsFrWhgrDCsJZl9UpsaS+geHGQ4pM3Q97eOjB+uX3
	 7YVmXD6JxzhAEshyLJyKAMlzRMHlo5UVzcmq0YPDciqCYPve9TOt8hoITfmVjTpWkM
	 wdcK2e/vZp/SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC95C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791003369.3233.14588122964535412902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ee68bd27523fecd484abb919a87d807be8cd42303b11412408759a4db90ad1c
Date: Fri, 28 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787910033
