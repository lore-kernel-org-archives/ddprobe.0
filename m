Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FAE3438B3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779236434; cv=none; b=bcXNfcopiaxS9oxWbMMoOnut0u99bXyFBIzyvChGzOZOcSW8Jv7ZGtP0zp6IOpoE0HBp8LT6W2hmSQC58zm8gvvvNuKgXf695JCCBpvAI9+MkeUk/TShCHHHWIRxTY1c8Lbg3IF3xnXmRemBWh6sXptWN2kIyLbw4XofRC9Ioq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779236434; c=relaxed/simple;
	bh=hRyaGs4EKj/qJ8/sOYAawBs2qjnce8y8jTC/jEAvGzg=;
	h=To:Subject:From:Message-Id:Date; b=YF9FN/D+6mi+BNd+EzndyILuqLebFXQmfUFliBOIm5rD9AjMENe7+e2kWWhfKphmzRLhZ+IG/eBFEcKKFos4wS7XGqiskZZDq1QwL/UZkPRCcUKimL1Mfn1tGqNZVH6pHzH04e+oHkrbZg//gUrmkAT0CWE2cvolkc9LnUni1pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCcJjIs4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCcJjIs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C818BC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779236433;
	bh=hRyaGs4EKj/qJ8/sOYAawBs2qjnce8y8jTC/jEAvGzg=;
	h=To:Subject:From:Date:From;
	b=XCcJjIs467kofSRxruTnO3HNVPObN7/g238jSNtYwgq+tSUKTg8S1OElOSKKx+Bhi
	 a5N8JYrOrqHvAseUXI2jwepjozpdYlosZIjhluBUPQUkGkkAq3mwyyGykV25r4ChbW
	 YBfiJc2qC6FgwNc37r8ac/p+qsRmhaum200GN7FyTFugW/d5NaanvatkCFyY37UEl9
	 B2ZGRzpgqqtElC0iS6dwEx0tDhiUjQkqEjMUHb1KeDUePSxNljcPynKXbqXEoTmHQ0
	 xxNUrLQPsWRtHGNzGHekZqFCChP2qQfUs/D8WZGPt9DVBS6D+n/Al8O9K9iIebj9cj
	 +a3zj5Och88kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFEBCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177923643368.23323.8641357876003800809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f47e5245a8d3f10a934e9f82b0d4d55f695f19ffe3f542c8981237fcf6e750
Date: Wed, 20 May 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779236433
