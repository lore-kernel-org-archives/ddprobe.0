Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 951B537F723
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782502114; cv=none; b=M2JTSeiHVle1y+3tVj5BwGPNWjYgnMizlGsd4R7HMwqSKdqldIA3I/AwtdEjR6AJqBbXdBY/GBA2qQ4kj/BRgu/H80cIzn0LA516tTg+//eBgD8PF/zTFoXFt7I6ynqsfJbgDeImfTCXoufX2OgY9eTWJD3zDRVHLU9sdsqYyww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782502114; c=relaxed/simple;
	bh=4Z+K7VwKYpzF3sTmOP6tzGTqrQi86oUg6VMRch5zYMo=;
	h=To:Subject:From:Message-Id:Date; b=g3LQBx6lWaKLeM0uHpUoOcYirQiUOdheVtYTOlN5po7edYHgI0+WC1eR9DaApyG+sUl7zR6fOB/tA4m2j4rdAyqmCKj3xhEXigThZk5u3jBIQSbPi6f9/SXYEosKNTP9IURZeJdCp3znQVPUy2UN684soKVAwjowVI5GwcVzCio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuCeQA5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuCeQA5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 294A8C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782502114;
	bh=4Z+K7VwKYpzF3sTmOP6tzGTqrQi86oUg6VMRch5zYMo=;
	h=To:Subject:From:Date:From;
	b=WuCeQA5hv8upeX38cWxj0PymbxaREsMf8DpoRaga5nX7BsyBRGDUzQ3lFbkbXSzls
	 3FCaEqyzZ8WVJYQLE7zAkqatrW7FwJqoD3o1+zUfRxMyLXzjRPJkuLIC9SNDRdfWjs
	 q42y2Pz0S/yJ1tLgUZHSD0oxzdcIhxaY7JSVfh5t8a0izTPqM+x6RnSrcP7uRJTeTt
	 87HvvXNNzCZoA9ZZ50aQT633r1XAkOOU89bw23irnFdQYoLGVK7xlP1zuYqci9LMkk
	 65lJ8cojYYJ7AcpKWZzYkg5gz48ColU6B8EvrOYz3USKALxemKXaepJu/G9OB2EGdI
	 vCRosnABd1XoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEFCFC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250211383.26755.2735406989119227240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a39233a1816346f54bba55f4efba9173a6ccd2f2cb8f00309f3afd9ae249323
Date: Fri, 26 Jun 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782502113
