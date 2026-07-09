Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F463BB680
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783631914; cv=none; b=MrToN3pixmp8JICS2uMsSn/OZxRsviVVRAip5E9irVmgRmdDzswm61MyvfZu7yQ7DKDShngSEAi/p2VYfKSBGpgK17LkQbVtzMWbKq/WqdjwOi2I0p7mf/lkC8cIEPB7oxFLnRviND850GTwHhp8n6fBaXHRa7MtC4nZXTPhGWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783631914; c=relaxed/simple;
	bh=Av9QU3RkXLQClI9mx9DwQo0ynI8KuBgyIqdTOj4jBAw=;
	h=To:Subject:From:Message-Id:Date; b=CMxrus5+Yq31WZPJqhvJVtRjOHSgu51L2frf2gql48eHIqGQnhZwXlYKazgSGRf8mzvAAXZmQzs0Y7T3VEzSvMYrMw59dc85LJIhd8R5b0DGvSFgqfK0MGln7PxX3wJcn4d5vO7VHtyzgZ6Eqh0qnBQ8L0dXk1YODTLgjiUBs6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFKJWewD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFKJWewD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C8AC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783631913;
	bh=Av9QU3RkXLQClI9mx9DwQo0ynI8KuBgyIqdTOj4jBAw=;
	h=To:Subject:From:Date:From;
	b=LFKJWewDyaHHZDaVcN13Kjm16lj4/6p7y8k80myXHG5KBLhSKcHA+cpReRZHMwmyV
	 aNcpU/dpWax8Bv2k635LJFD4eM7oLHiip+OHA+CU78/qXM8ERu6aoiYJ0KdQ1auTz0
	 YhVGVBTUcwE3aFyuASXUTq8J5/qK5akVJIicosKRyoe1yGGJJ1KDBBlrtruf3KP/DH
	 cUuF/YDEfpLbd5qg6eCYuzCo24pRXM54JXZo6JYloGK4jahiae1alZdTFTuWzN+kf3
	 /nW/5zNNGAasoF2788gjFc0AThcT7+sYWv95FwvhI9PVK0nUoWBioOOUW9F+EUAr+W
	 tGBjEfYRuR3jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83E5C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363191368.11067.10858872371192661597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06641ac52bf850b42006e93fc2f3e2011726c774e2ffb9a02369c5252dba6ddd
Date: Thu, 09 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783631913
