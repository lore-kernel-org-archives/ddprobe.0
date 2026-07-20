Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464AB395ACE
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784518714; cv=none; b=LOkVRproL9xUX7OhbTzMp5O+H/kUevGZ+cpFcwHvmgjHE4ThzP7Vyn4FvK6gP1c4kf//yujJ3vZifrjn4iiNY6MCHW7CzFvFurrGdTJD10qAyDlcKrPEgcMQcQhe4q52rI8TTLSx5wgFk+UDb/z1LHyGkprCwTnW2GaZwZMpyRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784518714; c=relaxed/simple;
	bh=nP8bAHYA0lT1vdr1tyY4I4O3IKIMzZ79PXICG+pw0rk=;
	h=To:Subject:From:Message-Id:Date; b=fXnyLKEP9ZKHaOD/3rcX+aHeEaVWW4h4PvNNoa/i3LZM1rHFFJ7AGcLQyqlckI5Luva8G7KyBlDrBiB1yxh0kEMReUHXpDtj7D62x7LtMs/nXx6x5WMazY4Y3H742CzE3sajxSs8rkxKXS58GJJ6zGJPDlZzAJC+GVC3Cm07wS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDFgx8Yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDFgx8Yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E14C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784518713;
	bh=nP8bAHYA0lT1vdr1tyY4I4O3IKIMzZ79PXICG+pw0rk=;
	h=To:Subject:From:Date:From;
	b=ZDFgx8YtzlO4JvnEMfzESy5+N+yrg7epFRJNIBw1Zko01MIUOkUIS6oGcasrTuPrq
	 vwzg/YdIqFAkRXtUt7rLHrmvr9GzqxW6MLWqPhh1FTSvFyTgUyX4m+v8fkdD3V+rIc
	 EVubmlUpm8KSW9Y/M4F79grXL9ql8NNaBnQUnaWa3jn1rNWOyrGwl0qCrSnZOmMOi4
	 dGm7YAoTteakgGHGqkWF6usVlq6yLoR4k8VJZUVFIYuU2m9kNK6nEMxevena3oeq5v
	 0GPV0l3zLWqYDR4sLrg9gh1fW7LPgCE/D9p8wJMd4Gb6O20uYmYHpfuLghBEPdZ/d4
	 KHvT9gQSIhhrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7F4C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451871371.32583.2821322132554000109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6182da8d954dbad3874f7970833716c6108fd3d644980d02e83f091fa07f54
Date: Mon, 20 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784518713
