Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B5E1EFF80
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764177774; cv=none; b=eCP35pbRcI+bQ8owMDgBA97flJokArlrJbEegmV+/h3xds0cWvvq6XZ8P1EXyah0rariotPgZ/hU6z/EWRs4TNDPXSPXg4XFKtrNKCwny8DmHEFIW03HKSK8IE5SZiWRk8Gi3fObBGXhVkZmRc7PXofi7uvv7VGB4mSj6yUe8cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764177774; c=relaxed/simple;
	bh=OgkqHDT6pK+9ojtEDy68Os2Fw3dfEGk37h90xNArlzA=;
	h=To:Subject:From:Message-Id:Date; b=AeO7hzVnZ2kAOmUvJvO0rma9zme/vb9nKVal0w45Z4cFcah06Q5WjxUMNxIsQ4OgRXaRS7AiMWWjVB5TZRHBnQrULDWGMmeLdBPVlyEVDZYrbu1dbIXqONtq2R3ndn7RukoFmeSanh4yFK+ZLGVrKADy+f5R+aj7urXi3d1ReSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAUxzpf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAUxzpf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD92C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764177773;
	bh=OgkqHDT6pK+9ojtEDy68Os2Fw3dfEGk37h90xNArlzA=;
	h=To:Subject:From:Date:From;
	b=OAUxzpf6/gA6127oCyuNOygSLvDBiBrNln1dneHqMB4qrwXIwylYo8uxG6pjZWvrA
	 NgVwfX9MPZ2JX2fsv1ibp6RNi06rdFZmKIqQqmtttVV+SY7kSP32uspTaI+Z5uoBZp
	 W4a1drbac5XUB3r4ZntCF3WwqStho06UOnjfyRyWfQDAV6W8+1xI0N04yA5rxZl5t3
	 7JjZ64J0hMwjRdsfviba8ir9q6+uOzQxCdgGfoVXkq0AyX7nk2XyoL62KvqvmimCnw
	 6x1e1JbvoSaYxMkOwRZRsz5rvrk69yLyudqiFJeBWRLukn+egfdst/xQEZTM51q1oT
	 EONte/yFnSHOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ACAD1118A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176417777358.5271.8647445421495291210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad9eaa0808f305df9ca457029b0a09ef7b00e237712c4938c975416cc4466098
Date: Wed, 26 Nov 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764177773
