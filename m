Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD45265CD0
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748422194; cv=none; b=K2kFSX4Piw61yVTAyOuFk803fkeH+JNCudX2eyhTk8fJd7CUlwFIGk13KX9lBvdKNheUpF52yYUf4nV/1owQ1DJjErxO+kcHU/dF3J0Q6+O11juYId1nS2QOCL4SCFn1q4YSlsrp07Pa0h5u1l4xkqwGlZUyLZxtIVKeM+pYuLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748422194; c=relaxed/simple;
	bh=muIQVlvyryhdiYdyA7gNF/3Y4NrM7RsV2SC6xIXUTew=;
	h=To:Subject:From:Message-Id:Date; b=FIGn6xtBvRZVXml++bkENKyHGwraH/17JY7FiW7fcVy3S5hE9zdAosNCrxBoAvKCjoxUQYeXgOGH1+wyThNbEvSMyWleavuVGvlSn7QOfoNakcb5YKeSzFvILlxtHZDjfKkhivP6cVx9KCQhKuJrwX9linXSRx9HUCnBY6ZZ2Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9ZCH2bz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9ZCH2bz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30BDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748422193;
	bh=muIQVlvyryhdiYdyA7gNF/3Y4NrM7RsV2SC6xIXUTew=;
	h=To:Subject:From:Date:From;
	b=S9ZCH2bzY2VLVjGq5B6clw8obvowJLw1bx7ieSROrjhwNrqRiYpxDCpriMqYy8Ceu
	 l4aRNCOW3FyuITEwfxDhnQimP9ly01uoRCdPHoZnMn2wOlkAEk/jAHnieVUcko6OAP
	 n7XrB/FbbG0vmGUJq8Ovb1WBZqlBz4bNJ9rWUEOb4KuuLscLgHb3bgE+PwvcIpeaU4
	 kcl07509NV/U9RKyxhC4xR8zNgq/uVk09YYtTveeSQ4sBjYQ6scGj3dwwDcGM3UAX7
	 zzoAQjWTZsTFbtqhMxepdWFnTuYT2aZQhqUqDzqDaun3NXG4lHmjDBEMQzRJhqJon+
	 7xuJ5JZnwiYDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9235DC5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842219357.29171.1096629859452044917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b44ef1009fe7dcbe467f2c5e75c229c76cefeda9a5ae79125f8c799c5bd2838
Date: Wed, 28 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748422193
