Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3620D2F32
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748053194; cv=none; b=mEYGNUZYisoLvwsY4UBZe7K4RuKnOITL7+OQDmw5GerU0cAqnFNYUTqzhAS6J+e08pRlHTyzFwcmZCUyexvz8gDNLzNdXyQn2d3YtfnduETZ+YhDOLDdgXxtzQPE0JDxbQdwMlrlZXrIa3+SgWx4mcTKK/LU4Qamam15QXAlfxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748053194; c=relaxed/simple;
	bh=Eg8o2d4dgUF/hlygYAMNTPNhxGZXkwBLSDk/E/OPXvY=;
	h=To:Subject:From:Message-Id:Date; b=oHjKY5GNy0bRrVu1k0WeE85hK2OUcdRpuXjTqEV+3Gm9CbbFUlo8hrF4i6dQR2L6TMZvDUHn1l6og8wkgD63CArTUPbgw6Ho0wWGYztEfWD8BQiS5b1RMVHufZYoenoChlAdVBNQKQiqQnUOPuYw9OeF7+XwJ01YrfCS/lumevs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Spsg7Nhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Spsg7Nhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E32C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748053193;
	bh=Eg8o2d4dgUF/hlygYAMNTPNhxGZXkwBLSDk/E/OPXvY=;
	h=To:Subject:From:Date:From;
	b=Spsg7Nhgkl70/SuI+DdRzxYyGmJpcc+479YYI9+NRtIAXvzdfObtdRCHymXslODYa
	 3N76b2vY6NEVSuB1rrEBujNXcGg0zkbr5XyzWZX9+KEWgk16b8iMUork1Zjfm+9ht+
	 4QwoQhkj7tkejzJNwEyaCdJh0QDzVHmKsSYpu2NUlwou0YtzI5VmBzBsnd7OS82+fV
	 agbeQU6yrSn4MDEH0ATaZHxup/PpX6VLT2Ch3WNuvyZKoKU38rrGI/NWcG8lP4/Cfi
	 1S5kPW/zivD1C0eagZMiP4/Gtc69r7/E6tqj323ey4HGhJBQHumBfagA6Xc9oEf7Kc
	 Ox1rwAIRY9vOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF6CC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805319357.20644.1621680635471997738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95c3d80e8a8f2480f6fc0f5ab58184b0b6eae7f5fc1c419dec082b6ab9226d59
Date: Sat, 24 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748053193
