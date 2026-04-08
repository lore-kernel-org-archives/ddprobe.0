Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2659C282F05
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775612734; cv=none; b=cWnRDq7JjcxhGdS2ja1LTUM6NWE/7B6ETaD0zftiHpojgDZPWV2/7g03tDBYD0zwygb3PDWqIkwp9fPTPpYVb+30KlkRvLwg60OoXVGgNno//bMABG4d56daUfrbphvWfkNtupeh33tROhn/zJQeR57M8oe8GVYclGudvxYvpjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775612734; c=relaxed/simple;
	bh=Km86RNcP5Y8J5PtUbGyj8AsYX+HQP8TddWDdQCSsBXQ=;
	h=To:Subject:From:Message-Id:Date; b=CTIvRY8tsxVQTWpU1sJIT/uvhQCjCzlhDGXlRfRj7Z0z/ixq7+NOKTmD0fw428DLmfolozg0S9EKKb70iZ1w10vu27vlKJl7LaBXHqNPFiKXS3KDzOgkxmPmlrdMWNNPxLq7joQ19whuQpMHFNkZWwSLPeI6e8Og711f5CfiSAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssJFZ7ti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssJFZ7ti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1025C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775612733;
	bh=Km86RNcP5Y8J5PtUbGyj8AsYX+HQP8TddWDdQCSsBXQ=;
	h=To:Subject:From:Date:From;
	b=ssJFZ7tiNXZR8Wz8Y20IoZ36kS+vQWeOWDUdglb8ponNjx7mNDCnzaWbMk/i0XNbh
	 iUbFcSfHKqxpQFUYkeJks4NoIDFVriVJkPY3W+aOaQ8EXtRGBIBrNKaX/t64kdm2U4
	 6EYtJ82of/WdFObfkSYZJH3+uYTfi+7OlU5D6GAl+PB7yIw4NCrVwTgZfZQUWM1IBs
	 aj7A+0QjRbSz2zYXvfjnCi59189QhUCfQw/M/Ylq8IGO3pHmDK/TTRammsiSZmjYid
	 Spr33uwV1zPEVsNDD2L6ezPFZ5f/kl5+mwGUpVz+g6cUG0WqHLhPGUVK+Z3B2vIkEx
	 baF9PmbPYwWKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6240105D990
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561273373.23225.13231493897124781006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb1894dd3c2bd349a08a1e23e070e4fb22599d7c7164936833143997b799ea4
Date: Wed, 08 Apr 2026 01:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775612733
