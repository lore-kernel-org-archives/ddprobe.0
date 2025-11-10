Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2221D34D381
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762753794; cv=none; b=RZr2U8I8A0nTWG8HaljQc324LmZfeX5f5vOuRMkTF6sJY3PngrVRv9uxNp+SHJGIYvddCMy5PMT60VMnLjlWwE2qnezqa1TRHmnfJdDicpxhc/CV4TUnpUyRItsI5znLa78brkPAAwaDAPX8KsZqbnXMpndtQ6e8Tju7lwVNG14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762753794; c=relaxed/simple;
	bh=Q/+Uk4FaEoSMZ67J2tUC69JF3GQimBKTLhzUS5XKSDE=;
	h=To:Subject:From:Message-Id:Date; b=oEkYY8fhhTdRQ5yaWnE6buQ4R5etH5nv4eTuno1bvu/d8zkMUkwwIC52iP3Dg8inzMqBdJDWbvbFqD6bVsIaQrjj0+kuB/K/lgJ6zbLMUKDwIfn9v/qwIKZZQ1MKL2JsgEGlnBQssNEZxlYsQ6RabtTm6ogNW3ED1ZTC+xaYy3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ut0j+4G6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ut0j+4G6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EEEC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762753793;
	bh=Q/+Uk4FaEoSMZ67J2tUC69JF3GQimBKTLhzUS5XKSDE=;
	h=To:Subject:From:Date:From;
	b=ut0j+4G6nSzrlHFdx/u3zmPkSgUBZRSkMpmE6z/6KG/fXcj1JFAx3vooZPrR2QGbC
	 7c2nTmM8anZYrqV6DCWO2fhKP7Y/VgyfP+X9DLxVU4Vp/tu7pDLMtv+g4zym66OAyc
	 3dLqlvZ6Hwvx7CNDfjeWc+NZwC1Dg/8pYeB21DhL3HVBdo+zNFDE70ep7sEFnI9lBx
	 fqLAkRUrZYZ8RscIwFOQ9TyNnSF1ZytQYKvbRjTMNrP0DrIwHaPTIx7woIcJ9oGnOs
	 kwhNWJoLKLJORfacJfSYc6FH9kEdb0Ubo1fFcvh2hjHPBZwj7ZnrIcpVDvxVW9WW5h
	 jPL+QTXamlIZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94742CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275379359.8941.14993856956174030873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c53f8836bcf90c7315a66ea965263b61c733790c310ec8ed1d7eaf01d1e3bcd
Date: Mon, 10 Nov 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762753793
