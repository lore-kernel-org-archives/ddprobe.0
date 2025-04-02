Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364F77DA6A
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743609594; cv=none; b=i0OMag2dTTl7dYVsCNb6xmACya+kvYZNXDkH7/OYToeoekFdf9GdnS42o7xzp+m+gFnj2SUSR1gk8xmM/Hok3F7n0GJ+Z7rvYupnjCOX+ywUUfuu1+I3wk6imTI5c7skvlI7tughKnf4zy5aGxHkB157ZaO1tF/1raJb+/ZgVDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743609594; c=relaxed/simple;
	bh=2jP/gyQjPHtxEQrHNVDkcwNsY4I/A5MlPVSI0WQbLjo=;
	h=To:Subject:From:Message-Id:Date; b=rTTC7GM4U7wvz4pEQ0AM8RvIqAZxNzgGoXMF6mIfC0H9RuBq0hEYicoALdVdJ1cH3Asff9ZA6o2b40koPRkqNPxGUxohj7K+CfqGx8lZIVDXIuFaH6Lj5wwM7A7Ur1alK0PQXvlXN+56i9n5XgidN4c4RVxWImMEzEEOU+Hbvc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pugoGEEw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pugoGEEw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCBAC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743609593;
	bh=2jP/gyQjPHtxEQrHNVDkcwNsY4I/A5MlPVSI0WQbLjo=;
	h=To:Subject:From:Date:From;
	b=pugoGEEwCZ2D/lSTzpfHQK2L6+o2ckaT5fSA4jeSnBxK6jHh96mij0yXqHyvLfqBk
	 10eFl/vzoYftRoJSEgA+RXgkGqd8uXuI6pEi9DmliRjlkp/tzAlB/nsZnG+IrgRaiY
	 V2+7NgICTkwSz7i7U1ZCgVAW8NWV54U8aJu/P4losm2S00vt3MnVXp5m8qXuqfFi6L
	 hA/bLTlGQrh3NC0ZsC4TdYteyPiIvxdtQtGe1C1ZL/qZvqjtH0PhKJplRViItto1CW
	 hEAkWGZTWoh32u5i92PV8cVPKWTF1QWW+J/bC8UU1JWJX77Khs3is9Me5No86ROYi+
	 6aevYwjz9xkaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6BFC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174360959363.19468.15020135075474558455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91fc4005475aa95afb2feb6d328b3ea4bfe72947c63c7b06d5d96d764fe368e3
Date: Wed, 02 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743609593
