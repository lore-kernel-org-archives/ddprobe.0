Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B19917B418
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787593834; cv=none; b=tddgG0+0FsX/gPymQ5HQVjxtzQ98CXoTr/Mpgst0ROxUUIcRFqCM9VBkbD3JIWXoGBY+IvfNqLjQbIX72YNRLpYBBCXMu/oq1iVgSgXVN/GuRdl1kVzueQY8QTQZ1fbOea4Gq9X+3hGWfAe4p3eY09DZaK5JRtMP4ki3C+oNBr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787593834; c=relaxed/simple;
	bh=JdU3I1Wirh7LSir9ZZ7oiX+7gqkNgwA+krZGM9CNup4=;
	h=To:Subject:From:Message-Id:Date; b=EIrdNtX2/H8gtzCGxmbjbmraX0OAjKrSAO001RtCrUJjrBxqSKVSeSOGzXem61V8WW73ZP6qQtPFR9rnom2kS2WJB1voN2w9B0KDfdT6puJLVa6XhWY0Ps6lNAdqbxVWPMz0YvLFWlfDzEJaT6HrK7r5IDk+S3a6FNC/IEvTyhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Onyh3/ja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Onyh3/ja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03BCC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787593833;
	bh=JdU3I1Wirh7LSir9ZZ7oiX+7gqkNgwA+krZGM9CNup4=;
	h=To:Subject:From:Date:From;
	b=Onyh3/jao62m4LFGJ/PgImPTb/pOt5fur51kxYA9wsI+4nUxHOm5toPk5GLatfjto
	 6dXXwurBQZ2rB5pTwv4Sv/BK3FOk17lAxpLZVaUgCI+Z+j7DDk8F6L03yIMORIfyDP
	 4PzpaD6tAnf/lBrFbtNX4gDGeDykAw2mrmp4Omrs09REPneIzchXTeqENfhwXFd+m7
	 SdoaJ97/FQuCphKG+NnmeCvByvtpxjKbX7jjR6CpjWg3JD+H7rzsxm4QvVlXPBRYYl
	 7xMojcSkN+9CL1WzH19B4IBi4HG/Vvzx62NyD/ZvJgNf00kdw2drEKJuzLLux73bAG
	 sKSbYkBDATlkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8E5C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759383369.1137.2473243171410755303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0925283fbb9cd60af181013a537295baea486865ea70a0dce50e0ecea79ddf1a
Date: Mon, 24 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787593833
