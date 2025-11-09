Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336E01C695
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762696194; cv=none; b=a59XXp+X2pfevJU/eQhsz2myWAWw4YkwTh7LLt5BSO/7g7aT6VzYH4KrQUzs4eozUrfue/4KwDcuyBD8mN/bgW45ruQWCXeqb8/BrR7cEx7z/ThInBQLeOMJwIc1TMGt/1f/3bFrEzOP6lXKOiUKz7f+TxbVmwX94T04Yt0UXGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762696194; c=relaxed/simple;
	bh=ZmrmtnWYf1zMAg5+H8JlpiNMH7XTHTGsGwm0bn9kgCk=;
	h=To:Subject:From:Message-Id:Date; b=jQ8x5WGvBxhV3CaNR7hzlbYu3Ue5rWODjyoT8sMr0xq0qgJxXBYgFxACknAKQAZhckSmxd1fr/QKZJevQnLgWJ3jeIwyrID9li1ZrA9fMGloUijFgl1/6sUHiBHxJCT36QkAaQB9QZ38kGjbbVcaeayYgEyRks1PRRFZdOEst5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyHPQEak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyHPQEak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0274C19424
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762696193;
	bh=ZmrmtnWYf1zMAg5+H8JlpiNMH7XTHTGsGwm0bn9kgCk=;
	h=To:Subject:From:Date:From;
	b=tyHPQEakl90GL/WDbGafK4at2BbIyAxdvNPKmZ4RjQLbiTv+DIlJWAtq8CFDEl0v0
	 G8JLyD88p/TAhfg+lzYxYSakaMJbVdDrfazlkY+KCKSkd3cVeVwWbq3un8qGbmtFzS
	 /mM/HdMN2uJkWJsW/UJrNqclOWK1tnEVukQzdvKPlNfF9owfBCYkivteXhFrwqHZ4E
	 +GH3kK7KZcd1IaDP9viIHRwfCNjxYjugj8XMa96K9xGfJlIeHHMkSlWfOIoGeNGeC2
	 H77Xlr1Rrc3HtGck2p9K9RxNowNAtRmLbmL5k2XkFOEtKoMxOs4NAP3RQo0G8ncQKE
	 sifgLvIaOeTrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941B3CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269619357.22030.357936053103420306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8367e999ab65599bbbe6b94f4d4900d985e06c4a522859cd761a02378b41839
Date: Sun, 09 Nov 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762696193
