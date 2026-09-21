Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7299636CDF3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789971634; cv=none; b=fzmfKfoSBRvLuAYiubxh2Qtya1s/WfgMEVv8eVSc4tFNxuxVpthp3Vn7w7P0nW6eDaL2I47r/hvQHRb8mZ+LMzRFOF59KVoQ1SDYkMgfqngHlAY+Jl1JSmPmSO9Z1uhWp3BJu7IvCI+UBr8xTisvHPmWnTNnLwn+Zz/80eDFsh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789971634; c=relaxed/simple;
	bh=8jV/q7nR+MZlSmkKL97DjTU13kUV7xos+7hhlM+zn8U=;
	h=To:Subject:From:Message-Id:Date; b=qgPTrOfW5kt8wai2xOR+tqrLvjdD2GNmltaWPbyAsQ/1TPFZq5gPrNnHqgJKMRHcKDW1i/EJ0JfviqdQzOCldrOMpA+JvIGNKUHoBAt0GqThkPwbtPuYfbRtHg82JtM29Wzp7f6uELH6KqEasT+cs5FFbQNGcSgnGXXPb7AhmtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZAyozBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZAyozBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4FAC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789971633;
	bh=8jV/q7nR+MZlSmkKL97DjTU13kUV7xos+7hhlM+zn8U=;
	h=To:Subject:From:Date:From;
	b=XZAyozBlW/1tWgeYOVMSujiTe7gBTJcXWp18OjOhYu4rfdy9ZEQGcTd/8sRP7NVNf
	 +UVY3ABBqyJel/8RCjYc/sWXmiH42S7rccRlVqU5M1uFythN+sF0k+LhEMpt7LvbJV
	 4XPOMGw3dD9aOPd2iJJzH9E5LXwlBZT8dVRre6ibW0D613Lp1Tq3NTpCrtrs0kX3Zi
	 Q+b8EfvEzSmcefirhWt6R12yAKS2TQnD7GFNZccDLUUMO9ay4+1bjt8JlowOqJHc0h
	 x+t8+mLrrO93oaXquQlwGqubED5dVfLDHxmcdKIzpcmyz7SV54y2qynMTDkny2tEW8
	 +ZiFu3v4OwxFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6FFC982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178997163370.14654.5162559314745809563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dcf4f5a06b3de1494328151f0cab331003336ec54991e39029c6246a4ace438
Date: Mon, 21 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789971633
