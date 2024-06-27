Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C5E20DF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 14:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719500063; cv=none; b=qEFoCnm70qgS5+NK2vOT/g85HM3Td8eFRWetrk17p4SvrQD44Kx+bJmVWqyoGj1W9YkbCFU5ReGEfHzVrR4PqgHTC9Mb8UHD+EHL2i8TPaDkqa39srV/fPuvvBt8eHSVxndJVtJaIWIJa8CQzzEFsaX7VDMVkDzwm8GOMdBGjkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719500063; c=relaxed/simple;
	bh=dV3q4XREowYl79Ae6QonznYJjGzZqfKr52d+3oTldy4=;
	h=To:Subject:From:Message-Id:Date; b=FDttjnoOuqhDayjeWfAbY9zugUPRWaH+Ky2+3Qv2eHWlVLTrRdtZ+U3Knqoab2EUmauvUvLDP50BucVU1wLcVmNh71Bcp+EbKTfcRn8WhuCqI26ccrgOU8WEJ+D/LqA4sFpG/As9BoBlSHXZcl5wKEOVqBW/xA1v4E3qihizM58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcsLXFfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcsLXFfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3639C32786
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 14:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719500062;
	bh=dV3q4XREowYl79Ae6QonznYJjGzZqfKr52d+3oTldy4=;
	h=To:Subject:From:Date:From;
	b=mcsLXFfCvxIVijtXa+90r38a+0wj9ZyI7B0h8A0eLUY10Z/t66bXZKHAURnvTYwTn
	 vmugSjG3Hgvych8mSxQGE+iVWP3XY2U0zn/JCAn0hA5w3UKQVUkHHUqoTlQr7KitQ9
	 ij82noJu8fJJ1rvsThOGKRy5XnIYjebYHJiXc8vge55xcRWzpffzqtJHI7FgMyhoQG
	 8id77Y0VxNoYdtR7fP8YyqgXvXVCMYLNwkXWqqZQqZfWXtrmmmc1nY0l7MAF/iya6c
	 8ZwnKyAioJs+LLpviFFSHpHpM6xWvX6Zr7X4BijR2659qsqUpneE2tOoDJxZtgwdZZ
	 ehUjXyNruS0KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9541C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 14:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171950006281.24277.14434494639704467150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c151ac0821a8d4bc0c44e56f5cd446e6cfaa7e81d351973d355c2be2dcf2f77
Date: Thu, 27 Jun 2024 14:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719500062
