Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588542DF717
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788662434; cv=none; b=UXCJ+TwmwrsYavllRguGOcT7sNJ5FEjkpm4i14PdKLMvT3A+qS8Uzdaj1oimEMdMQ0EjT4Y69NQZj4HLCASRXY5Dq89x7uVMc+52oLmADiCcMUnLQqBGuDt5xU0PvawtCZmYbee2tj2gRAWjxnTBCNbeEA8c7JuCS67kX9rZwZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788662434; c=relaxed/simple;
	bh=d3b3czrr4Ceewbf8d5qj8DNQCwhWod0CvsmOkrp5wWU=;
	h=To:Subject:From:Message-Id:Date; b=gEvU0c47r1XTif9N9CVo++VQ6+6JbXXC2Vh7xjWSEvxQQtesxy0JYCEXm4K8ks8JjuHhenJuTN7nqinyJO/yXhv+TvuRygq3uT6xDIGWG3TKRgJjtW1NDxJ9wV3YmU9sr5XfkEm33Mfr8lCJR+SUnJPoZCi0ZCjIMyI82C/oiEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emKShTRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emKShTRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65F6C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788662433;
	bh=d3b3czrr4Ceewbf8d5qj8DNQCwhWod0CvsmOkrp5wWU=;
	h=To:Subject:From:Date:From;
	b=emKShTRDgOtTK54jYtcvpkSKGuIcJbHd8DvmXAycwip3/qdwC42rHycAfuPJ+QqJA
	 ISQUkBR5jLHEMH6cvak5Nmku0pLr0liN4o07tn8tNiVHa86PyvdiJ/il+wwP11slnO
	 /uHBKEQENY5FEryAwA4CKa0OcsxmD0yRF1npPtjrKiZ0EvPxZ4GTM9mCTJAwwZvKSj
	 BMmcRlqZXL+SYU6ophwbaGUC7a2LjXpNciB0aO/TqQIYARX5BWzqE9L07qCTa16cUJ
	 0wnHOshA//NkzKg9hTKKUjxKYO+9VdPekVdRNPtH13p+vc7w0F40KboftpMSzJueWz
	 iPRn5V+CF1T7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDAEC624DB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866243369.17249.6883110011551720269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd69e6520e016e39067747da2741087f1b7a368cd54ef4fc05a2771d1f04c79
Date: Sun, 06 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788662433
