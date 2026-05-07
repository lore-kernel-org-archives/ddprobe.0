Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8E623370F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778123254; cv=none; b=b0yLBeLK6op6+WYR0AqgC9DaQCQIX/PgpmmrD/CZYeV2QRcijca76QgYFQu28OEa7M3o//DCVnLIMFuS2bXK0cTiraQIAJCLZ6S7segSQ/FhXsOuXE2naV8JQbLux0cWpSUrk+3OOU1oKic9gwscEfWZiB9i1OndD0wOwLfbpFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778123254; c=relaxed/simple;
	bh=FhxsO+SgnUd2Ihlop2NUFbgPRFyLm4AgnRPzkqC+IUs=;
	h=To:Subject:From:Message-Id:Date; b=I4LYc4ovTlywc9C7HtxPkP2RamGoJDxwze4Zyl3LTxdcRnDVYZjioalAR9tAljQ86pL1ZUFvKO6I91Ee1F4zZCT+QXO3RcdVFhCOTqxwzfeSjF9RF5h7e0Daq8iVF6h9X05q+bKJGuMf9txw71hNbj+Leo652rln6/RbQUNQeWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEkycKjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEkycKjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35C2C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778123253;
	bh=FhxsO+SgnUd2Ihlop2NUFbgPRFyLm4AgnRPzkqC+IUs=;
	h=To:Subject:From:Date:From;
	b=NEkycKjhuUBxFq0oipGJUwtvyQMv7tN+SE762XvfHi2YMdamsDebsZw0DPzLsU+lB
	 V9auOw6Cv6QXneTTEW0dEJW0hipAPk/OlHKfbqkImp/UClS6VRqaQoUQWAc79l/Nws
	 OR594sjwA2VfCRNGg/Drg6aBT6MCutjSyFNZvRqZsD+T/DVB7CbcLCxL/I2/NT5u90
	 D1loDhzQ7wZIXP0yW+uXbC9qlc37rvV2C/0/DW6ud1xzQ4t+oVAlAaKeMXNpRnuq+1
	 mBMtowB+A6sYDNJM57kRJamsvBtZC11hJwhyAVZ3vAF23B/9wBdLJurs5uurqwYkuw
	 ls5rfZDU5mBTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCEACD342C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812325369.20426.546198146839720345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c78fd781902bff9d6f6e36964008ff6e710a21942421cbafa88eb767153397
Date: Thu, 07 May 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778123253
