Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAD615DBBA
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744212594; cv=none; b=CGDdIb6uynYMfS+YLCCwO44REHhyFShzaHnvKwu7QlfNJwjpmLE1S3qsy9ydeiwdYhYxcQuXfQJOHgOnB8ZewkDg+jOTnFFr+mgdRLu0stMgwM+LgyE8EVDr39P7EXdNB+JSultzYLs31MwhMHfsRikaevezWqN5QFjlwf+6liU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744212594; c=relaxed/simple;
	bh=zW7tabg6XqgFw+l60ukqeq1UYVT9RjOtrWZHtHb+TtE=;
	h=To:Subject:From:Message-Id:Date; b=NraZaFL0O2pwv0aCad0VEDEKyrtjwNAdVJQ+10Kct8gL97L6rgTzGh6RJhLbMt2Azi6/qp/9uEH2W6OLu+dcWhVsroFVjDek+cW3264gtvJVFVG67AdkedMlp0+yMwbbI8e3yWPAdPWnCUGfN1/zQxSn0VYKwSvc8TjyNmQe7Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3UqmVrD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3UqmVrD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE5CC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744212593;
	bh=zW7tabg6XqgFw+l60ukqeq1UYVT9RjOtrWZHtHb+TtE=;
	h=To:Subject:From:Date:From;
	b=R3UqmVrDa7vtWnrRVCGHd8qnJA1ogxGCBEXqmzXfBxw6HtwQGY7dKgmzabWKZ2bV0
	 DLQQGfJ500re/TPLb8Chnb10B7Ef5wzJAKiZiS3iOZuUN510jMxRt4ggjG/uH+oU3s
	 Ht4byYVWYk07wtCQmI4YThhrejUVBnqSu95OJz6umU7xl6gg0pKtmT4E3cBcg8HApg
	 pYMiuNKvye3d77oU3URrCBIsjAP5XeRH6jDVU5/1ScYhwfdNrigMj9AZNSgf9Sz+44
	 tlEbMujNzglJFqq5Z7RpLQ4Xnfm08g3/8Sp2rDKzqojt7a/do5UGLBb+1iJGlorsXp
	 7ZHPp3T2hKh7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A158C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174421259360.21089.15192532427778373277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78ca11ca0eb639d7f5d2afe4bee2a59cf93697359ede03312142fd822af4c9b
Date: Wed, 09 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744212593
