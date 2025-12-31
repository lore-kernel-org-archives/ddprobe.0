Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1837F1D5AD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767185634; cv=none; b=H1CGqiUCn3wOErpprUFke/zkvN6Gk+4zGkiYAfj5BxcyVM1zSeljzpiKkFBBrZmtDRaf0sLqxk4tzrwpths5ir8fGdZ1820cblccolotcLl6IvSnNIjIzS8kRkQwyUI7cbKnclPy4g0z4fCa8h9nLFQsE2kGv8YgZcyceFBlVpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767185634; c=relaxed/simple;
	bh=5vRwWVeYIcNKz4FfRCOg8KyepwoxxYCLgm62r5UbeUA=;
	h=To:Subject:From:Message-Id:Date; b=nWSSCYvgJg+0Q7bGD+lM/y3Aq67VH5U+gkJaS8G8aQOFHkye9+5rQCYK4rmZ8OioVQCb23uwwoRVlGhUhplsP8d3X43q7kSv23w40H75USXu1dFjLWuw3TKcSZRhAXzEBCWxzCloONGzQJR3cLLvxkQs7dG4cg8ykTI3274Cx4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjQoO39D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjQoO39D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32B6C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767185633;
	bh=5vRwWVeYIcNKz4FfRCOg8KyepwoxxYCLgm62r5UbeUA=;
	h=To:Subject:From:Date:From;
	b=KjQoO39DQLUzgmZm2VJq0WxP2QtnP5RmwdOeKaAZt1bWX4+33nyMGEJz4jsjjj8cw
	 2k2f364tMWsqxM5ZYjPxCVu3hk9K9ikr+GZ7JNrjW1eIgvtyoZxArgAleoVIWB8/rK
	 wMFkYDYzN5u/uZxtDksFrBf5Gzmp/42FwwezpZjJO/eOeVRCQluOU9/fhfj1/HeLx9
	 2SvhdzwZPEN4dVuhAwCTwgSwgIQcRifBetvFOOA5KmWGc/57u1r68pNiqFY4kWxC87
	 wX+PP1SfjfnNDkjkUDs8CWFpcmBzwfIqGSvhbROaiiatk/vrr/RhCWT8402ZEPF69m
	 I/1XJ7cZzKLuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DADEE6432
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718563357.28064.1998005032966179747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7cf00bd068d4986a6309ed38240f4d2f59c5bbe8df55b0f1813189992ae3c4
Date: Wed, 31 Dec 2025 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767185633
