Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0AF15E5B8
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738904155; cv=none; b=PajiMQrt7+4zQfI40fAbl5TXOX4vN4mMOK8hHQZg2Byv0tUQnmqWGLHnWFexsknXJebrEYKXnJkZXPLtrOYw/DuMvaVKz9FU6/B2K5koS1gu0tXKn7hDEDZIMQNDHSj9Mi60F6jX+Y8W8XKt4cEjYpiKi0W9lTN3atkWwP4gN5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738904155; c=relaxed/simple;
	bh=5L9ngcQvixp4HhJrZg0rqjivdSCY/7BkUJVMDV+hpfY=;
	h=To:Subject:From:Message-Id:Date; b=jgMLZ3ZamQoQLeSWpJhgPSLIgwLKwJiwsQRa4yLlF0lfW7CqxSrnBTznbqW6SIW4AecDYBpmz9byHlCIeVFcoCcN/DcgGCxtTh/8iO48NqkFTGUWQCVg+jeErpiXFST43SUVuWoaNh4yHvil5u/0lMo1R6Br1V3jqcACsMoQ+AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ld357Bh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ld357Bh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB172C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738904153;
	bh=5L9ngcQvixp4HhJrZg0rqjivdSCY/7BkUJVMDV+hpfY=;
	h=To:Subject:From:Date:From;
	b=ld357Bh1WeQ5rbG2lEBAx1r4O9pGvmmnlKoAoTVizObX4cANvV/WbEQle60rrqyV8
	 e/EF2r1msTXTE6TcIJ/s6wgKd/hwfR2N2R3CWlkBqIxsXIJ6/VSurlep2rtUvnUu2g
	 cF1VmhIIfKcIBBNBZG4rFSJ8geaJa+vVe8AD5o8HuteVkaGxafqaDxN0XeWjNVh5AP
	 iZLjbZ1b9GDPEauOL8e5CizeCz6cFHWRMovJ+5vApt6iwoUCsG+irVbAzsCVqvbU4h
	 i80kbV+kGLRuBToGuAMfsczfKGefPemLKroIg8QEXt0fqinumhuQLoEIfX+wbGyRzD
	 bTElqKPn3nAVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9F6C02192
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173890415366.4414.13351895347046462496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7117e4c2e578ea5633e723c9042856eff4574207386d5a685c07960ae8dbc5d
Date: Fri, 07 Feb 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738904153
