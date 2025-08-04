Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F76221F17
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754284194; cv=none; b=dNjeyOKXDbeCvu5dIPnyOLKz3A6MfSjyjsyCmLf2KbGlGv2NPsn0kyHjvGkoUpK8dNUNJ0/KQsDsKbfG9kJAqyote0ws7xjTzJfGvJDoYBWUEZZGql2wvXi/xBcoAhs1GZanRxJNuww6LxzS9IfG0eHfk09K2DF2Zt8RcA9Z9mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754284194; c=relaxed/simple;
	bh=+0Gh+9tnbLoXHCM/vmZ8oTv5I8wREN6vUg7nV5e4GaE=;
	h=To:Subject:From:Message-Id:Date; b=t5HKDNhMMor3reLC+MSbUDbS/BD4kiDm+EhrFlgEeGP/LWvACybySKGVv/Ay427PjTiPtrD/h3K8BEbCIsE3n6XP9aer5gVTBDWQGQVuhW8DpRFkaU9mFoCV1y2L4LjqJQMzqz4HwNiyJhWqUv5yTzTCtK+uEuC6afOh/GXDNbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExdAC2ml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExdAC2ml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A028EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754284193;
	bh=+0Gh+9tnbLoXHCM/vmZ8oTv5I8wREN6vUg7nV5e4GaE=;
	h=To:Subject:From:Date:From;
	b=ExdAC2mliquCDSGXqPkfwlPI490WTWK9AhIcGIqOuTa8KsyjEIiwMusaoKgPXqzpU
	 5WnPZkXqFHZIMl5J/G6OWStkk1tpepi05OHTvxh4OvwP/TAzczJyJczGt7ABTi8r1N
	 c61bAL8w2fPMe0OOw6TVb2d0sPGtJ/SChaYyhK0TWiQJgrkWzvVQPr4YU6nckjkqwy
	 aJQART5mR+8LBLbFJJENrJv9Valk6QXb5OVIeazNRlfJ3mtCqqCEHSFZux5fBBSQzy
	 O2ZAga3gYjMATwtzukDeBeTobbxBFvaPBKIfoYz1Dp11QBZRfeCUTBTp+TWcD7QQiL
	 EsEytoJYDSW1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E42EC87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175428419357.7485.13399970647917904476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c974fd097956b96077b60a9432534f0347f17d636b73421ed5d92a9e83c312a
Date: Mon, 04 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754284193
