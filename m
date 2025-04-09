Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB8AA26F474
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744210193; cv=none; b=Pb2NfZVmVrUSxUSfyN/OvmM3+tFV9QL5ELZTj4Cs0qH2dIOb6yg8+IdDJmuzw/fVgR2Luvv/vP0ytwng8OQMXvEKbrAQ0HoornylKJp6mmHJ3DctUoeVlvVv+o7Ef9Dv3mj596CTeO9XvGACxPigaqG2JQA5SgHLeIfXIbWEWg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744210193; c=relaxed/simple;
	bh=K9/2HgvnjiTf9sHdmeIeiVLbB1LKDfrHRv5f7ZW8Tl4=;
	h=To:Subject:From:Message-Id:Date; b=dhpsF1P++91xFHXP9iTAp6gb3wjHEOvyl2KNdTgjzNlQMM4po843DVgxMr25EHMrnALPPu8iPcpL8enh4sRDqmipeMFI0HCwXjRXxDQestKucd6epOqfnGwXZny3YmdDVr+5qW881b5bGw097YhfJsM49XvOmI7Ydj7rRUI1buQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4RMwLLe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4RMwLLe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B805BC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744210193;
	bh=K9/2HgvnjiTf9sHdmeIeiVLbB1LKDfrHRv5f7ZW8Tl4=;
	h=To:Subject:From:Date:From;
	b=p4RMwLLe1TpatN3P0Fo59BdnE1fa6bb3JFmKG6uzPAye1mL9jw5t8EtrllXUNTCly
	 tnlbIZ65Y0rZHNUOP8ruBp8TwJnFpNid3I9fF4JnU3sAG1TJY44BjYKWIAh9T74NVh
	 qw5Y0lmUdqGhCctRXFRRZKM4GopGXkSVjmOEpCWlgtT3+WG6gtYhYYt+icQAg4xNGi
	 xLDjoLqw+Lxt5ePEAW1OIIdQXcMoSvGS51r4WyrqGW+KgyW0x9QDWseHDMSwt5AD8u
	 e9Rc/nKIt3xrmNxk3suOSPK26meiCctou58cjlkA+FpKmhSIIQUelesraHC6USrGAR
	 hBTFdtya27EoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A071DC369A4
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174421019364.2607.11091871422620537399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8afae65b1457f5c77b8f5902704f2980a48d4c39accb35626aba4bfeb109f62
Date: Wed, 09 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744210193
