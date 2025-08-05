Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DCF26CE0E
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754408396; cv=none; b=iX5jZC6HrZ2vBHQTVwZp1PpcINZd49rv5go9/K01LYxLqCjxoisD697aaPR5jF4xX2j/hXec7Ye0vVK80ljTDt7XpRxKcgQtyk/uVv3yL5OMBZOQC3FOA1VFAD9wDUPsld8+eP5qGcFTNobqXKjVxlLFAFv8ChBMwz/Iq5BsnqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754408396; c=relaxed/simple;
	bh=/OqhMr5Bea2XcqLtWIQWREAAOdfwOcWVBMpuCsI8RwE=;
	h=To:Subject:From:Message-Id:Date; b=WnZluJlE65waY7yLk/xk9erGIHALC//0sIwvL/j+axibh3eK0GXTgY2eTQnrXGSVRbbwHHva7ii63grE++Wuq2hVl1jWbmEiUbCqHT2jqRDLkPuwUw/46eZ/CU6/R4fM65WK/OT+S2+QZC9nkt3gIm9W9wg4hwradRdiC10UaOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C43xuC98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C43xuC98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2DEC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754408393;
	bh=/OqhMr5Bea2XcqLtWIQWREAAOdfwOcWVBMpuCsI8RwE=;
	h=To:Subject:From:Date:From;
	b=C43xuC98lcpK5OSFaQ4O+QO5Ex3T3kl8IG3QzNLSl+iuB/mDIk8xzk0hTCCZGDois
	 1225Imc3LuUqDrsuqGL4bvhvokPeDNO3WmECg//eCXBlFGnm6WzX/ebpahxZtXmNPc
	 G9KI/Wl6uU7SRojebMY4Aa/UpmSrYp74ed8zbyxDytcQxLR/MNib35eVKHFqwOhAGe
	 EoNGdiKWv6Pg3n0/6sD/RG4mwgUHCxZrhqjY5dILTbKFEjhrhlY29xBFRUNaJr0t/N
	 EySWxB9Bv/0q7TkrdlsCm6JbN0blY1ycGo37RMKe8eVnvpoxpywABfsQilKYV6Ide6
	 t4CxBOBT377LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB64C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175440839358.9418.4411252004615514319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1b952e09991a6b88296b7594fae6018fca03b15e7a853c3d7cc80d4d53a72d
Date: Tue, 05 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754408393
