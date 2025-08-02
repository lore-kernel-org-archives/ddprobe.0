Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C59B2E3705
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754125794; cv=none; b=QvfhHtDnZUlMj6hJbuRj9PW6u3KT6Bl7r7Zs3bVBq4MjsxafsRUbLPuevRVdK/VCIeNG3iZnta1yXAO8+XIFxg0hlUPYV55nADZBxcFRfbrUwGRMTiejk9pWdlkwBs3kREZQj7m40p78v/O84jZ4PBmyLr0JORz+ZtoM0bMlMdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754125794; c=relaxed/simple;
	bh=lyFizjY+KOsfQT72rTU4n+S+Q0CH4lCvcSyuZ7rWP/A=;
	h=To:Subject:From:Message-Id:Date; b=YKZDOfVLYpdmgBUfTFc06EkTZKPUcObRyEb0flhvc6IcUnXU6IoQV22E7x8h1xsr5TeMblFEjqdkXY3tpwydtdQ8gPnDZuPkEGsiRNGSisVOekZGplNP5ib0HbUo1Vi45OhWHBZzlzF4izQ8z8j6WXBZsvQS7TGJyfOVmhqFwR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJOBWCRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJOBWCRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB02C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754125793;
	bh=lyFizjY+KOsfQT72rTU4n+S+Q0CH4lCvcSyuZ7rWP/A=;
	h=To:Subject:From:Date:From;
	b=dJOBWCRlSJxVnsFQm+9Y86PEon8gp+ptREWjRulmKG7TmUYISbuzARqqS1Izos69M
	 Y2NsN23iJAo68ANYNkjvgu0sxQ8u7C3AtE/gnM3YesD+gw1ViFqAqAXfoVqRh4G1ky
	 5gTJaX1TbvBGc94Ne5pkapd7sEvzRfdbGL6vMmNywAyLyPKAN9hDrGIYMXLuiUqSs8
	 ZIqeHzU9x8En00eMOtDeYzY6yXSL55tuz/qeU3JNMRL+c7eiiWfYenSXCoSIZNxpQy
	 1kK7iKHpEGNH678A11+Og2xHlcu3kEqSM0VpFgzDzeutG+b/1ttDAdPxNWu1T/SrWV
	 hZKOP/W0kFRIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979AAC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412579358.6076.17602308767362158353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccccaf16b2b21c0acffa0ec7fddd40bfdf15276b12145904bd56d15dd24c7fb4
Date: Sat, 02 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754125793
