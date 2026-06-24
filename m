Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA1C35AC00
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782283594; cv=none; b=vERhJUWALeuru0kzOmsVjh1dxYlvciZ0bhbwdEv48T62GZsN8f8f7N3817v+0hsQXQCFNipBUGsPoYsfVYUoqT0mScFpnFNS0gWLGPv0lVg71eXxFGSM3fvoJyPK/kEoJ0Iuw7MDSj16mXn15uAbNhszncipzrJMG+RAFpY9Hrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782283594; c=relaxed/simple;
	bh=7I9JQDkjc9YuWeCFbiNoL/83UGDXn8rujdh7ZMsoEAk=;
	h=To:Subject:From:Message-Id:Date; b=BbpqebCqA9ChlMlvtRVAJMJtktSUuusufcWqFF28s4pYJpLqlNfZpEFIB7lUa+F4nChyyMHH1yrbs8t5VSt5JJIEYNakYv/iXI1T1cayydMpKW0cxWQEyNer3TwI7ySToZaSPcLs+ZTRNFqmHhjTwvt28rr6NbJyo3MhrxriNR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHfthYjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHfthYjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB82C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782283593;
	bh=7I9JQDkjc9YuWeCFbiNoL/83UGDXn8rujdh7ZMsoEAk=;
	h=To:Subject:From:Date:From;
	b=NHfthYjQRiH6Rdg01ZSVPvj9070rlWjCYtYLzVDersWeEo5ZHnPjkrZWnk5QG9GBr
	 uro6GvdONMVPUVMx22NDU9OJRyNjCpo5VMA8kYlutbEJuvDPW/k6wwTbzLh8ScXgrb
	 nA2yN0ksGdO9s+k3HwTn4iY536G4VGglPnUzuh32R5HV4CsLsJaN+QoliWcN5xKpFe
	 VE1LLXftxDOOgbi/UMfIiXOyaa2RGUCyXEqXIAbsVt5EzRdyy+1DA9oqrF/qood44I
	 N2L0oVl+JXz7izTQGjdAxjIhHLc3PUOP3Oxj0VEeb5Fzq/+zftQsAamaRlqTWawUA9
	 FP14YcyXxXR6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F5DCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178228359371.11400.1438997044495705856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1192b4b4cf018f100575c93407936318fa977edd65aba8ecec2f1f8b7b0d766
Date: Wed, 24 Jun 2026 06:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782283593
