Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC063D994
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752342595; cv=none; b=mo3CALSgJacUThL/tOUdWMzyx8qsu1ISYET718tBlCF9v+mf5nqfPann2yBQplSfNwKHDC2cAcetOG9DlnbKmvsBEzMlWa1SVGXZ8WQDzAQ7vnnU4bdSlY9gMHJhyNwXOgu1/Q+rdkGH9DrJ8RgmV2Gh34q009HKOyqjIwWbRWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752342595; c=relaxed/simple;
	bh=J8PdI+sB9VL6QnpzfyYLGGqNPqhSTlU7ShZapU3g/4o=;
	h=To:Subject:From:Message-Id:Date; b=pQ21VvsJ/v+UxGyU6xjR8txLhbJK4WPw7P+W4b4m3c3PvcruEQnXyCrs6LSt6UD6dEnn/vLjd2S2CLNFvX87xwkFqZZOwKO+gOWhH9cqSLkz094n4n4FWAeczMUyCStgj6eoxk9PurgXh8hlDiyqKoMbZ9z+9+ub3TQ9Hdy+8Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKyoaye0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKyoaye0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F00C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752342593;
	bh=J8PdI+sB9VL6QnpzfyYLGGqNPqhSTlU7ShZapU3g/4o=;
	h=To:Subject:From:Date:From;
	b=NKyoaye0TvHHgb2WcdUYQSChmTHkCxuT/KqnRufTfPy6bJyrYMz3fZ1Y3a3LdBgCr
	 06LAO8hr9IMKY5cEVkc/xXpRt+qfCU3v6/vGnYKhawNY+XH0no7Al6PcEp0ANfCgSW
	 x/B1UU+RNdWzPY04igTMtMVe07CW6+9GoEgRWVvAeHcT/JKKAx8BRwOqkoH9vNtEJf
	 Bk7mJB+5uJ6cG5X0wt33ByAf+MYN5fhCEZx789PwK7uCfn/ch834U2Ksk5LFVP2sD3
	 Ep1Q0qL83u0jQX8N4BXte3ha6tjktXavzUEElmTWcjrS66QUz5rqS8JX0XRwKXK784
	 QziBqY//9ud7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C32C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234259359.4451.9031462310541739610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9971eb2e6c63f0b1dfbc702b45d766e3be83e148b10726717ca4afd98e22b158
Date: Sat, 12 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752342593
