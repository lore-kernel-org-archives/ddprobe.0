Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F5B1D1F44
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730796954; cv=none; b=l08WTh728OwOsG+3cJ4axuy9AvUdvWPXbKvvhMXnWUPyU0isTY6/j1rQ8/eHD1hPm6fs9TeGnuWGAFx5PqwfF7knVATTTRA3GPgq9l8YkKqi7p1+PqkSCO6mOPW5Ig78h3lqCu9wzeZ1i7szgHZ8ExrRSxZtrgqCAjfuZ1cllqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730796954; c=relaxed/simple;
	bh=+0+vcFbcCuPh9pxTC+ZQLy/LJmvsUbTy4j9//eFhlwk=;
	h=To:Subject:From:Message-Id:Date; b=W3p+vdbNu0eNvBJHAV1E2nm6jql5y8E1Hr3R7K4auccrTTmliCJakOsRNJI9KwM6ooOr8MgNS09nZyqaK0wegWeH8r/My47CD09lKXXeStcBAlKj2Ce5WgAVG24IUy62ypeyWwDST0FcGaz7Vn+g9ZNZRgxBc5GEktYljbDCL34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpCXKGKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpCXKGKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB580C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730796953;
	bh=+0+vcFbcCuPh9pxTC+ZQLy/LJmvsUbTy4j9//eFhlwk=;
	h=To:Subject:From:Date:From;
	b=VpCXKGKEElNF8rTMia3CHKkj1WR3t0QFL3BHxZov2xUqBPRYHwFqIEPQGpuca5jJw
	 Dphiy3wyXp6/+U1Aj2iAFoSSbIDl94NQJBbgyDI6m3GR+kT8YON9o7rGfZ+YZjr3BS
	 ayA0gvsCel/rZCNPPhByeUNIkkcQSd6SD4+UmxhungwpPxbjaxQFlZGNHYKYFey9sG
	 iQhKxe2BSBm+O+P8L8skbH2FYQISTfrEo7gtcJGrnzaihYYwm+N7zcssZw9Ne797hv
	 9m1ub9eEnsXaZYbL7V6YQCyTOl4PWp7mLXC6LL6uhOLzaBorJvGyjpvhoNIRS+cIAY
	 Xoi19nF7Wa86Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95664D12663
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173079695358.6063.12416882289348083901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e9ce5a626605fa1457623c30c920c7a484ba55734fefde4052d8ee4d104dcf
Date: Tue, 05 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730796953
