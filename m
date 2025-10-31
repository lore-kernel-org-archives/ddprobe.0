Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC38229B2A
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761923394; cv=none; b=B287bQpWvZr/L7EQVcmJq0zQQbi7wdWQRMUUGRzc7NkBIbxsqnp0aGAR2lRMGsU9bQjwsGbLDdYmEEo2bo7hDDQ1DuETw1ZPScuhbfDB4tS7LbtWJyUKQLlTc/PvSYWwzCBXKc8PA6sbzvIGEFwrM2z/bsBGNzCuOC3G7fp2Vrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761923394; c=relaxed/simple;
	bh=hijRZf34PeH8RFFJnNW5dMXTAiSlBzXR7A3Bx6KcQvE=;
	h=To:Subject:From:Message-Id:Date; b=IZ4slI8i4JzUl3j0b2/Xn5XnqLd9637bRSjkxoBlKo4Lt6Aib98VwIYGF8s3QCPNrtpZb8YFdGcd9N4PZOYokNWUB+gIfdBQwS7z9nOctaEUoxRkcqjw6F8h+/Q1GsU2IMMjiWpHhjOPWkUltu7JV0iAmBmg05H9p8xKe1YJ334=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0cPAXqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0cPAXqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E1BC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761923393;
	bh=hijRZf34PeH8RFFJnNW5dMXTAiSlBzXR7A3Bx6KcQvE=;
	h=To:Subject:From:Date:From;
	b=s0cPAXqhvP6+DaN1mPbkpofIb4/dtdhwAT5dqVPU5zFZBmQykzO2TML0lMBWhHEF+
	 B7pzcOLV0SHg99btEeI2HzuDXdpKVWrymsRXOKKRGHu2XGcWXwgTz362cA8XeerdGu
	 Lm6ckEyCG5FxmH8XdWLzBy2xbR0ZpUrhFsp2UdDfAQrvnMibGi9hUd2g//nPpB80ik
	 jtRJ3YzjBgOKXcY5sSUL/Tia/zZAPxgQuA57skM3tZYIWnYuExFqC1eBy09Ulxijm+
	 j2eHRPLAYcDgjwBJyyiyHhARE2MNH/m5ShrRAETUM/+wj8kXWO9tWyeSHC/M990BjM
	 BjbFMHUtJxguA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D3CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192339359.8795.7678610389307905724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f939efcea5cc9c6f66b1dbac6388ec182caeba971cbbef1c4d3956262bcf3b5
Date: Fri, 31 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761923393
