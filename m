Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A843DDDDC
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775858854; cv=none; b=DLJkCL/HQBDcgiYRa5BIIk6BGkF9/65Cy4oP1z8lunhjKnMkCHklbUqlTz9XGzIzPVHu4xfI0VHTFpmURtlaiAfqrV3xYqUBbxy0wZZ2ejI6kiPYLlY0VfJsaDs6D8DO/OjevUdht/Owc7aj1MvQ8Ml6FXgRoqchLw64rqlkYRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775858854; c=relaxed/simple;
	bh=VhLnXtvXhZ4NAyL6fOdwnp9HUV2DDZxH7z9q9ERhjq4=;
	h=To:Subject:From:Message-Id:Date; b=ndKaoakM/OSfqSckKzR5ApYyfMz7q93dqcLG47NFFR1X8dzOC38YuXLsbrSjSYfx+JDOjdsOneph5MfnNsm569UjyfLnZqM3Bd3tMyjscrbyWiaMqTDguJQ+6o6apoiqdDrYwZCw0SCiF4kOA2fP/eoQRZYgGykU1DcraZDzDSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0WAd46b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0WAd46b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92B8C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775858853;
	bh=VhLnXtvXhZ4NAyL6fOdwnp9HUV2DDZxH7z9q9ERhjq4=;
	h=To:Subject:From:Date:From;
	b=c0WAd46bwbna4pRyKzwN6NvR8TjOl0iMXx/XJJMG1xtc0clqair5UJkh951xTJC1A
	 t3mfkpW7CoNYVLr5fGYqBcKacqHu3KmfiFl9UaVVnsB01k2rkmvoDk71msIQvLalO+
	 0jT6MW43JQcfax3JEQmoDO3kgp8GXnpdS/m1KgzqSSL4YXGSZxVfLklD1AecUhnWhA
	 2MS7KKC2nQqkDOEEa7ffSvqSbeVM6Sl1adPENKJXr/X6O2yADxG1tnzKRFfChYORWR
	 SCj8OTF1pA2hwdTs3rxpncCq7SL8/Yc3F8X4bCxagCyNotrxPQJNYxmksNsD6xpsUl
	 spIp1ADiUNCZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6FBF459E5
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177585885368.13457.4922208401522236858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c459bf9438943b4337f45919872a32128ab5bf0bb1dfb0f57e5b670c4a3d94f6
Date: Fri, 10 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775858853
