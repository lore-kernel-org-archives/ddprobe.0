Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3AC2F531C
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750196395; cv=none; b=rSP/9RQ3qusuLFT+F3aLikDjlDN8jFlTbtQKEx9E+RCs1ehwY4r8tYWvOp3J3oA8RBw7iXI4NMy1hcLK5iRhFGX43y63HazE30Qoknw+GaGia2bwv2osAdfR6QiwXBlHIrcMcS9zlfjJJy9bow9d3gf6QYEwnRKLUh0W1HDTc0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750196395; c=relaxed/simple;
	bh=1LXNESA83KHtht7qnfR/9XLQS+cjq3F3jCfC2p7v/Go=;
	h=To:Subject:From:Message-Id:Date; b=RUqxpMAJZKe3QFUS5znG+3gsBx/jqt3LhUPYqWQlDQhAw6US+22NGPv8dNgXZo2jBV+gB4RtKnd+I6poyxY63OHyBN4APleM6UaQJwhz3O44sbsLvdy+4uDaplDojg8UYZwjCdbzZKOBM8R2V/9VbuNl9jWDu0g9LzS/bQO0xuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0euGzTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0euGzTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A440BC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750196393;
	bh=1LXNESA83KHtht7qnfR/9XLQS+cjq3F3jCfC2p7v/Go=;
	h=To:Subject:From:Date:From;
	b=S0euGzTXgPGbBJrt/VyDfwYHBaTH9REpB11oy4Aj71tdjieHmYNUM26ulOU/rNtJ2
	 ebbDHgJj0ln6Q0Mdfh0XOu7I6pSZX8Zw/wPmx/UGkfYDrACbHbRc62kPwhQ18U2Se7
	 DSe5SFPtNh9IGwva8TSZbaNZgSoaEVY4CZbKDCRuSBD8zpB5bWWy/MiSLInwK9mE6/
	 c9shT3RySm0CAJGdvFBltIgLWYSVnmrnUX6BBa2801wTpxFJxyheRLrzHCRqteXgwV
	 QeeaDRPWd4zJXqP3J73wd643cz7cWF1COIzVPQKj0I+kfBfFAtr/lFIy3KpCI2CNgw
	 r2U9HIjkKJZXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF25C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019639358.1983.15206186111544450097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a90c22a11b6aa3582128216f03a575bdfa59aa3b75c8f951162264362742e417
Date: Tue, 17 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750196393
