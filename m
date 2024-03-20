Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B3839FD3
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710932297; cv=none; b=C2oBsI1ow3vbXG8mpr2RHkhfK5FMnpteIBxe0ob6uFKhqEK+6HYdG//mNKxacG/6HLUAmRnr7c1NY8zrlETDX932KP9O0F5e2vtI+ss6d3v1AMC0ojdI0QuwA153ZFWO+8QhEBusq6uaN6AcoWQZuAK8aiV1M4OrhI+Am6IkWac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710932297; c=relaxed/simple;
	bh=EUxWbow4/nr1T3PkNHVMlF3W/Penhd4FZTVrdA/yLG0=;
	h=To:Subject:From:Message-Id:Date; b=j/7XORkBf3f4q4ZP7w60TtvpymRdJejNsm2XfD9E2THKXY1Em4zBL0T2r8LAhzZKQ/NXc6izT3UDk5NkiwtxC7Dlkf5ADcdtc9FhF0SLDl9cxSLmNG8HV37yE/CsXtNKY/Hw8Lc1h0ITRDYBkSq91GRzh/as4XDcquep1jwlVYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keTnVoJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keTnVoJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E683C433F1
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710932296;
	bh=EUxWbow4/nr1T3PkNHVMlF3W/Penhd4FZTVrdA/yLG0=;
	h=To:Subject:From:Date:From;
	b=keTnVoJxCXSRwHpWzfTs2zZYCVowqMjFlCPSmyywhcMOS1NpCAa+GGoVn9kUIAlGr
	 N/QM+1jwTYNruz2xOZFb98hdoRKV4CH72WW9f7VipmFbl8J4sKnfX8i/6deo6qyYP9
	 Joc6gPPY1zY7PWSWwz0NmT7PpHv4Vum8X3Twk0tfplbszAARXOBU38R2kWZXSFY7tN
	 5s6ZveSB5bYgsiIuhhZ/YZhzS3OrYBRhJc6UxDYdkGclE96Jw8fzjZC0mbjiX5KX36
	 ti1kyJzz/vfN2WfAC+mRe+5Ozccay4/dhSxukoVW1XThqRnEMK2iGfWsmLccAw9u0E
	 /FcGzrvljUhOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF09C54E67
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171093229638.25335.7843005151095645792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f223ccd295c7b17a9967f5708dde7190c0bb3c7baabda76f468dbfd0abba14
Date: Wed, 20 Mar 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710932296
