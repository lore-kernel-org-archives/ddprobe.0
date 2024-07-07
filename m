Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7693A8CE
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720382183; cv=none; b=bp5b+62pnWsn3jJjh+hlIHJtAgX1/zZpJJvH6pHZmv5Gbp6+Nn1mrl8UYVzrjaFtpi4Yvp71oIrJUkKlhSiC9y618pjO0OBVhHuqNr7xIZzyz0nvG6cmwaLeNvHTmg3SAg1cvpeolQr32uQS8tiCXfg/SEXhQfkwWLTYvMU0dwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720382183; c=relaxed/simple;
	bh=pPZIcLM4nld1LkfhZniysGbL8DgJnbZ3TwAJK+WOCL0=;
	h=To:Subject:From:Message-Id:Date; b=TM474+Wler9PtgHyLKGeF4XkG9X63/ISCSN/A4I7frnZCXq4I2iOMghz6creb4ip7HbwoUKCtYxdm3vozK6EuSic3ncF8A6BUgdckwKXnlICssKXcn6wc/ijXBr5jZvnlKTaH3dUeUwFO+IUeLRBkLNN55TH5KIJfSJbeHRkC7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1uFZI3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1uFZI3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E980EC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720382182;
	bh=pPZIcLM4nld1LkfhZniysGbL8DgJnbZ3TwAJK+WOCL0=;
	h=To:Subject:From:Date:From;
	b=p1uFZI3rkcJ6Oaaakhb9DZ1Tt98bBKW9JYGDhYLuly/zv69Ml3qKKIm8SjwdKMiwE
	 BpggNmRS1czVJDN6z7F3M+boeUA4V1nnZsysO3pa5VlMYB3eX3iatadDyDozv7Wswu
	 GpZSlQt0ElVEtE7mw+U/IIWuNHytO+aXm3ICXTJfHANWpsoa9JwfQhfJByLCreTOBl
	 sAjihvIVpCV61/TpC6cQWq2J+RVy3sgSYSE0dP+W+GVQnU5dP7vuflIDALIRvWdal5
	 e8RHyOKOQVoWnGmAvZk1saWw732DjikvMPyx3Q78FnUhflgCZwtN9JJH6TohtOhysW
	 sM8QT/r20dScA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0F88C3DA41
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038218281.10709.492615497754441496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad4d252fa5c647cb5ea8ab035166612f71400c7a55e4b0489cb0ba6f43795fe7
Date: Sun, 07 Jul 2024 19:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720382182
