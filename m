Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E742581
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759604994; cv=none; b=VDI3cT09Ask2zVlNeMDpFoRFc2ApHzvGpsC4MjqvG6T3WIAHTjbV80FLSOyOxge8KjLfKAkte8f97vC8eU5t61ECwKltWDtoGBbDLS5TmJNX74PYnFWwNnziuLBSVnqD8mmB90N/2ZEL+NFvz7iM1LeSUPr5D0St6oNzzmEeHtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759604994; c=relaxed/simple;
	bh=60jXLXkXWREKAur218gOACXgT8NbyaBVxL7+b5rrqYw=;
	h=To:Subject:From:Message-Id:Date; b=k8phXgBHmXcPFNjzKKEfCP9Q8EWPX7SH8dgdhoxUvA6+WRuhSWDTItDwISvZaQQ75ffamfGE04oSczRMsdUpY0gt4kVwLnEdkiK++vU+/7NLZ0WOjQ9AOOYP8cXjRp2z2yQySwHbLvy2F1z06ane8k9FyC0weFl4N35rNLsaKRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eopGhmE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eopGhmE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20FEC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759604993;
	bh=60jXLXkXWREKAur218gOACXgT8NbyaBVxL7+b5rrqYw=;
	h=To:Subject:From:Date:From;
	b=eopGhmE/5H/kylvYzpuZBFPLZmjCQwuAfShlsK64H9kzZytTptqn+D1zO02Yo8el6
	 /ge6xrhPrXuxqk20UKqz6h7r1t/gHpllCFBQWkPscNxry/BCvZOj2mvHc9hKY0x9Mt
	 7tU1fkicoytsaVHlXZedl/IaWLNqe+uMXqlUgkPpVYQlG6vQAAiOaIH9ftUUNmroC0
	 eub7ffWfgc/DxyUqeYEnQ0u4h41nCSQry+Xai/NC/2Kckrw2yusdvFkmKa8Qtv7pLE
	 4eg9WrG6PWR6EI1KCiwzETLMazzEAgRUtBH7B793DoYJAcPEgtqFhSm5d75JdXc9W8
	 HEa4kRiqOfefg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC0CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175960499358.27342.10400702395557694213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6067e469b88612acf8016c231977a5a7e07496a875d485d4b1d65c45ec12e30
Date: Sat, 04 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759604993
