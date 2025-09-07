Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167D815C158
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757282394; cv=none; b=TwbxFCpfWwNSLXGNeY5GLkD82tu9OTthMoyejyEy1OYyJfJl07FigRTrbZQfa0/8fW6ReWI/hkuDtY+sX8bh4ceW2Ledh5Tfayl3aq/RNZhWa34vRXoiw43Ju+3Eh5RVBq+UvTo/+1X+AHg98KcX4aqtjSBN8LYVchwG3BW73h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757282394; c=relaxed/simple;
	bh=Y0qzHmFI9WqOHJ0pVGaWPEMYw1WLRPiG81qwmJNWw8k=;
	h=To:Subject:From:Message-Id:Date; b=W/2t0tumCdMAV6tEzs4KyskXMt2SrbZLOGY/O2Znh3wNeetcG1LRpqa41xFdVSOKjwSB+WNGBp/IdlWfLU7jJOqS9Xm7udo45L7ha0YiM4SYprWWcPkc5S2uSqDn/vd3Op2VoXRXo1dSIrUXZjifJhDgugq0f+sKbLC2xhmMSxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxr35Zs3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxr35Zs3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A634AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757282393;
	bh=Y0qzHmFI9WqOHJ0pVGaWPEMYw1WLRPiG81qwmJNWw8k=;
	h=To:Subject:From:Date:From;
	b=oxr35Zs3u+G4yYVz+fqKyoTNqQMVRiPFeJCIXNPleLjk2UMbdJtW5TFa+mzlcvPkG
	 SMyTRhZT/nedUylYEBTV5UfzUr4Z16NC9hCWqr6GOXdeZDMJkKBXGYfp4KK2fO8oq1
	 BlB1yldd1D44r2NMyRrQK6vOdOrEGDLO7Tl7mOcsp4SevZ8eWBHP8BH/EYmfdHFTig
	 1A0+gNxJ1ZihB60eymH7WOTu+oX2ZuSCNU7XUKKx7F0/LC8u/swPk18t/gl4c1fNGK
	 UdtnpD2/6J0Yd/qDbeGvLZgez+qD0P5EyZyAF08KxDwyQ1PkW5JOiVGQ5uSjMSXPiO
	 jUnfnD2Jyv+6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947B1CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175728239357.30319.1004171176616626185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324a699dd4d55479cb7cb71ed8346c12cc46cd60fa4f7aa9c6493e7854fa4872
Date: Sun, 07 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757282393
