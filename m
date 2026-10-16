Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA6E47ECE4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792146634; cv=none; b=Kf9p6g00t9uJ39pWgwT3kCRLX10dx7MiMVS439zBPBQmGrUyCjr814HSXjgX2dSfsqAkmM02bF6r7MXbXDNA+1bb6EC68/w0DASiDHSVbNuRimZ6jEMT5Ju+qkw/zl+0zPZ6xy4mLVEh8YPp1696uo94tTpXM1lpcvyRJMKQmZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792146634; c=relaxed/simple;
	bh=eFjxO7e3J5rq29zfq7ZcyK0yJrHJt4jSb9hwPqo6LNU=;
	h=To:Subject:From:Message-Id:Date; b=Ml8R3mcTH505AgiWWvzBfSpTlotwkp36ux8dXOu4Yrnk2MjhfHfaF1ReyU+C88RVv4P9i4H3Z3oU7hrC/59MrFHcG2WT/iAXbzsKYflRkQouUNB8S+thhxtkom/IUfDbOAmZIA6n7JBLUaybNr/ekB3vYDOhErEQQUICbBHcPF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0e42xi+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0e42xi+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC78C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792146633;
	bh=eFjxO7e3J5rq29zfq7ZcyK0yJrHJt4jSb9hwPqo6LNU=;
	h=To:Subject:From:Date:From;
	b=o0e42xi+zeoThJhY2CYCE0u+bv/nsqh31CWl4zAfbtHAosbrRiOqmp2j3+Y8a+3C8
	 Z1Nr0QlSptdUBaWris0bK6FqgsPypNfCGfud+GfiBh+G7tElyK0aVNE8B9wtI/j1ob
	 9FW25Hj5lva3v8bi6PQkChxIuDwYc4cX6h8p7GApIU09pnUeQmI/3FtP6NJrMNtiLw
	 XZ3SYf6sGeVoanmHnj2Vquc7kgZzPW+3sJ9c+1FdIVXnBMqm4fxJKfxbsWvaxWsk3h
	 XVXgRvyacGPkl2DCkGFO0RAkKYTbBP0TNAnTF0mNG5zB82c2qxroDULF0FmN0ooaZA
	 pJTCWV31byU1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB54CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214663369.4306.13609734685764019801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff54652f07cc2a123668856e6115d68ad915e1f234e33c80755d2022cd6f06a4
Date: Fri, 16 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792146633
