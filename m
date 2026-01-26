Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088C423D2A1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769468034; cv=none; b=XdOEkIip/0yeUjy0x3Oaiajr7gADpUt1K4NcOvm+beosctIjQaIbpD5yBMlvJWsMQtVrRgqL6bFvD1d3t783g5avRqRg99Z7v5GFxv/+RRNX5Lt4rzggMC+wN8YJKYNBINaUt9T93BJV4vI6VMk0EDkdbS3NpaSBspBXt7D1LeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769468034; c=relaxed/simple;
	bh=31FJpbSeJoyCGeceFBxt5ayICx6cIWW2NvN5wVHJEFU=;
	h=To:Subject:From:Message-Id:Date; b=GXdte7WrrEXaRlENETW4xyhXjSuBunBiPm7374Ksp7BT5K1qMBmPHWLpOO7Mw2Al4Sab0J453r8wCn4LGETKAqIx5U3W2GN7J4cyBrWrUVuuQv65cDZ7Zyu9nnwuLMaQDnAuO+VJ1OLeMQOL85v/1QbuHf3O6NoPTv4BZSEavoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfMf/sfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfMf/sfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DB0C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769468033;
	bh=31FJpbSeJoyCGeceFBxt5ayICx6cIWW2NvN5wVHJEFU=;
	h=To:Subject:From:Date:From;
	b=ZfMf/sfndCSaY/ElHcBb3oplg3aFQvKbr9nFw/swr03gKRZgju6V+Gnl+JWMbURqz
	 cvGmZPbmYApLXn8pUTJg4rJFvASQXyD5OTcTjAaWwe3NG2NS7sPsUBZFezvfbXiDUA
	 l7McSKWdmwyetGq9m8KpF8/FRzijSOLFs/F1jULVCnbtW9hL0TFrdjySJe+REhwans
	 Ul4NDL9kZfaE5I+hYS/AAxQ73KiNImIXRQoJCDc1GMl53QvwQAUE1ZJ8E9SkJLs6qn
	 z8X/nWben+nzQau6lE5+93lQzmT7CskytA2W1VfoacfAN+TQJ9/b/2O6t09lZkxj2C
	 Ck/irr8S49/Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B0D1951B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946803360.22618.1765914839165132299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d85b0d1e35ce9fd8f468a3bb128f31d2c8bd2091f19224e656ec71e795d4d24
Date: Mon, 26 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769468033
