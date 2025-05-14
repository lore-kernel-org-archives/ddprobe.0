Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7B6270EDF
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747220994; cv=none; b=oVDUEKWwhS0L4GrZx42O/EwBk4S2FJnDHyrUhJUzqdUpn6wY5b9fVK1u7dIs4yPpRuU79/K1SjYLIOQOujewj6tLI4o3hxWJ01xIa5QyfQOjNE7iUZziaP29o8eiPoKdS3UvURS3eMd3Zy92ubFnwpMJfHdJ+PIb71e+SWmN/oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747220994; c=relaxed/simple;
	bh=9Q8jj2IP7/MmlB99/U2KJ+HPmVVyDN8FZfRnnWxWQbM=;
	h=To:Subject:From:Message-Id:Date; b=sP3imqlcVcZw8Epg62aukGxB6A0TGwA2TO5LCKhU6molH/qGjyuDJA/gpqOuSI+HKvRlrYd/hQDhhe+fSjZsWEWylEfqiCdpQSQe4NuiezzT9zUtCaNQJd8L7XplISBufRtlhUwqRG4Cfqtw9s+WU7IlP2ImNoiPD7fnm/dq0LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVsQ+0rO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVsQ+0rO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1732C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747220993;
	bh=9Q8jj2IP7/MmlB99/U2KJ+HPmVVyDN8FZfRnnWxWQbM=;
	h=To:Subject:From:Date:From;
	b=jVsQ+0rOgjvOijvLKAWiDU3k2lXTySSQn/ozCaZfEq7+hSlZgPHkL0CrOiU6BQN/w
	 YAV3WLsjBerJSSfJ+i9d2UOUscwoNYaULtfAbWDEBgPjIG42MWy1RcocQBjk/DbOEp
	 yhN1zI11xNUMczA6FoqSp9ZAfNbqZG1hrEnlmyRCERpHvehubgD/UmvZytQLrJqyRg
	 OVWV3JJ/wKdMhsROnzwX2xUaUBTjyBS8soIIyKgDIFlld+TdTy6cj5MG5hldVP1YzV
	 w0fjzbCY1nOEklD3JRI87p8Y5khpAEznnJKyH7tb5Dp58xeVg5Xp7vXwGJlbn5tZqk
	 /H9FyKq/3gS9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F164C3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174722099357.15426.1799013172196645162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ca10a81d5b11bba7165247b5322edb5a9748faeff0feb3a399b0c61bfedf37
Date: Wed, 14 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747220993
