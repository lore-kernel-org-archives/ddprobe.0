Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D928188580
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737204954; cv=none; b=sFyjuzezNuQOjknN4qSDFoZn5P6MSk3rPpCY7IP75mCdI8XJMdVwvSlUN4Q0kYYkkh1gE5MAYsGyyI+dNAlHXhePBHdKzkeVmaSy2wcUDFUmt4B94VVKkqUil30q1Jr0qjW3L840oYlZYlcazsdsDLN5Cg8lqo1d921YiB+dtms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737204954; c=relaxed/simple;
	bh=taGbQCeFrqm15nLuswUdW6STO62t7ntPellMh1LWwK4=;
	h=To:Subject:From:Message-Id:Date; b=L502wJFIRbfSz/ddYZPYH4wmE3vYvGWXMDO1f6T8G8YYFktMxDxIUO6LZQfKyIg+Pz9XAXhzMGgLAs13Pwi6HpWnhbqaSCyHrMipNmZNKY5RFR3+oRCEkkvw8UQ+l6NPsk0Cuy87DVJFPZwtwGcoP8pZXWcOQVtgAhYJQ5drAxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6wcWYZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6wcWYZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5788C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737204953;
	bh=taGbQCeFrqm15nLuswUdW6STO62t7ntPellMh1LWwK4=;
	h=To:Subject:From:Date:From;
	b=c6wcWYZyIlFhVKN2N4V0K0GK5FNyGxF+769XqfRd49r6D1X0JJ9x0iII3RzD8udzj
	 UEc6Z+GwJbz5Gb0C8iSHnCDJ0Rmvl+fC2wy72EG6Lr6+yjq0Ev3XITG40RdxRffu5F
	 f28RQ4tWND7xeG1TZJ/yNsHzkSOBcAlYMDGExAAqX1ck6ShblxrMN/F9UnMZml5b4e
	 X9d+MCzz+q2vnvQ5oMd+K1gdM/ESWIU+J556u/lebE+3wYyCOxTUQvu4NRH4U0MVrr
	 twVulIfSav1PihwOj06mmPe/Fnlo7sOuuegKEbX+QxYcKtDpv9fLpOoBmRAVfe1gw0
	 um2JFZS6F0Fnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E10C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173720495358.12947.10922631272885773399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d09f72b2e4ce37c8b94fb98aadfa0acab8c1666910f7ca6ec3606f174abe9c43
Date: Sat, 18 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737204953
