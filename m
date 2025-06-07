Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C254184F
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749283794; cv=none; b=UCj4+bGZ4wYMkDgLlTjM38luWHkHm/6nlbFhaOtYHD4FP7phKmld5NEWAU4EKayFelbGaNW0N28gb6SGA/pfRu47+zUkmgnLJ9k43vgVT/9QixTXM7zHMlTYhlkA4dsNzf2gD0QUMJuc9RiaxQ1QhFIMExe+nz/gioCOYhy4t+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749283794; c=relaxed/simple;
	bh=t9N14yGHkrxuTl/azRED5hTn22zVa5HTasPnPkdWSO0=;
	h=To:Subject:From:Message-Id:Date; b=Zolftj48IEcgDIjmoDDCv3oIUUBHFeB1tOnqcntWaehDGeG1+sXpPhb1up47/eY+7LUQiVs0+76myUdVoDVaRJVCxYX65DqLZ8m4W8gt3N2ldgCiFE0GySrCFBjGXsIYsBTQLPsPCOcXbVfK0SEsrprN+QCdESiLktrNmS940/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trxDoMZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trxDoMZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A572FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749283793;
	bh=t9N14yGHkrxuTl/azRED5hTn22zVa5HTasPnPkdWSO0=;
	h=To:Subject:From:Date:From;
	b=trxDoMZzdRLRExI5QcycyHZExyLCtf6N9Ww0VrVV34CWsj7ujtPLpKZCZ0ONRAhO2
	 GJtMege4vh5b5lI1xH6I7Df/Qk6LAxPa4F7Ch7mXlHS/ks4TBMaL8mJQXIIfMqxsMm
	 satcSWy+Pd4c2SSK++ixXFTFsMsqo1JZr8kcOeRT0JGE71L9JQEUS4Crp82tm0UTIq
	 J8VdM0rCYaVEsBsAZVzYor1gnE9szUN6bxclhm3wkzr/boyurevpsFkEn6YM/5Iv/p
	 cuFg63E1YQI+LKiHuYklURPnjvmAjHeA/AGTL8y3QuqPgSQb9juk5PdDsKEgGFRiOH
	 w9grcD6XkBnFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92636C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928379357.24241.17273167187308478310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868e7b7153eba61bafc23b043bc148e3c05bced99ec915ca82d41ea6cfb54ebb
Date: Sat, 07 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749283793
