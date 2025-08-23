Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BEFF224F6
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755908994; cv=none; b=iEhAroNqqf+OhSkSXCEP92tVCcTIcTUuk6ItDPcv8TvLv340VVD1T8kjOKJwC4IqqyTt537CJNW7NdIVzo1UD5Q531UiIzKr1zQlp+yUeYjXvmFSgnijr6Pb3goHk0rOttM7+kg9jDItSRJAfwxsOeGCiEbd26BTl+op75A2GbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755908994; c=relaxed/simple;
	bh=tv8EZPXseMPb7C6kWAclYY3ec20LsZUeBpUcpBUVpVo=;
	h=To:Subject:From:Message-Id:Date; b=KMbrkMOzM0nSSN5FWBhd62kJpqfTlkvSeSKtCR77guJOS/Lnak/xHjz8Nm/NVotqxk1utboFk3lN0t1a+Vm4OZJ9qA3nckFBYvpF2Nr/tX/V95VvLgX8dknitGpoBymG8UXEVtgiIxhdn9WwQZ7dEPy8UlB90mCgxuQu1B4rgRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqjpNEfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqjpNEfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2332C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755908993;
	bh=tv8EZPXseMPb7C6kWAclYY3ec20LsZUeBpUcpBUVpVo=;
	h=To:Subject:From:Date:From;
	b=DqjpNEfJMIbYdu+kK554dHKvVuj64cDw1GfB+qTAonMjX8ho7F+vGS2inx9gk3shI
	 yIR+wMr51O5EKYazhXVtRHeEFN2gskWQDe7SG2ufLKVuLdKrEp+uY/R4gf3F3S41wg
	 sa7FPN6n8GyEoKsxLqU9JniRzug1pf1VLvKxt41v/IyU8g7kHn55x2Mdu4MXTVbw99
	 uT8Js+MmrjzoSCEqYgYWrFLa+LT+48jePfEG9yiKZUQn/Bv3Rdg2hk+diwfUvpSFi/
	 +jOxfhzL3n6jHmJvYnlKdTurhFB2q/0PD7aXnFy6YKCxQMv98JRk8K7afsVF229YX/
	 2e8YP5UGoEluA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B89CA0EEB
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175590899357.10910.658033002238039310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827ecc56353c647a8eccdf5e32923488480370826f07bfadc919d384f79b6196
Date: Sat, 23 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755908993
