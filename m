Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B1121C190
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 17:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741370334; cv=none; b=uTxvepfwGr91wPoqy0IMq2H8eXyZt/AGyfX/gXAAKhaXzcUvXtihMcG/cJhH7rMqSu+9BByY9Uj6KjpWeUkrIX+Fjmm6UdgeVeGTGBOEErEhEXjjHNlnCeRRyLQs31LgVWTEUrGiqEEQU8bucsfIjhtWsBT4PCySit5ae5Gax7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741370334; c=relaxed/simple;
	bh=wgXVj6kZc9h7Dfi2mBXTgBY9mAsaUqYRYjg8LdPVH8M=;
	h=To:Subject:From:Message-Id:Date; b=ECICLkwvQu5SfBHVqlDPwO+wSv0poGV2zl4WDArWABT68n7IvTp1OPqt5EAq1v+aO2kY2Wp83zP2L/zdoGt7RK/woaw4omPlKS4mihJh+BumbEGO0IXLe5GIr4cpcrg08H9MS+kACoKzQu4QNiWkFed3BIECoygxrao7rJQ5CjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuUp6JPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuUp6JPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA280C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 17:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741370333;
	bh=wgXVj6kZc9h7Dfi2mBXTgBY9mAsaUqYRYjg8LdPVH8M=;
	h=To:Subject:From:Date:From;
	b=ZuUp6JPPBAQXJg27hu6q2XsSFotEhUxx7iKDce/IgstArzsal1EfELms7BuN23DOQ
	 WIOk098vy03VeUmq4CL4i3l+w2vu/LAusY1TiO+n5G+HZjHFeHZ9RZHHIEWmE9UfiY
	 c51XnYltsdO8ygFyhvphdaAKDUwGXJDJPkZmrPFJ2RtM7T4pUgUTGCoIXCj9l5yjWe
	 h1NYMs7X1jMUnUMD1lUadVsHiiwLJm4MMDsSHeW6o7N1qwcoZOJDhw3WU2tb2GgB75
	 acSpJwRE+lDM9MtRdDVCVxzezns93UgNg4YhwLyUemg4YB4VakBKpKI7jR40JxZR9K
	 aLLyFiCZu9RtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928EDC28B23
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 17:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174137033359.18714.55003560285881443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af22be657ea1ede17558b3743a252f2d38cd480a97d9e5cef258803a3688e60
Date: Fri, 07 Mar 2025 17:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741370333
