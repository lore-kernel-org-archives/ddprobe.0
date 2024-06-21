Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE498820
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 18:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718995343; cv=none; b=tgnQt8Wu+1DH3R52FYgkhd9UsUAa5V8xKQUn/B2MirmTi0rFJGseq7W0NXSH0ot/JVYO/J3hwYVzXdorbco5+3Rs+yYoqsFfim2+Zf6bmUHQQ7qjBeUJRJzmVvGLQcOHVPXdvyll2BAIghZ6WTNeUjBnAZzWW+sqOy+rbG/6Lv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718995343; c=relaxed/simple;
	bh=hl55XWe1WMjbjLCxsf0HGhoq/u7AQlaLlT9bl8zeeHg=;
	h=To:Subject:From:Message-Id:Date; b=rL9yuJY5p/MqXxjnZUP0zM3th0Gi9aksBeqqUNnV8kTwHhoGsmymgKhIa5V5cUaNwItuTveg3XNU01kiPPeOjYaDkygRAeg+67BHCq1u3zI57BV/F7zS2nIj+VSmiuhUPToD907Ruzet9rKtuIepxrIPZRFO7Y/yWd4Ib+TdyGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCHrgDud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCHrgDud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E45ECC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718995342;
	bh=hl55XWe1WMjbjLCxsf0HGhoq/u7AQlaLlT9bl8zeeHg=;
	h=To:Subject:From:Date:From;
	b=tCHrgDudUkvxzE+YHgvR9yCF7djhtuJVRQQq+B7mJg5M6zcWNqxGu5o4jlgAErJGi
	 ogvDwKxovz2dQsWciWF7iqlXuIXWcis1URcU7Ht7BIWfKtmC+LdgyxaFlXnlBzQ0KH
	 fmmUnHI27qsYelT35i9spb+LRjlp5q0voNHLm+zRnDpY+VEEJ82cYAvBUwFZUznkEA
	 n/r+UCqUXoVKP60yk9Oqfq5xCjnH0d4bny75osryQU1vizdqbOH3PIf87PKnxWgANZ
	 Zgg5LyeAhk0CGeLqAXm4qownzh4QIvcpqyOXOzVYeYJbNXzZhljCJwpoiMhBiyCNWL
	 Xvpcs2ul5flsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBEDAC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171899534278.21813.17373516661057396209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d76a6a54911575fbcd5305d33c0a3247536baceb317bfec28c91b5f91f9d81
Date: Fri, 21 Jun 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718995342
