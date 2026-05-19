Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DDA47ECD7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779184834; cv=none; b=bnNzCsNgDTtBEog0gEyxtlCZMR6QpjfvBYvMMJUOEtkr4/PoYNPjOdq5TILtlKBVwxDf/8VEJ4MTZ3/MovSruCJZXWVwUliLoPmhWUoRGolFPZm0zi9y6N+k1VShkduIczfci3twln5ZcUdl8XdXxH4zQM6kA6d/ZA8yoCmsu3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779184834; c=relaxed/simple;
	bh=UkZtc8/90h2gZGzR/4dJWTfYkCVbK4uo/1KmPN+sRKY=;
	h=To:Subject:From:Message-Id:Date; b=ZdVruX7lGmyjulPVQ1MDLwLP/Hr1EuYmukdhEf6NwjNb8zJMsGmCqfAc+dj1xIIME19ghfjdi7rymrIr2YV7zGDKWnr52kzbxVwF7WtUaxlEQs5J+tI8LGhOxLUOSi82EEnLRp55ciXXIGomNiaZfXN/BLRzdY5D13KNAbsX5Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fplOMHG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fplOMHG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D3EC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779184833;
	bh=UkZtc8/90h2gZGzR/4dJWTfYkCVbK4uo/1KmPN+sRKY=;
	h=To:Subject:From:Date:From;
	b=fplOMHG7qIOAy6exABvNOGRJuF+BKkOQ4P2ZzFZChlekzxLvxazLpsVwB3XFTkBYp
	 PnZrSsLffOb7aDxlkAirvicgRcLFeUctmiUMZJzrwdP7QgSSjmhL7mirWBg5LD44yR
	 Na1yF5LrjFvOicw11xIsGz7/YuoPmh8JU7SlRrpdxUcxIKQ7GYJZ5wdlurvB5dli0M
	 cLuQvQwhpbR6xUQT7cPCbCmCQgSc/+Xo+ht/7lYDwh01WYDM09ulhBmoUIriJW/6i5
	 qBX+heUTHAVvjJy3AqboJLeIacXF+ehn4rZkUFGOwiOf4mC9YV6OdmicMCaCZbI+Ay
	 flOLN96kKVs7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD69DCD4F57
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918483376.32330.13532361831799506637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde42fafaba7f5394b58529d8a9bce51c2da2a940c15dc04cba75266c32670f4
Date: Tue, 19 May 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779184833
