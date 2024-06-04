Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8133ED535
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717544783; cv=none; b=GY10+RYd+OJQYbQXwQqiFbWWjgmjubwQuuSjbA5IeD/hoEvALK/VPeOdVKVoTCNouocymu+Ul9i0xgsyvqGDhkI3teCijQ+O+tyDljjKYFyxXTLk+3Gy5Gwljb54Z8cJ9Mc8Yh7K5/gDQ0D26zAZ1EYOl0INzHF/cDUIIPaPs9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717544783; c=relaxed/simple;
	bh=XUBu0L+1HWdrS3FcIMhiKMJ8sDT0WDQwpBMMaz/VdEU=;
	h=To:Subject:From:Message-Id:Date; b=qlSl3RVkNjzYOWFx3uaYa1GqKHmXx7VkePyWNIfeXiptlDNs6Pvwyq5TRJjcN44xgD+3cfrH1DQCFBQVpYIdNwLl6so2zzc4FNQpgH3N1q9JnGI8Dp6aw1fccNCTdgIdVXrk2FzOyfulg6lAhZm8KWBv+xxviVrwBb+QZYuBjiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLpE0Klj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLpE0Klj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B023C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717544783;
	bh=XUBu0L+1HWdrS3FcIMhiKMJ8sDT0WDQwpBMMaz/VdEU=;
	h=To:Subject:From:Date:From;
	b=JLpE0KljyOVBJj7xo4XaQRkRIgT3EbJ7GEoG1j8TpRyoAxOo+uHSImjgPHxAcK5Vo
	 Qthr7+b/2AmYJpT28V9ax39FAjehgXAaYR+hqNu4S1ZVGm0AmeAtrfRzSeN9Gz5RLg
	 4sG584twpe4zttB9NBd+Ddfc62TDv/r7q0Xz2+Ij53seVoz5HGlSd770KRFa54E+zE
	 b3fapE7AcJtbn8TyUJ3knZXiT8VKugxoiv3bj03WFldfyTm64d5UnDj51wKvfj6jaN
	 FlOVKWY7f2mhgv0yNMSoYtUJYtSISP6JYN/LPJIBOco+hR0NVGXaY3ETfp2lp28DKs
	 2UuSs6ECmhg7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D98DDC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171754478286.14456.6232246040135074813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0a3f5873f2be1c17ca4f758681b8383a08eb9d35ac9865afd3b1a381240e2b
Date: Tue, 04 Jun 2024 23:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717544782
