Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2257E1DE3DC
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765668174; cv=none; b=k+AzSCaWc7EwiTy9AoGSjIoOj7OPqUyq77w1Fc89jyjhhsQ77yNljCQ+PR7Sm1SXFbRsk4kqigdZ3x2d8sE0bdtPGWMtw9OYD50HAulCQQnJhSmcXprMuV8GkyzkyDx5E/pSQXvY1DFljzrmx7/e7R1B65BJofnDejAfzW7CIdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765668174; c=relaxed/simple;
	bh=nZ7Ej99cV0NHPXjOj508OpN4lyCVRmvso/2RbpsAIQU=;
	h=To:Subject:From:Message-Id:Date; b=moGe/kxp6a1BJQ1AJG5hXBdxBxOzTpxeI5VbEGyPVa3kwH4IQNUUIyX9wsZ/hvEeBZfVLgHqaAi//MOvaNaaZ9RAW7DXYJyZ0O4QD0UKo+y/wTR1vuZLHD4wRvqmM1hk87mpNVu3PnSZw6M+7iDnUMdU7MjQ1rFCtETYTp0kBYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8lnJqO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8lnJqO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5819C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765668173;
	bh=nZ7Ej99cV0NHPXjOj508OpN4lyCVRmvso/2RbpsAIQU=;
	h=To:Subject:From:Date:From;
	b=K8lnJqO8E+n0BO5KIPGhPQXjoSz5S+21Mh2lLr0xPxFP6V6ElA3LE4dIq2iH0vueh
	 8evtMHDe9T/72ieeG5myNhV2AAHI6ZFuwYj2riRKDll2Ke7jRb0QhyxY2gE1L7OElK
	 Y6dNciMpBlHQfJSCP5eqMLk6VdEy85eCcS34rszK5M/NlWZ5DraYUUindKxD5i+QuD
	 nQ5Si4xR+EcRBsoiIefboTuGBBu/l6YlgrS/hVnDkvUbIxlCqDDWSfy3/cEhCwLgQP
	 iTLzLWve3eqSgU6VrrwFZs1CyWb/3g15vwW1I5wwV1MFbJ5MM0XcNlDJZxY3JO6efZ
	 epWjuf5uieTcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D4CD5B169
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566817358.12463.911585449208032643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c96854d2598effdfe9748e44f425a1b0cb250faabe65a5848a22f690e5b5f619
Date: Sat, 13 Dec 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765668173
