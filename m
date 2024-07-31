Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374E81BC4E
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722468954; cv=none; b=Z6m11KsPyYMSMU15K3AG4d1V5ZMMlQLq3PH+uyITpEWrvy3YKQa897prrbHmWvqq3PkxETrefDcGW9/HZR+lrJKo18+i6gQqzlqYPe8XudFnS5ENXXKs1fOt2YqxDAyAXKa9LXuxogWb9HzXxtH44Jcog/0++oqS9k/xbiezlqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722468954; c=relaxed/simple;
	bh=/zWHc1w3WUq5uklMBuEem7esiSzl+vkIt4GoSMaTUWo=;
	h=To:Subject:From:Message-Id:Date; b=ewaQ2GuvkOjBdNj5br/KXU7l7cX9Asf7gcTzj0sRIsgk7QsPmra35nEyIPvQpMYH8RJTczNDSAGGw/B9PUDkzQLqILscRXK9GaialiabMYEMFdmk56eVOo0h0wuKPsa8rkkbj7wEEpibqHPWcRYBoIBekokyUIWnJX5+uM7aI2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TseZoxR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TseZoxR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2448C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722468953;
	bh=/zWHc1w3WUq5uklMBuEem7esiSzl+vkIt4GoSMaTUWo=;
	h=To:Subject:From:Date:From;
	b=TseZoxR0k/OZH33w2KKBJ5pdXQ9bVx0ZoE0Zf3OXmov9QP7A8TIjW5ZMsuUji5UKx
	 2mpbQlCLHRzAbybAm4Fjf5tbq7KDcCiX7vRMPk7U5gTGPXa4GQxSJvXp0Ti5YpuBK7
	 Qt2j6mkMg6A5NtMM3CF/DZm2GGurAe4OFlweYA9wk+zPQWxx/fDrDpE7zJNXF9msdB
	 m+65SpSKuIH8Acbv2xSK8/BmjmYhbx0p9PPVzQVgV4i++HEBi9eTYIPmJ5zr8DzRed
	 mLDycWObfl+JybkueO+odMACrBeHgECk89oE4tp7uay5AXxjyS9IOEZ6Wd679cChQh
	 0Wts/xSLKgO5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D902C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172246895360.27155.2693177584009678509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdba4e27d3675624dd7b375c5132ca332595ad50dd730f042be99c9a2926ae56
Date: Wed, 31 Jul 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722468953
