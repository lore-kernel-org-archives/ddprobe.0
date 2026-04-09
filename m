Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2691626B2AD
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775762254; cv=none; b=ZuXkVZ0+qcWwLmGMDygrx2QWL7VWzO8lKj9OBVGz6JjUNuAjAdQZlqEhqrX64Q/4eOTop7s/I5y9mMsx9Ixk3PuPwbqwtGzadfRhlqPMrLabL6AnBLus8SWOYXCIFdvPwfhMxsYHIwi1Z2QpuzrqrRKir+SVjTS4Tg1zdRB+HSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775762254; c=relaxed/simple;
	bh=8y0MtYo5mhL20qAM0TjHH3qKUn8opH3TgTGXRZdFD+8=;
	h=To:Subject:From:Message-Id:Date; b=qmLylAbtkzA+5LDW03LWfq66tuaGgabldVP/cA7C4dF87iv1DZyf+9gwfTwu8DHyZ/4nOmvv2CDtjL7g1eil3XkXWt9qWgZ+5N26UEvk65yAWUIj2RftOWe4lPgVMHKsPBri8gR4VG04ggKPGEakHv7JT4yyh7ydS35dQJ0AayE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnD34EcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnD34EcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A12C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775762253;
	bh=8y0MtYo5mhL20qAM0TjHH3qKUn8opH3TgTGXRZdFD+8=;
	h=To:Subject:From:Date:From;
	b=TnD34EcKqVbnp+iPSphuMVJUV2Hdcw1gi+wVuODYnqXua+0oWYBPr16IwNCpvIYlx
	 Ek0t9Z3agFTPzwBsxYO6ICv+bRCBRUfBExhbApsRWhM1w8mZxH3fxtvbWoNL/EQY+b
	 W+3xqHz/84OHKVKPcAc3mgULA/o2ZEskjCG3RRKae1TFgQRkMnKUbz5zVUBvtbmyy0
	 zl4V6xoy5P4oro258G2P4pPc3HWqskDHtaWQh3IWRkIfgjAFnNnAZqvVBf2rq1VWbq
	 h3NYQ7YjT8wUtE2xCF64Fv63LeJ5s6S9+rE2f1bUbMf04QJ8Xml80+GljBdnbY7VVw
	 AwaoTldKLwPcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFB2F364B1
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177576225368.5177.18388999129290191530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce58d7d295dd72d395d9e7abb6411d958a787b769bed82638a3e88ef4c3bf3a9
Date: Thu, 09 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775762253
