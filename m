Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300D03E0C54
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777908454; cv=none; b=WCvOGmAzmMxH7UNU5QauXrsuLwiVO71MynVcOS6ArJaz7K295Cd1kFyfyYVe66UTJPy3G0oL992JSpb1MFUEWhcdjM/XKjRnLSBrVuNnCfgV/kAEg5xwWN98gr3n3LnJXFgT1nXCjacnZW3CHajvgZcCrTb+ME2JeFpt7oKYivI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777908454; c=relaxed/simple;
	bh=nkX+KLC0cNkhy1DRmx5M0e7CSacMrbNcl5zxpUXhQ9o=;
	h=To:Subject:From:Message-Id:Date; b=Brw5jji3prAVrtttZLYCzwf4X0HYB6y4jrmFmR7/kaPujX2HsoAbKhGYg+/E/EdUVPDXDR2+mH1jRUVD92+v7hkwrAbPC5h4MiLOqnKZ3Ya1UeJfPA+9wfdXTNlLUTrvNqeYfDZd6M7ApvRui/UU0kKgKztwpdLB7kiEvLGywyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLSvkMLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLSvkMLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2AACC2BCF6
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777908453;
	bh=nkX+KLC0cNkhy1DRmx5M0e7CSacMrbNcl5zxpUXhQ9o=;
	h=To:Subject:From:Date:From;
	b=JLSvkMLZ/kN3mOEDE8ne6j4CgOb6Ww4s9rHK3sdP0Of4tFHmZq2+4bvO5LalGY7RN
	 quaomK5LuXqX+eJtyTY+X3fbm9wveDLZp5Tn5NqbDrtWboJD/gWwnNCvPvGOxfSq59
	 v7X0YL/3iSdGOXfFCy4sBGDpuwSXAri6iAoybYKW+rV5/HKd0uu+S2PLnejcGpkCp9
	 8FRJqv6eTVWb7VJ46RvCOYNur+TR1EJDQDk1BJB/FgCRA2/bpMTlnOErlUfvLZfmpv
	 DfvMcVkf2gJ7g0ZlHhETZPQzR8SZrk0DsPLZpfKWxKRG4cNvy9Oy8ZDG8NH353vSIb
	 HsqRQBNJCjPLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38EBFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790845369.5421.9853844445411381659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00f776d9bba428e418ca3bfc405cba97e8bcbbdbe9a15dc81e042a2ea052f254
Date: Mon, 04 May 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777908453
