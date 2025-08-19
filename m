Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244452E36E8
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755575994; cv=none; b=IwE8Sg3DCeSdqDoBzH+lFdWSqBxMsVlDehTXje71j83DkgH0QSYdlkUp5ArRgv5HxY5fVC9yBIKVfb3p/KRH1p/0sH5fBunmaIqA9lEMmc5SGUvsFEYl9OK3x9USlmGRJIwOFU/Tc6Yeu6Mg2OVS6ejKkLdq9YJZkndwXVmI18M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755575994; c=relaxed/simple;
	bh=eX8X/ZIJrxmGgNYr4439b5csURywnvxBTfkLBSM7I+g=;
	h=To:Subject:From:Message-Id:Date; b=ZQ52rk38XfKjl7VnxAoOQ8iRabUOg8u7nr7p+yjohkwvONYjDKQ6ljXCpL7JNAjgdxDya290+08XTZV6Ub95gSPfqjbjBqD3hOWwNlpqU9NxrCz8MnNzuqRQwq4RtLTqdYsRJY8S9zX3rNvvJMl9/IgtdJbI6PYD5g0wMCpnyzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYPSCs5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYPSCs5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDC3C116B1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755575993;
	bh=eX8X/ZIJrxmGgNYr4439b5csURywnvxBTfkLBSM7I+g=;
	h=To:Subject:From:Date:From;
	b=nYPSCs5mKXgFPel3etI58SAlUorPEuWe/yLebWhEHtFCJT+H0vU83i4Iti9YN+7+q
	 NtvWG6kOMvTj16exgd3Bh0y1CGU6vKRyAx6J/b3PPD5skDwsEmiIDbZwJojvJaVtV0
	 VHvPKAoQdAP7vD0X3aMcJcQguhfiN9D9BvdpMrZLgntTVEzrhvZbnIlvaOp/c7txPX
	 Uc5Il8FBGWNIcC9B8f6rbyEtby97bWjpxOlD7EHANb0h94Fkj8aGTt4eQJVA16t0Ee
	 VulTqAN346SywDjj1amHQTpBtbLxx3gF2WoLLYMdJr/9bYxjdNLJg0TwgLK0VXlVGw
	 neyoTm+z3DI/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E63ACA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175557599357.23482.9570038798317685853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5ff4ca1904fbf1f99c5a21874284796b69adf5a95640d6fdf90f25bb79c1e6
Date: Tue, 19 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755575993
