Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278A9281530
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758625794; cv=none; b=GXqK9GO1kVh+iwzaO66nmDiwFTs+WMjoLMJq62+HS/Ff1PRKIW0p2WFa3Pa42piE/7XoJY2sm6fJgpPsV9Z8SZs1XiRLBO+aTbE/cloJ93wOd8bpcVhQiCTZLHKK37rZXvwg9nQS2dKSrD1qMgobn+apABy0MqPNNgrdr9f10VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758625794; c=relaxed/simple;
	bh=IpkX0o8XnY0Lr983JwlStHC2lXqzfTf0q7BZrzv3P4k=;
	h=To:Subject:From:Message-Id:Date; b=NXz6nKT8KHbNKzliYki2Bpd1Na2hYTTuopERuZD5rfJZ0ENPgrjORZz++isQ20a8i4o0ur9go8QaHcJp4T1R0KmfkTozjMBqUWMzqhsPclXkQwJDWVE4V3h9ZI0P7y74jlNQC2yqeOBIllnJUjCwPLdbAaN+HzYP9C9nShDF0GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPGCaIRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPGCaIRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEAEC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758625793;
	bh=IpkX0o8XnY0Lr983JwlStHC2lXqzfTf0q7BZrzv3P4k=;
	h=To:Subject:From:Date:From;
	b=YPGCaIRAZnnWjgpD5PwHYSyBPQpSaY9iYIYUG8l+Gh13bkWFqyrmznLr1x2Xq5lF+
	 IrUYJcrk27/LweIBVOZ2fVg4DW1coMubotve9w2sgDKBxtVVe8U/z1SMaj/qibTYAD
	 dCYJ8TfYCVmUbIzpWQIFjhOx3XfZ/d0/ebpSww6dlv7ObOmM/QdQTFFpANBJOjev11
	 3idDHqTdqrLsiCv3tcVe/aKgR2dZTUo2714KXJJ1IqBCodO2c6uo1X32q/BbG3VIy0
	 2lchMhMDoUYugMzPJuwm13IAc2SFUbQd1N6q9l6gUB9gvlvX2V5cYuQZEzUwVKziIq
	 lLooPV/z+MPrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9058DCAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862579358.9311.12586359774146649065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b1c5d5fe1f5b58b832297092d92b985e37fdeb518ffa1d3c89496f60be0e48d
Date: Tue, 23 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758625793
