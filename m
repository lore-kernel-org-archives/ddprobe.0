Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C341D90DF
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746165594; cv=none; b=si1JmRCtb75sA+PxaJOTnpUoBB53fSXyN3pDD5nZ7h24AZoDmfQ/jWImmbJYbqtfAO+1NF2vuLciwZD2pE66p9ZJit0JQ6nCi+hr2OupT61t1ecXyxZZ19vq1KH6HkvThPGVmYmOjlG9GfoYdGczE6fELI4cskgcStu4g52Vo8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746165594; c=relaxed/simple;
	bh=UIuMMJUdqS6FGOBE4AtglN2ysH7BKyQO8l8qqvebCxE=;
	h=To:Subject:From:Message-Id:Date; b=EIQT5DuKXcHdZSgSxnrtqesmKOZlTh0XVKv9H/qu54xDjqBHJg/sYLKh40CIOWSZxuxHjpDrR6W5fk6FFw/th71c0bku8+RpT75dKbaU2E4KFaiDjr43CM8lcVzJQTwEnxQQocgT6URtcmSSxFh8LqB0Ap979MAtAmsUob7K2oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHd5MO4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHd5MO4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DCFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746165593;
	bh=UIuMMJUdqS6FGOBE4AtglN2ysH7BKyQO8l8qqvebCxE=;
	h=To:Subject:From:Date:From;
	b=oHd5MO4vdQwXBSdPD6xJh8WwXsFZkE5ADDFsOSIVX73mdf7o/d8BemxNevnFnt3r+
	 9jMfj2ntfVAE62IgTHgoMA5PNRJr36uahjgZl7jvTsZu3R08PRAJ3dAI7gncR77ktX
	 o3WyzTpOt34PiwqirPJG3zVb5wdkf+a02mRahhwsQ9fucYIPxiRTVqIBZJVOq/mMRu
	 1VWHrygwPdju6tdu07nuB0NWCP9uHTbMPxVdNDVyTQQllstoOenn2Zwr5hLOBgDmgY
	 CXISmor5tcexfEq8yncTAA5+H43qkoBUWPTJ5prme4XS6i2gJ912VHo3Dx9hBOi4sN
	 C1qjJv9BBifZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8BAC3ABA9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616559357.11588.10259455637853209312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 053678cc97087f2a3b8369af26b1fb7cb39a141b8d3b1b2c943b3da0924a3b46
Date: Fri, 02 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746165593
