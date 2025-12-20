Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D52E28000F
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766207634; cv=none; b=bR2h8Snr/afhoL2KwRvJd2bKSka3Q56/yQ6wQeuX3tq0d6eMkwlkgizDhuoTzamQWij6R92FAJphq+XiA7swcs6qHsPf8QeGYyOUW9FKINC4pq3MTnD2f+W++7pEliLhybIVBfHVY79egeepjBG8dn/FWKugD5YvkOfqg/1hZus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766207634; c=relaxed/simple;
	bh=Xt4XgF/LeZVJ+OKjV5L9eSdHEYxxsO6lg0bdJlxXWQQ=;
	h=To:Subject:From:Message-Id:Date; b=DtRLwCzAv7uWHvx7FbIrizBUcsm4E/5b6exllJqI2Zgr/PolItus57YevFc9I/2kUxznRzxFTJRSIDLtZgXI6OeV8cNTooywrK/i486r9rXP87BeTuBJKDh292oeRuqGh2HzWtIhdW/90SYjUYGJxwsr5GhWyhq6eUjsug1csg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqsjDZbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqsjDZbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF771C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766207633;
	bh=Xt4XgF/LeZVJ+OKjV5L9eSdHEYxxsO6lg0bdJlxXWQQ=;
	h=To:Subject:From:Date:From;
	b=DqsjDZbrSm+tHRh5JS0Y4d7hKlKMkgrvKDebtQdmywSpf7HGPiZcitUxQkpq8T/KI
	 e6eYiuN/v1C6zqLBDm/JwtxhBybyyCy+A6az+SRTL5OoyeUiJTnpO9d5rwcE0vDLZU
	 BMMuep75pYmutLqFSOr9yGWmECuRMhaoUPhf/YMkdW2eF5b6nATxqKvcHIteO7hDjH
	 X/K+POACEAveIKC/z3pzG8yUmMkh2BrP7ipZB/yKgsBJMJZjX6Le73Krkvtf51riSX
	 Ae3IJtNVrk1kYSt3EkOJ8WKEASe/XTex3t0wcDzQ0QqfBoJyesz2AWTitJu8k745u+
	 hD/h5A0C6qZWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDAAE668AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176620763361.15040.5636348779994734012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1035fc55587e115a7c96836bda8fb47a3c7517c2ff5b95017310812f850c7a9d
Date: Sat, 20 Dec 2025 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766207633
