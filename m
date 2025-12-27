Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350767DA66
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766820834; cv=none; b=ungA7spxCUQUvdBlzl9tDuCtC0wI4RqcBb7AStBSs9H2oi9JuC0LMxozsT7K8787/IgTgZA/xWZNzZvekPI/gcMviuAZfspdjALvk2+6Nr/MFlZIUKWoe+M59a0dmUKy0cOiPR9wxTm7qI4AZolWaHFQPjkEAMH+r4s08Eh9+d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766820834; c=relaxed/simple;
	bh=qEIiAkMwuYF9XhCW7NtyMZiWG2WW+1ufnbW/Ere8O3U=;
	h=To:Subject:From:Message-Id:Date; b=HYpwwINe/YL8QQ+FnvvZHTJmweJs1SPx0zlvVdCiDRS625edduEWrNN3YaIwaxIKe+auzzuXzznc6zimBWu8ZhNp3x8gpnI9xaknlLNY2TAcTtbtjUPeby2YI+gRKf/dnuwznKQuHd2v93PiF0kkvdoC1Ak0fYAZvKRBE6phY2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izxvYzcb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izxvYzcb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE98C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766820833;
	bh=qEIiAkMwuYF9XhCW7NtyMZiWG2WW+1ufnbW/Ere8O3U=;
	h=To:Subject:From:Date:From;
	b=izxvYzcbYPJ2qXT7D5n/5VJFU9FeDyHDcfsAPTmeJurURhisj4Q0B1G05FgzI0nYO
	 74c93/acbFAjXO47mV9O7b7c0WUO5js4MnR9oT5eID2mBYdwH+WpyVwV7MCyIRVKqs
	 cLermY2+7HsZzNrFS9Q//rJFh78LPmA49rLUV1QdmI+gi5VfYhUDP3z7mmRdS/UtM6
	 ULdKw9PxGo445V88Xqo14u/RN3krh+fUUKtXBKNJ5FYEK6g2gzE9Epo0hBTqtevjlW
	 PTzwLaJeYL01oYRm7ic0+V5KgahOPODGbu3KvVg+g0daD9lE/i8Q4j0uqAMWFTih2N
	 Gq0rdB+npmVRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AA4E8FDC2
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682083358.6983.9878457494998000999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95915e49c3a437fd772ba6fd7f5ee38f326d9c9e23048c80926158fd99823489
Date: Sat, 27 Dec 2025 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766820833
