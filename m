Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427CD171C9
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742687994; cv=none; b=QoPxIjK7WJp3GB+TbqpjGdSZPVl8woKTOhPGYwj90Z1Adco4Zqv9WkarMDMs1rxHG5adTaRUJDh/D93rOHIVgl3CFCnfNhic+FZiygzObAgxyfGdfCnxGg6wzgimfm6eDeDnEXWunvxbodKoySP+GBNFzGCoCAJrSoAXgKDy5ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742687994; c=relaxed/simple;
	bh=kSa5jjiVLhMm13ovfq32w1eDSuiGiL7lSjest70cK4c=;
	h=To:Subject:From:Message-Id:Date; b=IFFETG1uvYV6U8/xQ17NfRm2TvXbROq0ymnzU86iVFDUtWhkLT1KoSX/DoqWpXcuoxy/v3RSej4+WH9kkHDf1EL9mEVzovLjh04sNNk14FZDvDaAmaqZukZV193bJo7dwVYd8g7dVpqesAmt+z8WVyovfx7D0DlRJ18I8ROFHhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pu9pHeJb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pu9pHeJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0672C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742687993;
	bh=kSa5jjiVLhMm13ovfq32w1eDSuiGiL7lSjest70cK4c=;
	h=To:Subject:From:Date:From;
	b=pu9pHeJbDHfDX4ey51Z8uQLx+yteeK0wDJzvLLS4QHb1Lx1PID+ZdZVvKnAZZrgZW
	 aYs2997dtYq/y+NKUeeUXGFplIlvHZt9SVsc0zprOlLNwnqhN1Y9yIH4oeazv62ZgN
	 4f5ODDmqEOXCTZCE8BY7BC4E3VAk+iaZy8YfaSoF9lTFPOAWPNX0TDU4msn9nG4Jh4
	 ILYrOaGDqyYGUvPCflWtplcktszYhiDrR5sdbC5NDebpdkE+BBp1OpTFKloI27hRBj
	 LZ/FsVl3wUmmOeSC2RoS8J7IXcbug2W2TLq6ceHa1oukItAo5LaK6HReDCvjVoicpp
	 ws8j7/JFEbFYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB20C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174268799361.24865.368843467706681296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35cb651ba03b3621913c7f8d85e943395e8002182955aaada45730023d46356
Date: Sat, 22 Mar 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742687993
