Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2565EDDA9
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762427394; cv=none; b=BVyC7n95imjfcKezZ8CZzNF3ZYIPDto/t/X9ZWRzKW5mQcgU6kohT0ZMGWYc98V9sF+wGXGSUoqRsmjXVvY2k95Us4J129PRfFLCmxvhaJTnEVdN4Qv4u4Gasd98p9lwMwd4g8iLDo+bzaIMZUrIgvjgDgDTuFcaOwjt4gibTEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762427394; c=relaxed/simple;
	bh=OishJn4Fwzfb547VmMaS59SK//5MnUeAJfV/0n7aY/s=;
	h=To:Subject:From:Message-Id:Date; b=XBjXp/urn86F+sMEXQoMA92v9c9OYuW56T9QhZovc1Xl/U3uoqsDqp4rayixVYkDbOS7UPwEvbNa8T6k2wa+feN83tohZof/7Fn94jim3e9/62ZZ3CUwL4974mCEGw7A8S+1Xng1Vg962aoWD8IUWgxD2VZVx2XPNjYqgr5SUk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DakbnJv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DakbnJv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4EDC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762427393;
	bh=OishJn4Fwzfb547VmMaS59SK//5MnUeAJfV/0n7aY/s=;
	h=To:Subject:From:Date:From;
	b=DakbnJv4Za+2FGeERAj+VCi9P3EmyWa3JkiKel6qTEiPNNS+I/ZOVAfXowTROdcGL
	 2UNITGhUraAoAC3uFbRVMHstl03LpYw/jL7Ck0Ku0Y801rXixTUd5iwr17ACS2Ro26
	 zcMMj8xBelBzmQoAqly9xPDtR/xfcASoz4/AikRVWSMX23PYMDFhN0qZHNNJml8/I4
	 TGYKkv2l/DvlLMiNKSvie+o/M4+dVncd1gVlMbFO5UAXfhd3Dwivobn4HEBLanYXPW
	 lQhbSLDQQ0mksftwB6Nokyel+Tf9aTxP4cQ/dZBp0vMsU0mwaCFVVFCgg7/by4RmaW
	 vO5qSd/nwmYZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F74CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242739358.9053.418626518719628500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d398b2486a9723bdf9a14b805952fdba9a2aa7d4210fba0310464b6434584e
Date: Thu, 06 Nov 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762427393
