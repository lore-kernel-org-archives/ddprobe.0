Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0293C3B8BDD
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774011894; cv=none; b=ONOt3micUvHf0S0HWDD9lAWtZwPYSp9qyNVS4CQ45YMJnDbHH8m+OJjeq5SyAB/HY5WSWzdYCdxkZkI/eMzatjNsT2dGWCuvb0AM1e541UgpAiBScIXB1tbqwOaOjn2d21mTFiqabELd1ZknbrFD2rUer+TJv3wRVLhAMgNdn1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774011894; c=relaxed/simple;
	bh=r9fnOqNkEBgWsBGEqdlJOVppmSVuF2FtqLSCM12H68I=;
	h=To:Subject:From:Message-Id:Date; b=V7vEe3K7DUDbzzwj3LEQo6KyOmP9vnOnWHJXyE9DVycWl8WxacoYOhmTZnNBLss0/ynpREde0XzCHmOh3ing+RRJCCmbj7AfTRapz3Sfeye53mtn0jF3UQiaJXj1IlSU+kgJPXyB24RRp4xt3ODHohaXX+Ouo13XeAlk7FLe+sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eA4x52Uu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eA4x52Uu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C78FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774011893;
	bh=r9fnOqNkEBgWsBGEqdlJOVppmSVuF2FtqLSCM12H68I=;
	h=To:Subject:From:Date:From;
	b=eA4x52Uu+sfJg6ZuX5+76EAX2J5a/aw3rXiK3u1UGILET+OkAg1BvHLAJs3fGbYp/
	 H5epWPGq3RPJYXbWQ+78LaW+nYEUOkS16quC5Re0sGSdwI7QHxY4yj1FH4HjpjRf9o
	 2h44/bLu/B7bwPrsa18Diw9daKKTX+NLsTLeMZTO9arfA4JfQlmepju0+BF2DzB55f
	 GrWt/3LJWUOTfn7KEZL121e3AQP9dX35zl+M/I5ovYpUu9JrS77OgDP0dtNb4CVlfu
	 iAbJ2v1zhG9NM3515RtcrqlQ5i+QKJJwYE5hFxA29f8sMJBLrQnSqkSSNAFDFWuhRK
	 iaR/l/+KCe0FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6491098782
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401189357.16401.961726559995376753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ba710de106c92fbd86c1dacf0d213581a8b2e0fc5b3719785186054debe73f
Date: Fri, 20 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774011893
