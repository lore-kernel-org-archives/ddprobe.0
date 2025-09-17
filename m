Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB2D223DEF
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758117594; cv=none; b=ZWw3DrR4IL8kuAg9R/85L3LBmZYa5/hyR5Z5SCUcY6mVRiKVtxTGMjDsI+gsO2H4PLOYO00Hf95ydXPDlDhx10SyV+fkZeN10kYcVetW0v8W9BhErFT/r262x0idiVAa3bswmwFD7Ul2Z+yWXiMYBIbZ270wckRh/B905ebpQ2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758117594; c=relaxed/simple;
	bh=wefNJfMSzhkhc1c17Qkqrd3XY3kN57bQKaVkv0/JlZw=;
	h=To:Subject:From:Message-Id:Date; b=W6O+GjnbYD9GljniEehC7ksKtodMpbiQBqheUPbHKWjSBtc+lrbZWW8VMFWBD3Boy+evqKM24LFVM0qCRpu3jwWoIaEHFhjwdbB8QnhGKcKst9mE0nTtglGizP9Wb9i+TFGtE7jQXkBYgKriv1CWtRIgoxxHrwJvF3ChFo0VwXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJeXBt4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJeXBt4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A052EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758117593;
	bh=wefNJfMSzhkhc1c17Qkqrd3XY3kN57bQKaVkv0/JlZw=;
	h=To:Subject:From:Date:From;
	b=MJeXBt4mNuPXF88CGQESb3SbZ2Unw8T8yrEo8vmaHM14S2SYn7PmO/JMGjfTOlz4T
	 3feG1RJ4nFtESRCAP4XzoZ84CyMMb8RqqYkJqaRZ92gRGWiOXXZZLvvyRFFe0RXy4Q
	 D5TspqE+z3AfJg0PzkQMK3SSznl+jY7XvcxlTrLmTzM7RNddc11ILkXObYwp9KiAXo
	 cwIq7zB1mXelxK+l7JeC5IKo0njRzbo4Z0tzrjPmdjer6g2mNIDnpUU71SxH4e8w3D
	 m/TLn76UnUQ1TTN29hQW6CCpCzocHA6/mJ4bcra7Zav7HZlQF3d01Mne7Qt+S3UEk6
	 rOJo0rkCUC/UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC0CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811759357.11654.1086688905744417228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8993ae2975188e6429cccf466ccfaf20994c98a7b0b6b0758da177c24cd5fd
Date: Wed, 17 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758117593
