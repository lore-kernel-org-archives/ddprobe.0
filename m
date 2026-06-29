Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69AD03D9DBA
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782718714; cv=none; b=T4ZHiYrxOFUGuTTUBBpbI0j38Iv83yoCxk4VgVDBjsp+SitQ+uk7YjZvfL0oSCgpJJ6xIutFNvhXBHtcJi4Ga0yq9rUt8aeq4e++1zWbySfwjml9OzbS8mcux3Wrtk9P4qOpdFmrllCsQVuPES9e3T7+N5x65zv98ujrN8g9jLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782718714; c=relaxed/simple;
	bh=aXXaDYMtiCvGJw47Y24dwZaGAe+0hr1F1wRi81sywEY=;
	h=To:Subject:From:Message-Id:Date; b=U9oKhPcm5cphUGdEQJdna6bLddFBtO+NtsDkTWtr1Edh2ZFD4+P0lo6HQ4PdJaSxeaRTV6ADLRKY6bhohvNFFS+bOUKVauKJ3HETdYvgKFrtM4o08OxEEVctXJW2VTz3OCnN8ARc4qmgHgLl0d7TF+5/01ABGFrTt+Pmo/IWLJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAtc5tYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAtc5tYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4D8C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782718713;
	bh=aXXaDYMtiCvGJw47Y24dwZaGAe+0hr1F1wRi81sywEY=;
	h=To:Subject:From:Date:From;
	b=TAtc5tYz9TIzNVLclYyWH1Pv4Q1tFLGj5gfDuzH2AxMfvwa5Vh32MJsAn/7RldWco
	 eeXiYrwy0l0b5h09Iidk0A/4zuCJRE/nDT82OcyIunTJojGNZhk9fR49HGQigZWODc
	 QwMIbwRH8281tAGe7k+feFzOSFWIxGjvmOCb6Q7H187iEqZwb2YO9fqajgM7c75gRP
	 orrj+iV2tklJvDG1XI0sIJgttZHJlMmV8y1WjxsxgV+JdV3L+oLhI/Mb7smAF8ceN8
	 nIIu5TIQ698sHJfC1breR/00W6RThw2GRZKdTfs1glFFXO1+4d+B/Ean3EpcPKDlZP
	 LFPqWSxm/4V1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA47DC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271871368.2605.5266289104888005168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65883dd29184f51b5e657c0289a402f3cf211fdd3d2d626a6c7295c9b8b28ad3
Date: Mon, 29 Jun 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782718713
