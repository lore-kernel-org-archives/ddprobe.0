Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D26323BCF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757814594; cv=none; b=VG0bmZ9byg9U8/AMSv46lHFQXmZSbF34t3r0KhTT8pOhrdkvQEa38DCzgks2bXejCzcA6EMejSC7uIy7BiFZpdlAXb7qC+scTZIirMzgA2cX1neJdqweO6y2y00k4MUB2EXuBHB0tWhAZDhbKLd13f9T6oRxqgEGo7is7pFjHLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757814594; c=relaxed/simple;
	bh=1/I+ALRO+WLlTRbFF3acPvlICbnggKfSrDu7BsuLZ3c=;
	h=To:Subject:From:Message-Id:Date; b=A2hZd2pBxFl9BuOaV/mtnf224cYKGCyuIEVRabk9Lw5RkBJMKgWjyoeJs+fh8esyshBjrihfggvmkAOLWP1amUvzDJ2daT/4Z6wvGFfLfWXp4tInGHqYKfq4Y/7peA8mZtkU4BBzfH6Etlmo/Qc1Ra+qRh8QDypaNjPq2e3xFGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dlr/BmqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dlr/BmqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B05C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757814593;
	bh=1/I+ALRO+WLlTRbFF3acPvlICbnggKfSrDu7BsuLZ3c=;
	h=To:Subject:From:Date:From;
	b=Dlr/BmqO4p8J8r+rpj9DZTr4Ptub2kqjdF5wEF8OWVhtn1xhLGG1aOUIs/rvI1Dby
	 YX0y16qn4HnCEwyIdc7diW+XYRGdD7+HET+KpnoSQQEpPcvOQcpmWLCL5fcdo8Ug2G
	 mvaiNnUmy2UjdWLgGawmycBMj7QaihnneZ29NxbxJSyAjHXzxCMEPl1TQF4inTSbml
	 iDGyw5rcMfaCjgQtecaUx9ydB9IV1+2ogcbgf+3+wsPoLQewdHwOQ9aS1rU4a8yWL3
	 OZ0vqZuLjaob9Ij5vPrEUdouddIa3mBPV0Qfk8GvuPOxJX8Sc+CZtSsMxHi3BJKZ+Y
	 UsgZaSghJFatA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD7CCAC597
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781459358.10968.12800146544543824996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 838d87260c3be1d350e0abb74c54286b1d0962b9410e11cda468b33fe8aba61d
Date: Sun, 14 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757814593
