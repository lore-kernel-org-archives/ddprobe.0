Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B54030BF59
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761228594; cv=none; b=DwUwSChjSYZ4N5vBREchmF3QHHFukMVZMnCrDxWuz2Xdxdw4AK03OPjlR8xwdvQHVLMgHvGNxddaOV2u4mSakKR06xosUWk3+eba0RMz2LmaGuTUvOC0KskI06Ru9Kvu+6b50yIG4bNzUOxiz6kUS1YtDvNfQ8fz508583VZhMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761228594; c=relaxed/simple;
	bh=4UeIV6KDh4x24Y0TktgugTxqe81whXaZfviSe3dW2Qg=;
	h=To:Subject:From:Message-Id:Date; b=sIHNGtT8MwUer004SjonoGoSrqOBpqo77rbIlkwCQRcVUPIjX/4oWx19C981XHKXSl1YHf79NiL20LSjKZ8r6fI90GyQsho7FJsf85i8ZjCv7Z0bgu1mA7DjmL1+nMBrmzseOkJOc/w/EwMKSc6CknQ1NlnbqhJNp4bFuRsFZHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7BTWzp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7BTWzp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBCBC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761228593;
	bh=4UeIV6KDh4x24Y0TktgugTxqe81whXaZfviSe3dW2Qg=;
	h=To:Subject:From:Date:From;
	b=W7BTWzp/aeOGjvRR8/QhNSAMntCZVJGERHDmospTFwwH5PKrpCOEuLwMmPYw5W/YE
	 7fSr6a/PQNQ5ECVuA+yH1OnsoCFEVDY+LnaBqmHFY+vHlSgX15vPLBxoDy3lQ+xTDC
	 iGUm7tsLzk2wkBb+ITg/GlKu400IcKwZPsjMEHJ30YvIGNkMhNOHDYVsw5e9exqcwM
	 kzD/qa2yhETeVnYH2h8oCUD+mTz4MidZgjRbNaxJTJ/LBr7anVfmXxNyUByhfsbGje
	 rvUY4FXl1r7xIX39/28fW4j0cKvQqBm7Ts8o0DLQ2VCPgseU7d1UiUC3qgaqS82mVU
	 tcPzjFtswOTwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A610CCF9E0
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122859362.18867.17285567870776379386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6fef70ec2ccc2c332cad6abef43a7b09d4b1d547fe4aa5b7fb7713f08ee1b36
Date: Thu, 23 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761228593
