Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A861A726D
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727187954; cv=none; b=pnSefSV8BT86q2FJzjxwJCWUIyG6LE7HLsru9Tk06Y6XTdkwrVLpKmzgvYlH3zPnSWxPs40lbjeGxMH+6UIKRIXfHWnCpyOpuN+IJCJMep3HAvimaP+zlbeH4/vs5EBhwht3b9L1ZFNo/BOqHEHFAXYHW+W1/0WPOMLUTRt6UIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727187954; c=relaxed/simple;
	bh=9z09wKwQ+4hjKQppR9oB7R9Qo/+590/42f3mumngAUE=;
	h=To:Subject:From:Message-Id:Date; b=E2aUeBhL/U8DwNVyVYN+fP898HD9mJ5DmwA6WkZqX8G/3OPAgDMcO+KbqRw6nVfnvELSs/nPLIEF5HlqWWhQ0hMzi23Hpcu+tM33ZItTt2qGM0CyFJOn5yRRPxPt6TajbhwsbFADfrWEO7yNH0VaKFhP7QKiBwyVYv4Fmb5vgP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crgw0sF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crgw0sF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E45C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727187953;
	bh=9z09wKwQ+4hjKQppR9oB7R9Qo/+590/42f3mumngAUE=;
	h=To:Subject:From:Date:From;
	b=crgw0sF5Yp5yU/qeTqhpDhiZiUUQ6LXcrYNvYpfB28b+uXZ9IgX9h0AWSrn1mmHWO
	 6lkJr2/SlkUa6jNyA8x0McUUz6U8fPi7Kcy6uDVAkvItX2SbyWypOMwfKNcNkYqMGB
	 ng2/16tgi/D20wmmLTFZIPtdmBqnPQ+e7iv2YCCvFws7Ton3UiD9IxrAIca5oyIJd+
	 /izCKwDAjMEkSHFwKwywG3Sq+JyGGrsR0n6o/vzPxsPTtod8OzX8p+I4OZVqbJjag7
	 U72KRZ/UG7sPcbC9usfu3Ka4DIfVrcnbN847Z64nVUtGCUELcadUKn6Plu+y4YCsc1
	 97U0Or37oR+6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955DDCF9C6F
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172718795359.9568.8982417342453927438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b5ab4a977f9f8380249ea20a789bfcde85813a67a06f589c000c6d696dcba2
Date: Tue, 24 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727187953
