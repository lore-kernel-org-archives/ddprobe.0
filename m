Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8E681207
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706040497; cv=none; b=MRtLs9RtZZXgrDFEH3XWfbbUe3ao9xQYli1oMiPvVx1706HS+WrN6yk2iAbulIs1VmgSBDorpxEc2JbHLSgnlXJa+lmqzfGUOLvzjzaOIVwAX7T4oRbU8juKqi9bXM3Z4HQq0yLuaHRDoQttIs171wYCqCZK6ExSLlp30831+v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706040497; c=relaxed/simple;
	bh=pbRhrXNIF9NIF6aFyB1C65o+O6Lv3ZNjYsLk4N+Q7sw=;
	h=To:Subject:From:Message-Id:Date; b=ASwrPQv68U7Zbn96QsDFn6WQZGHN3J4n00psThVTppUFURVLRoshwOVApO0znP6s5tiz8GBi+Q6siEJ78sWnd/9EkgtypeUc07hks0RDGVqWWECQAREa6pO3HaDllkjv3pUHDcgi3ihrJz7L9tAVUdRyTZmrbQNk02FBjbbFjF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6ITPdDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6ITPdDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D3DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706040496;
	bh=pbRhrXNIF9NIF6aFyB1C65o+O6Lv3ZNjYsLk4N+Q7sw=;
	h=To:Subject:From:Date:From;
	b=B6ITPdDEGbnT+WR1F5zy/xE/PTLiGmFiz7lhHtJi5+HScv3xqzuFqVlCXSm3S0Cnr
	 RSjueBDfiEuW+bul+NOKSB5fAMZPAvYklcRMhL0QuAsgkqAcIvXM0QjpFqwsskR3kK
	 QjaaQhbr46tgopigfW1mDfj+yZNIWbu63QvWTq9evBOgPr+hfmhkWT2aYi6IZMjjUT
	 uDRz0uADpUROup10J2pYlhjHsv21PcS58dSg3Nc2CebdF4/bVWni9vUOnHpfuA7v82
	 IREWGO39BiFR6jWmgHB8BLF0+AMYMqsjYRA9wsHKEJk5ObN69EPv86pgxIipTNqNd6
	 y7A3EpVgjp+kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BE54C47DDB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170604049636.6375.15199923633399099280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5aaef896605ea25f1041bf72d097f9c5ea9882e6bddf65fd7626cbd5fbf707
Date: Tue, 23 Jan 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706040496
