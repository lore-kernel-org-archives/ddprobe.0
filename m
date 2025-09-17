Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5FE27EFFA
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758098993; cv=none; b=QIXzOqxZGqTv3OvNfQmXaw2K7leHHo/yQnXk7xo7GQ4+GK/u4C3Q0aIT4mnZFeaR+rojVQTYwCE7t7IyIHfhHP5DR59mRLNjN6hhus//DaE9nb9FL5t/XyZG0rkXyxRmQREIKx+NpN2zV3Lp2HSm4RAjCn+1sVCKEhqmIEm9HtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758098993; c=relaxed/simple;
	bh=/q69JAQFOBXCZJ4qBynrTDQ6Ypal7BdJ8uO/QgVOp0A=;
	h=To:Subject:From:Message-Id:Date; b=mdapjUwlIGVBuxL1km10zo53qlo0dWToi33++t2VTENTxvYgso5TWk0m8rPfc+Pu6wvDAwJFxBngxAhQyVxBm19jYsJCClz9ZsNiiRwlI3Y4i4FPQ51fwE/l2aISy5pQeKmMftIPBANuhV718qHwUSEgM0sza6qABRzv34wt9IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsui9i/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsui9i/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDA6C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758098993;
	bh=/q69JAQFOBXCZJ4qBynrTDQ6Ypal7BdJ8uO/QgVOp0A=;
	h=To:Subject:From:Date:From;
	b=qsui9i/0DL+nuftRoMoTcq0VikwD/flAahQ2RdkYcWlAGBpkUFLdGoTv07pbKYEaW
	 Rgw3AcKe832yj0Zmd9i+l8TcYxQurwvGOQYi4bnLst8MUKvpiXwyjQecvfB0WVIyb5
	 ezhLzSEXWWfTiD7BSpWAg3BGqhv+DGIjwiZ0tgRN2RfEkEBfmylbRDkTXg/JJTteZN
	 IO+fCIzETpu4aGRVyqtEUrPj2u07BKWJLo2EEFRuAiyihaqHrZzDEDI4A4IGHvxORc
	 qcXlcsSPffF4BmD8OEMSFzNKohMIM4wr974A3XQ6lys58oX4HLhNj9lj2xe4j+8lAM
	 EjBSuLE7ZUXvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F892CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175809899357.16540.11141261799660982775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc9d0fccb76f34a85e6c42153dec899d21264d8187ad593f4fb3c34a9da710d
Date: Wed, 17 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758098993
