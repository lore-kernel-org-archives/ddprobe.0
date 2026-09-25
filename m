Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A3F3D88E0
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790370634; cv=none; b=PDTjLel+T1QG2INDzj1mr8N2tS6K9e1ZlXfjp5yvnDFX0izzdSlNfz/knGpumdx502dLcKo+xLXThX17sfQI829eX4hk5TeoM1QIFNBnMgzetwBgIegLWj6MKgM5Vrg3s+rzEheTXBXsG/GQE+W0lvb2YrPVX/rt5gk92wo9EGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790370634; c=relaxed/simple;
	bh=GrstOrLc4vqvtv9O6ap4DtHQGHkUkq8BPymrFn4Zvy8=;
	h=To:Subject:From:Message-Id:Date; b=C0iU6tI6qAJIVC/QAHBm//pBUgtd4/FyrjvKnObbKs2ghT+gEBf720OJxpdDVNt4IdKlAp+URD6K25BOl6k7oF1BGJFkpMCApSMIgoQ0Yq3wWW+gczYieLVwIZg88RfYrh1rEoMsJ4W+ReaTaXvAb0nphES87JHRlkijvOygbfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePFbhfx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePFbhfx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E90C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790370633;
	bh=GrstOrLc4vqvtv9O6ap4DtHQGHkUkq8BPymrFn4Zvy8=;
	h=To:Subject:From:Date:From;
	b=ePFbhfx0n7ZrXYPdLQZ7q7bE3VvCSuI703XY7DQyCn4EnD0H3WT4ECmyBmEb4uVDD
	 g4mKEAWwOyrvw+aLkxIImBNDW4LtzReuhDxhVgPEGCpys9eDq3qztTO2yYKM5cPlxv
	 XI/q9JUbMhhVC6pXIyCZK5zMUBJxkw3odr0xqFvvFp/fTeIX7rYhDJX4zZcqEH2zle
	 lfmYESNCM3EfVN/+lz366pJUXR1U1UypeLukF7ZrXvollHWrXMbjz+hXdfYjnbb6xE
	 LWpmEaB6WSYWQYjk8vrst9avPfCHoNnRA1hqYAi3Z+4TitKkEEwPtXKDvu2HY9+BZ+
	 gxBuifInW0N5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CA5C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179037063371.27056.6523624041984385381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eac88c1432e66b732a044ae46f083e0e98d7dbd0da7775bdf123f182b47f9b5
Date: Fri, 25 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790370633
