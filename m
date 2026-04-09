Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2853321DE
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775762854; cv=none; b=uS4V8B3m19QZ0vaQd30DKh2RQ2QNDKLxQgZG/8iIg3uyfgOT21M5yTbYKKv86YZdziQmRx5q4vHsVLE7cTsFnoh4eF/8FMhcaKFDLzN+0U4yfJvgqeoSrsER8g+mACWSSyG55i0cmHDi5tVCGsAOJutF5W00HEALVhl1heUonpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775762854; c=relaxed/simple;
	bh=JxjBMsgoqKgJm4t4RHrDrDs9HnRgCO6FkHeBi3I8Weg=;
	h=To:Subject:From:Message-Id:Date; b=T0j/u1vlYrGERSgPnYSOyeYkzcPhZ/n5ocwstiZ1vJDsrlGDYIkCuQjtUZO1wzyjmnYMVKKtZCOxUCqqH/PkrXKNUBUjzu+oirPy+Te5xZt4aYfE9K+eO2J+1jN6M31T0WilNV7lgkuUGR4n+vDrbvfw9Hsoq/9JlpSxtaCOqBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJ95hz5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJ95hz5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD78AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775762853;
	bh=JxjBMsgoqKgJm4t4RHrDrDs9HnRgCO6FkHeBi3I8Weg=;
	h=To:Subject:From:Date:From;
	b=eJ95hz5WI7RTgtwKGpsPHpK9T4uItQyvS5gd36aXBqJwwb2Wo3FELBP7DhyXtl+lQ
	 ZuRvEmcufCSQO044vlzDeyIrcysbADsIE/iNfFjdfIOHpmfYRzwMpSHBOIWdJcMohW
	 fJ2yaIRkh1Pk8wn9Ad5rg7HS8MkJW9qN4N5CA1OyYtjwO1QTiodIaS0un6zM+y+FTM
	 E3k9TY5uK0UbmtNqM7a9e87kP7k4+Rh+kkNKMRXF9SVmB3w7YiCbIz/XytmxLkr07p
	 2y8dBAuwtrL51f03YqRU2O739zEzKJuHKSkfrp/VEQ58JWVqnFKJIo313hFAF18K7T
	 Klrqfm1Vega8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAB8F364B1
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177576285368.1977.3933573653070144005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7464d5c9fd80c44ac569fafc38551071c2d00634e1da83c7b164f5aa8fadf28c
Date: Thu, 09 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775762853
