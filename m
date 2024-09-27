Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E1C142621
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727450754; cv=none; b=dElCD+O5r6waa3fIfa5/MvN+5d8pZw9XxYD8Ahj3n2vcrXyOGGIJLCADRRGJW4fFOVICXq6aeRUigQ8DzvZQzBAmMTplVP42OgOcwR+jpsKwfpYQdNuD00RSKInsQH4mNTRpF3REhzqiP4mnR+DXWQu0mT0xG901kS9hTLCa1us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727450754; c=relaxed/simple;
	bh=ZCPtvZnVYE5KqIw180UbDwmc4iEhx2WC11usxo693Sw=;
	h=To:Subject:From:Message-Id:Date; b=fnU1rb0PmGmluxVOYuHV5uu/Do6w1lJG9msoHp+K7/g9VhdgxXvdxGRmvMwtrVUh52ovCemGxIHcXgCD80qCbNCvjfcqs09OVIfOVPwsk3Cuf1fOIWHnXKfT8Lx5aZgW6+9hFtjuTsty7IyHZzKHd4RT5jUQaDyntppa4gLShx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGYN2uno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGYN2uno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79D1C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727450753;
	bh=ZCPtvZnVYE5KqIw180UbDwmc4iEhx2WC11usxo693Sw=;
	h=To:Subject:From:Date:From;
	b=MGYN2unoCwRPkKGph+/fe3ACFyclQqQ2A88vAfiQbelPEv7Ns/1KR2gQPcIehSKYN
	 JYVVNI7bsHJgxM877L32xsqsIbw6XBbYekb51eo81oK5zLrgcLoKNcAFZ7pF3eEZ9P
	 C8BqtbWc+62XGzk/EaT1BSF/p+7JYDq1W6XGNZy3xHJWrTaoLlHrCarLLrUfmVefhI
	 fGEwXxJHpcLJTYKNwiscYsDMDxW78dM7nyVIEbdqscy2uxLN3aAULNaaHvcs0mxgfI
	 2F9EEzJ+doq0u1gGwkXjiucVzj4wL0KJK/vPzrPePsKqiREic/cJfgM+/M6m5kbH4B
	 DCKktUkex841w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977DDCDD1B8
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172745075360.29057.5581428200826967538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ccf8affeffde755ec5eef6ab54ded838833d299b3b5a4dfcfdf8836dffc0a8
Date: Fri, 27 Sep 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727450753
