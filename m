Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290AA357CF0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778667634; cv=none; b=jbYJSj5zQYaZKG7x+RJN4yw+TnoczCM8kK5ZYQ3akYIYMM220ymzvc/g6mIGsEpUDKapjxVIm19Kimkx6oV701MX6kMqTk7xgk9Uqs76veyqoMoVjDYzNwAf9uxEQ/2GdQ+caMNfrxvg8TQq+mPOfNoyd3zxldMiQ1W7vn8IYeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778667634; c=relaxed/simple;
	bh=yYaKsMoPUp+JW2DEwWINUXin7GLB8Sj5VyDcaEg+5j4=;
	h=To:Subject:From:Message-Id:Date; b=De5bQSIyhTESzwCHZVBH+jDzNI10jYNuXIiN91SUDRo9tdMbLpCooNC5bYOaT5GXOv+3etQR7oDpOx70g4oaYy3TWTa7cLmweCU0/SPEql5YHqwP2iacQt2kX2ftLcXnQqPMb23W1GvfkM6KVT4iIGMU6sgiMC0OQCf7iTpCoTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFAEZLzD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFAEZLzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98CDC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778667633;
	bh=yYaKsMoPUp+JW2DEwWINUXin7GLB8Sj5VyDcaEg+5j4=;
	h=To:Subject:From:Date:From;
	b=mFAEZLzD4YgCtKD7+4PaTDtL2TDsCZSXYj+J50T7ecZolLX2ZrteHfF2acSEDAxT9
	 TdrbKxYbcXIO6faxfBL1zAvaRiYrH9TxOeBIordRal0iSim9RJDlzsKq/qvvgM+2m6
	 O7vF+owIynz+PkV/OH8GNlmDf4Fv9U3Xp5rf0rVZ1KDU7YR6aD/lrYJ8dX4+VYAUBg
	 PfizqHxdZFmanvRnF27lSop5FAtbWzCUNK++YMsMmwjEqiykGuar3IFj2O/+kIelcE
	 yWcl7bidxaxN+D8C+wIQPujCEApU4vqqU/d55F3/F6Lde6Q9YFMhVLyUfGvVQOkNAc
	 6BEJoAxQnRkkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5776CD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177866763373.25846.12119772292183809878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b692d642fafa22507fc224aefc4227517974ac33a1a9713ddbc1284e15aacbfa
Date: Wed, 13 May 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778667633
