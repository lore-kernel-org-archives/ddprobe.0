Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D84941DDF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791583834; cv=none; b=nUebQME31QY/V7TI7oeqXfkALUSOCCbjHdoFKtwh4r18qbMwQmsdX4cRw6zyIU1r5ehRawqCRAZwe+8h05rtdbEopkWuoyAHJP7JwmR/u5WNgJF89AosSn1WffBV2DVYDqRbrWyRjglPoclaJjrT/jC3zWZDox9yngpxqqB/BCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791583834; c=relaxed/simple;
	bh=H9+gjvwuyKvfpoWmklwYhkw/7iO1DT8HmYw4ZxEaQv8=;
	h=To:Subject:From:Message-Id:Date; b=a0iuMRNQgh8G7JiF7xcuTD5ksiWD/t/Qdq06zB0NwmlTp8gG4430djTbpuxsgkkez+5OOVHo4Wnjk5VIJfUky/MShEuuAbJqUuUBByL/N0o5SGE7It9cNHgWY55JquI2FaMEiey7RwppWRpQ7EAKN0IFrTOHX8ku5XG8tZqjeaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQeefpQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQeefpQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFBFC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791583833;
	bh=H9+gjvwuyKvfpoWmklwYhkw/7iO1DT8HmYw4ZxEaQv8=;
	h=To:Subject:From:Date:From;
	b=nQeefpQKm88yKOe1/lxIxeJ9/jAARrqyrNXPgFUyrsFAJtD0jJYmoFcIo/eQGXBSE
	 7qprlb8Lq9nmPqs22v84obTS8nrrSXbtR51nogIWJaLi1EYZBeQgMMw+cmPrFTrb5Y
	 SyCCFdBIvEhQVqP1nVuv1ZnNyaXpIUMEdqFJnQ7fqFsSi9cBvmDUlpIzqU3/1C/Egg
	 ptamNxRyPkNp0sHjGBbvceDjIvenu8cRx82eJVBfezgQ/ykqOn1CjP4NaJHWQYipMB
	 HPLb1SiAXcDs/L6OfZJYyKp6RBE9miNK/lG/RblNHyG9y/sEqjNlJCcVIEgAdkA55g
	 9YSKB71O/GgzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA086CA9EBB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179158383368.21334.7749975885791077259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f81d2d03f172178eef6f84bc90ff4f3880d0982f664b0ad134e6adba5cceea
Date: Fri, 09 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791583833
