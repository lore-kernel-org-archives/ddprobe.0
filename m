Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458DC17BCE
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749173394; cv=none; b=SuilXdIRyZxzBYub9tggy/Ow3RhZVoEGGvL2NSbFluTA0By2GTRsDSxzgCEZO/0mSVjuSXcrOphzCUUHBCQ/WDgIkj7Vk0UIpiD9YaCpHMK/rSd/GVGxqDu4QOsWXU/YehfzP41/Pm4f5J+ljcvQOcx3u+2QBf+YQwNKXsb9+UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749173394; c=relaxed/simple;
	bh=y+B/giHShPQtf5mKOHMZ7o/MZndVqMhWAjcnwd8Q/Fk=;
	h=To:Subject:From:Message-Id:Date; b=PvAijKrOF9bwC3gLScC1FLuSSs5FAZd867oQEcn3h/YGx8vHW3besF5aiiG+x7yZffekbKOhIhD7EMUkgQTp6y20ozw7mdUcWu5dcNtakDfCkHbID/RgmONaoN6qjbMimUDdb5zfIlK6O/snTptrJ3EBsYi7sJubVIL0OUsv/Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApenzldM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApenzldM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10C2C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749173393;
	bh=y+B/giHShPQtf5mKOHMZ7o/MZndVqMhWAjcnwd8Q/Fk=;
	h=To:Subject:From:Date:From;
	b=ApenzldMqNjup0ea+nsbCsW9gxqT95j3kDTZUGr/2QLFZt/Yk6CiAxdxo5qzK/AlC
	 urIhKzRoxKzoa8EfKGIdwpVTKbHErPDl8LHA7vmvC6vqIc7mMZbXEEyChQip37SCqJ
	 D7k8qSCVVKaQ1rNNl3LeLnINvVqcVul3mrxefgTFUO9a1QD+WKaoBH4EdfmZDZMKb1
	 vTZB2fCTobOb6ucW47Fh7v01c+ypojdzAqy6CgKRYSeZoTMYmYK3zUaie3YyRqoK3G
	 goqpwDTqYyJqXzw3+W0KDlG88xfzo4PShNtVcL/2YXIJ4u21dxZ6qdjZRWbJUsXdTO
	 RkseOOqsTwaDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF0C5B552
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917339357.12347.13019127395011557046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a072b5681b1a6bb03df9ea86a3a371208d917c8e4ba55e278ce4185454554fe
Date: Fri, 06 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749173393
