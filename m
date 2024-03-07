Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159701E897
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709824697; cv=none; b=OighaX7Xj7bHcIRwcMCcgLAit5RytuXlG9aNqSPX+zhX7oXzx/wL+6ZW9qZoCL3VrtFoKHAlWqnWdsfNmQsvYVY9exOo2NR9Gpjx1eYIUfT3t7yIph14SMC2tROZoK3RPhVKoVIlGP+hsea79xKtP2Lqzb88nUf9b6+PKQDC8P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709824697; c=relaxed/simple;
	bh=+cH0KMIVS4Ux8/QKJGiTnrf1lg82fO6RldmyF7wO/sA=;
	h=To:Subject:From:Message-Id:Date; b=R0UjWAAMrxUMF9YGDDKK4Vg/Kfz2WObWx+gnDW+Xne2mxonWWEulMNyCbekO7zNBwCj0x0yK0pzZjXtK2Jl1ixewR/HkArKxzKLDPt5+KkcGLA+bbwDwyk+vzCCeSr83jTRqRuT0fuPOJrtsUM3zz784FVPhs0ZDlzu55c1eX8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AD2otoXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AD2otoXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C3FAC43394
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709824696;
	bh=+cH0KMIVS4Ux8/QKJGiTnrf1lg82fO6RldmyF7wO/sA=;
	h=To:Subject:From:Date:From;
	b=AD2otoXkjHWwepNWJ/3IeCfoyeOgZm8LDrgLHyceJCgeZ9IMUgsmeCm9zFFH60omp
	 Zye49ff3Q66c5LqUfRQtTsYptNzLltBR9Epi2/k8TDyRI/eCnmfjC8Uhkpe75+ge6o
	 IMndzqbiDYpOH86zNy6h0PJ2j4W3y3EEIFkvppchvLt9uQEkh39kSWZ2MaNTBZQcc2
	 goLy2sW40kmZ6Erpx2IX9s9/kKomL9sHXBXisH7Ynx4l5vFmJZN+v8DqXVGB3LD458
	 JsWkko20SaN6cX0bMPQmBfq7O7HDVUrUo0jJHAwAQ+R9ug1N1Jg+CXE4swAdmmOSBq
	 C1vv+ULgU7O8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62941C54798
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170982469639.4455.14500592891219802496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 688272ae8750b3c856a5b18bcba1e201fb1672c09880cdab3da70b6fdaa567c7
Date: Thu, 07 Mar 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709824696
