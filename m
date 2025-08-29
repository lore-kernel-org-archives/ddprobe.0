Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E68224891
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756440594; cv=none; b=V38QAxB81tsjIPCg3tjQgBer6Q2InYzK4lgEZmO29HcCLRKrsRM9O/iSQIRJ2U92Moj56tgVPojj3sDcZIuPHvx1ikomBvqRIM/BcBwonTQ+pXb1gjyjqOM2wj5umksyjWF/8dWwdnwh7YbXDBM1sV/nxle6H8DElbq5NMwBb8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756440594; c=relaxed/simple;
	bh=Yw1+qI058u7k3GT+KRHPNl9Zp2WvYSTRtUSpwiunp+4=;
	h=To:Subject:From:Message-Id:Date; b=h7cPLl6WUEqUwfaI02HgXikupQNLqRyq+g21bXWc+wfKne7PRVpMF51bhvHZQkz08JSTBA7JgQTlxkalmTF09zqxDmiIpmWyeXkS2M8IVaddL187ylmfyhntcKfTsrhWKLC8ovwhwmMNGX3G0alze8bBG4TwnlFLvdMyvKgINOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqXT9s33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqXT9s33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63BEC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756440593;
	bh=Yw1+qI058u7k3GT+KRHPNl9Zp2WvYSTRtUSpwiunp+4=;
	h=To:Subject:From:Date:From;
	b=FqXT9s33dwS81FHvcFIU77+bYHMtLyf5c/cpL9OH0xGbNrpBqSd1Mc9cw9DsfR8U9
	 KtlZls3tNP7e+C7hx0vCIZ70PmPYGbNf5YNBJsin9F06TrgcFAyTqTX+GnEIBvTJj3
	 jWQtS5zRfCcBKi3Eop8906WmaDjKP12gLVDDKSnyfmaJNoh1QiMI8Nwlrme4fMwxCS
	 2RljVHA9WM6Aewbxf9RhjP6WbpY/CHoymONTY3uKU0bTlm/WP1hfDzMxT3yQsEjUFr
	 FUrY+jNxdhoAjRZ8fk/bUGQo96fJp2mMfQA/c3GwXf6fgjsV5ZNQ4p3gTkhD1iXV9p
	 Rkl95XOmO04SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B22C8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175644059357.14113.2348488140168818928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e9c7a5a7b9d042ba722e627dcaf35c5794b8800928767fe94b187e7c5b24b1
Date: Fri, 29 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756440593
