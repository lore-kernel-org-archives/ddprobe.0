Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E359241E2
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709960297; cv=none; b=NS08nKhiVrD6LlVW4YBnodPm4IAJdRaZm6lxCwP4Za7pJnPZXQPgUHEf16IY0D98V2zNm5QDCEgSEUrMv4+kT2evtq2XQ+LUpwbdqlmLbVtoU9APj+lZf3oeMZsM228nbC9k4p533r06PdVFTvU1c3kASniDovN19t9XRKkDgVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709960297; c=relaxed/simple;
	bh=AE2FQX67VSBIJbgEDGyK/16SBdhhzAEGMYmy7ddGZpA=;
	h=To:Subject:From:Message-Id:Date; b=DgJihuEXQNyGLYTLrP6+M9pM1C4AEoiqATguoDVX69rmlDeUrjw58hhJQ6/z7rrGknltwpZl+eNUMk0ylzPqu+GXjvpzKQY2C3lZvmO5Z4a6BiysbwUe0mpsZlfkMe6RtVO+W1CjAOSvsJqq+UR2+JtMSCxC9javtstbEhlnoQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LT+qO+Xx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LT+qO+Xx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 961E1C433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709960296;
	bh=AE2FQX67VSBIJbgEDGyK/16SBdhhzAEGMYmy7ddGZpA=;
	h=To:Subject:From:Date:From;
	b=LT+qO+Xx8yWJsLCUeznaOvMSEAxJiYYvVwpRxPITmFGCi/8LUTYo4XQBHG16iJkMO
	 H7WqLPa9/vCr+ynxWHkFC4+YiI9bEPhHeQXkz+zc3fNaiU2xWIhWYvqnwUTf3JFK1Q
	 0+x3bAqUIKmoJlIxFSiLPdfVoMraZ/yuniCkfePsHB5x+wh90czG8DcXaxIlkCi0cs
	 QLU3MkSQDu5XSd1UUPC5N646DsbCBYKdEMwLe760Z0WQ2/N9RiK5fcAvtUuls4vpwU
	 OvN+LDYLy6je5ffOleK/9eTZFREQkURLj5Up0taW08ETD7wrIktnT46BwFC8EPVmcb
	 gXYbNlhRmEIDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78583C54E49
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170996029647.19016.5141647907248013520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b55ba2a7aa46b9a392779f4089634cf985e907fb881a8589b798ec468ca71471
Date: Sat, 09 Mar 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709960296
