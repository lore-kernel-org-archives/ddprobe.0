Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130411DC198
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789263634; cv=none; b=ZBPZXsO9Io7Ez/9+0vMXbzzZV3tExyIN+gTQgTOw5id4ykS1lW7FPCCGTdw6QfTmPf0YhPdePJmhD91XIgUplXA+/GVpzk4rqDFRN55OcRypZLNwighKgJDOAhU5q6U4Ot4mLjf8MCbPSplQAKljfU30Q36MfaSWqiUUTDh590k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789263634; c=relaxed/simple;
	bh=3KsLN1tGme15dh8qjl8JbeN1b+9CP1XUf1jlkhApTRU=;
	h=To:Subject:From:Message-Id:Date; b=AcdW8Y0XKMQe9DsZanzCqm2m42o9LRnFk2uWbJXP3Ov0UMz7ERpNUsZHNiI4dKgRipa2uk43i+bge8ACewRUThd4Yc3ETsED7LQUqW6cALceyYXLoCCFTOnBr+4luZ02iw8UlHlCSeFuN7BXwnJv5QsVwCp4e4vV4g/ZAD9SJDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5YvfNiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5YvfNiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCFDC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789263633;
	bh=3KsLN1tGme15dh8qjl8JbeN1b+9CP1XUf1jlkhApTRU=;
	h=To:Subject:From:Date:From;
	b=b5YvfNiKiHvp8PAEquff2wQRk26ydKYnOA6LuLg+ERIgdgf6po7s83pxP3DLxeUcX
	 vI7bZ5uquFcjAHwgawW4NOztwwdWfw06UYZLmIIKkrTYxnXyLI8y9n/AJ57TxvsijT
	 64BtiXCQzet7OY1xorNb00YsKp6iYS5hCN7MHMk5omTsDr7cUdMgg3eTpE+ZULhpqc
	 nJQihPQnNTorMNWs4/xVl7Zom+EXm4QSIOG96lOMbjKU/z24skeAI38yGXwIqLCyFJ
	 lIitH/AqM65+vSNW4b2YBSudsNq8VHqJlQK2qe+JVVJYmRp8xAjDD7Xuo7RoEn6rO2
	 9SoWfno7xA0eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B8FC88E53
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926363368.18009.10176970493277009511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4a206d27d0bbe0c561b9b47e7acf0df8b5d734317c34a7b990bbbf545227b9
Date: Sun, 13 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789263633
