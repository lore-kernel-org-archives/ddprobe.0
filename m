Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F80940D593
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781915794; cv=none; b=i2oaAWSAF2hEXnLD8ggInIKWi7L/97e3s2MLfkuyLMolU4cxmBX3coWBz0oY3ZxEDGYQlcY6YZ1LTTI8pdsEnQOc4vjxnGAGcpMgUPtppCc7MnwdsPQr4RUCI/Q1hs3+5NFh1I/ZGXsCrcsgOGxShwUoMnMQLhttzfrbcNtZObA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781915794; c=relaxed/simple;
	bh=+Q8+ruuu4ZWynu1OVXJm7IA6hZvCsFcWwYOxE1I1mgI=;
	h=To:Subject:From:Message-Id:Date; b=IiyYewxpGl65lY5/2lvbeCT1lGmvfpFU5eF2MtF5F6/xLxuY3H5lhpUgQZdfotsNgjRq6AxCGfFBoUz7yb5YtW/VdOxQOBY9H8H6wbIVo1Tt4JjxYj08YS1OsoGDnTXwahZyr+gi0ap7EzldJBSHH+gveAtRLXBK8/weuX5SzJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tM3i2Xle; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tM3i2Xle"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77FBC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781915793;
	bh=+Q8+ruuu4ZWynu1OVXJm7IA6hZvCsFcWwYOxE1I1mgI=;
	h=To:Subject:From:Date:From;
	b=tM3i2XleBgwAc/4n8ET6mZB4QbRJIhAjZh/CB1W/HxfvwDmS1Tq/nxxkdOfHvIghY
	 RmlnIJ6y3dY8/x8Qxipznr6Qvfp+GgsF5wGVGY0gUyQ5JIRXkbNzRsqvmneKBHfiBM
	 RGbqwLTgD2kpoUZyA21ikJbZCDz8xHwnIH1tFJshcEtwWvx5im8xddqVUD5mzgZtWW
	 uUDbwn/CRV0hKxqvwYb1o1HdhMYUMzS59tPYub6Yb9xXI7hb6jXZltRXiIUH+qW4WO
	 FwDiGT0B5HRpJKkBb0cHNglZ/i/McZ7gEzFcvwqud/j7iMz7Ob9g+bONuVNshKQHXA
	 /wNoU4Lfcmp7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB25FCD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191579369.14195.9056320500883026753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10df45e0027e402ca56a3487bdc4236973df6c377860fd5e895d7434f2e67aba
Date: Sat, 20 Jun 2026 00:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781915793
