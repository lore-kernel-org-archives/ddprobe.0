Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAAA194AD5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746953994; cv=none; b=PRelMOfLahs+EtFvwqsR8ouu57XQIy3ZA36sebPFmBrIeedyg6r0INwxq4Z2s6+4ap/2XH8e3UMuUKjSaUf//EPvF62oK9YlB00IWUM+iujlwgE2rU85MuW6GIQFp9t3GDrr4AjHqkohLK1jwAyINq4lYtm1FSyd5+SIkjbSPno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746953994; c=relaxed/simple;
	bh=mw43FHjjFvTjWV9GFLh3+Md6dDuHQWm64NCn4atSHIA=;
	h=To:Subject:From:Message-Id:Date; b=IxC3GMCqoHuO/h9Ij5SXpdlUm7uhj++d2Y/ZBSw72nU+K9p1OgkAoAPYXowrjcLGO4ZFzdRdHE/zGqQGDBdGq5R4ecbzxHI+55zfCuPoEjCMq4d9qkAhDQ1nF6tFVqP0dsavhP1cP26R3vovxUSApSqJAHgMx5UAUgDpZNpTdDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJ6zOXPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJ6zOXPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C41C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746953993;
	bh=mw43FHjjFvTjWV9GFLh3+Md6dDuHQWm64NCn4atSHIA=;
	h=To:Subject:From:Date:From;
	b=BJ6zOXPh60Zlvz8YOZgGKEqdaPb9Iy29vw8Ok4fg4yS80cDtpaDjWZCWWIs8XmiPy
	 xZQJ3UnOtlU5S41AL0WwcChXnvQL+qQ4SrBTO4U64U9ll/x3OuTXUuIx16GiwVjVoi
	 GCQeFACShCk0bn0b2BKP2EKAis6dPrE2B7joW1pSilCBvj7ovLpTLNxERLNIZWjk6m
	 nRVy5wSyyk7fTTDuAkQ5D9bYNXaPt/8M6YpyFQz8I1ku8L4SIaNMLU43AfpTaKqTgv
	 NxHFXZ1BgmPWPNG8usjuWTljEwlJaKswS83R7ZjL5R8GTwJBAnyzmqlXNCrb0iBpGx
	 CZWFvbt7ygl6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92145C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174695399357.3508.11136291527122507007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7203ec49da388b705d3c4f54cc373f46d33a8a3801003731b2c072dc59f648
Date: Sun, 11 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746953993
