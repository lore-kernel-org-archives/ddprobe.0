Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FDB47A76
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706829497; cv=none; b=HXQOMEXC7Wly8Pye0Y9/Flk55/MhNJ1QvaiszN9yjU5oNG7jrvF6ipePZk0QEhQUij95JJqL9UQD7jzMxCuaV3K1YdmIQIqL8dRR20M5y+pZa5cDISv+FCgXXL2vGXwgcNqCTkayP53Be4PbYl3K8UQ7+PDyFHA53HxcrRG9zf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706829497; c=relaxed/simple;
	bh=9ccM9Cxh8OrSfHhaxK/87BWX3weufw0IiL9qZALgWLY=;
	h=To:Subject:From:Message-Id:Date; b=clG5psWzuNPwgwcs85lbW0cJSbZoHWP62Dq0BOFiDJSP+g8FuVv+CuiWD7wBlPhsKXtLLwHfqrrz+eSGt26NZ0TmSjqE37yXg/v/WWzcfuoYd3pH/6PROchaEhAVY6GbRnWgTAi9YGOWtltEVnjUInmWNm6YvPaljweiZLVYniU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+UjFhjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+UjFhjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F8CC433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706829496;
	bh=9ccM9Cxh8OrSfHhaxK/87BWX3weufw0IiL9qZALgWLY=;
	h=To:Subject:From:Date:From;
	b=p+UjFhjxuHlA6b5BYF396AqR/EuXVzqI1zoe0VeCHmVsH1vSnFk7NK0raQvX89cZ4
	 MJi0ly/q4h8N1+eEyhV1HXs434zliim9rsr7nraIgSzhUgTkvwSA/cKJfDyVUYQqYu
	 vl6GK/VLqqZyzy8OLwW1GJJsnKJlt3aM6csYuNjrhA6gw5xpn9KfVQGoJbtmN6cj1g
	 b38tIf/boF1cz7kY0B48jOKUkt0sg+OH1XjDD2fluRkbmgXxc4dQt+1kxrHjPzni8F
	 YReFMx9AmaoJWnpVqVprHQZWqD20v1KiVatvDazoq1XjtINrS5xlElSD1zblzAjFQf
	 2UQlcKHZmVgBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68221C48286
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170682949639.12070.1082200521982616583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07464c41ebf105e96d5d6f669daa0a7ab7139ccb34dff3ad51e97b6e417f6c35
Date: Thu, 01 Feb 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706829496
