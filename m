Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEBE1C8604
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753496994; cv=none; b=IEQnkaxmxoXdcFPGUieDpdSGJseui+yvCsrI6TZUE5b0T6kOsZ0JyR6olA6SLJJiziesoNYZ6k+crOH9Bz3EgedksgcTtWbVT16Dvd5MoeibrYlEPLrOvgTNUHSY3t/Ysz0A664i1aysd5BGwbA9aZmCYPmy/6+yhHvq7c8bSJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753496994; c=relaxed/simple;
	bh=Cm7Fwc78wehf672CLnr8Wul1uZXtOiGsIZRBP6vP25Y=;
	h=To:Subject:From:Message-Id:Date; b=G/5OMqfn1lYYuNLeINbR68+7QPiBFQNzL5vWcstlBNGZu37Tu+2kZRaVc1Cu146tsUPUvXoqnDrKV3qirP7ONDIxjb5V5gDXFenKs9PLtvHQs5CONjL05mlAdkwPuibPWwjUVSzgpmLdDjo08b5Z5RXnqYbR54Otk2lhLvfvVH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WM4diUqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WM4diUqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9013C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753496993;
	bh=Cm7Fwc78wehf672CLnr8Wul1uZXtOiGsIZRBP6vP25Y=;
	h=To:Subject:From:Date:From;
	b=WM4diUqeFz2On2trzN3M8s7hATjwW1mocrqKE87iFRth2W6eIuVlE4sxtiW9tg56e
	 /hI2lxARSq0X7yUtICjOKvvA9OpSi5i3XDf0DS398wXO/c+eyvU2USKK1zLVODO+GK
	 Cls8uuCi+15ISYRhPo7ePNJ7EahXt3A5zZLMumgZt2KKyzo2EGty0BH9S5YmJU9V3g
	 bYrMTAFIWMAxny4mKXGizsstKX/y+WMAeRHreNlVerQHGg/qmDGa9KMFDMOX2L0qAL
	 /kuwaxIG62Ka8kg9528n7zpmebDh73yH0O6Zh9HAGYQUiM8ANLZYADBslCIFwSQ3B3
	 aV1JosftIqQdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93263C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349699358.16663.12994020960681165660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19947b97d9ec037b638944c422f9e592be8d18984e0f6d21235e894a989d1264
Date: Sat, 26 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753496993
