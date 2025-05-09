Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC11268C69
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746774594; cv=none; b=kLuR1d5e5TkNNc+9tAYOs0XWWizsqskGt/XMuDyR2pzVPKnD4qcD4tVC0GJM8U3yyP59Hgk9/mbSX80+L3rOSTCOYND6aZbsRgCyZGZnWmDebX4fzx/I7atkT6hBhdOpibvElAROEws1rXGLp1FbCsiJx9UgvGPpXDYuHX0eAAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746774594; c=relaxed/simple;
	bh=4A7cpsloyzEAB0xyIJnV/Kfwxx8/T54+tUw19Y8HLDc=;
	h=To:Subject:From:Message-Id:Date; b=uZTdCBkAATPbk7309mtO9DomaX/1ERL7WDkBI1c0hhXVumOBcgUW+z9mCt8eU8Dw/qwB5DQ/YZkNvspOV4YolblJ207FAzaPYGE/KgC1KjiplwAzg6M+Yhxzggzk1uuH6khWaMQ9c/m975vIZUQ4jJJ+2JPCLRPGLgiVn8Ek1Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzAiearh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzAiearh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC615C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746774593;
	bh=4A7cpsloyzEAB0xyIJnV/Kfwxx8/T54+tUw19Y8HLDc=;
	h=To:Subject:From:Date:From;
	b=RzAiearhnYnzDbPYltOuQ4wxHnsf19Jp32vrrVpoJbQGWD2ZcUdNYbkVTPXDJKznf
	 zm3r2LBk4AYLtf9FqgMX/cSFX3zdrW2JHsu4DhaT6dLfN3GEpz4XqQBZ5tveOrfbtl
	 ik4ULC9UpywIFiDaEL7FetFrBBL0MgKyKfWtFE+G+uzJqVmlQ/mMmxKTakLWEf1Spj
	 LoO4Z+VFMwIraW4dljK77bzUld7xTZLccTIm6XZYuY72KBRUn+dKQJCLOc0YH/qZR9
	 DclT/6OY1QD60P6JvPsXLtN5jZoWaEt91LE2o6GBegMlSsv8pU5KwmCh90oLYlUTTx
	 AS84AcknIwrfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F50C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677459362.11630.15063920308443193226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f929c298ce208c182a5addacc85d6bdb86734611627733213e232a3e7a67b03
Date: Fri, 09 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746774593
