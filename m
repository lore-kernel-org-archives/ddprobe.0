Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4711519882B
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759535394; cv=none; b=K/GUE22/jEgfp7VG112Z6JpIHHFiv/ZItPTE2JhjwVJ6ohl6IhhXvnKPDbz4uzsrmxjHiXnGq3FLEDl6KQZM4jjmc5HD+cnzyPWK9e3YTJCMfMroj9sOYWd13A+h6Z7IEmeS73l5C3ZvkXBPBdrD3Pkgox+SvISfnuvapCLf4LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759535394; c=relaxed/simple;
	bh=CEBjcykCikguF6bmwFvok8cARchFj6TestlCAoESXvA=;
	h=To:Subject:From:Message-Id:Date; b=db9EckgDtYifVwbWDJIBizx6tn0mf3vQIlLW7JGU8aBgJXHgzRLCIN694O0Vaf//7fchAcBLUmloBu0GsZJ0hvF6PVs1kWayd60htdqeDcPeY+UQfyvvQTJNM2kVQPBoYcvzxp3kIpW51YPmhLki4/eiFDLPFlI/eYQPJ031jEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzaiABSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzaiABSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD714C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759535393;
	bh=CEBjcykCikguF6bmwFvok8cARchFj6TestlCAoESXvA=;
	h=To:Subject:From:Date:From;
	b=hzaiABSNEDecaCkAKc1VFBJtll7fcfHZHIa3SS1JQi5FHa6Z88gh762UiCHog9d8c
	 HAuBhbO9/bv3hdXCUY0YD3QHKyrWcz8NZl0ydUR6eypvkiFz1RGuaBKPI1qb61MF5/
	 hbOpP21zymEBhdXxFWr2IxpijDgHNoMWAjOqHDYApWNHAFAYP0BVaV/9DjgKMjE9vz
	 HhyZQ75NTb9/Cbd1NZSEcOv33GvmijWoVPYDLyBIlTU/D/v0hX4k5hfCz+qo8W25VV
	 60GgHwbCjTyTf3KajpZnjZ5dIwpufWgvZ4/5qzBnGHioTHmXRFMndsq9i+HQD+lITA
	 g3hCESM1waI2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BDACCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175953539359.6994.10161820097775543327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38beca83bf4ef84ecb9e91327ef71ebb18c33c3f02d14337ae2f0a8b91b485de
Date: Fri, 03 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759535393
