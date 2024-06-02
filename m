Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5151A17BD9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717328123; cv=none; b=eal6fofpYlcz+uXVdDMIrLDsqjQAeiP1U5qUhhtEjqIid/SbobunBJbKZxyZqRe9TfsoLtRq1sss6ZytyBcmYfZhs1c51VFPypzMRpI9l53BQ8geLdVIG8MC9tShsIbAdspSGeFntGjaDOzSKvJ7SxzzVTgHkkccFrC+PSpHlEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717328123; c=relaxed/simple;
	bh=HXNBCWUtNZD8ttXYOG++LV57oB15+JqKxIZnub9Q8KU=;
	h=To:Subject:From:Message-Id:Date; b=QuZ9QeYrYTKTjzdYy2tHgsoKFO7c0jvlZXCR+nHJo0zJY6pYuJI8W4uP6O3qKZ2tIPuQ/Qt75a+0tu9774zCrE5BkwdPDkNucyfEZMNrba7hytQrAw3w4fIh1vyyk2yVRiZw/OUb23qWSxf8FKlhbegX/MPq9NeISuXqS3NSUAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzhTcudg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzhTcudg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E49C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717328122;
	bh=HXNBCWUtNZD8ttXYOG++LV57oB15+JqKxIZnub9Q8KU=;
	h=To:Subject:From:Date:From;
	b=mzhTcudgncDSPIix3V5iO7y/aDSJne5ixoaBi9xkmKv0C34t32EoLW4IFsEzSKuTG
	 5gSsU15lyQyBIqB4mi3YcBvnVJ3Q5CAtyubj7g0tZHZ2r431i60q/rCORjD7Umd4SF
	 tg9QaKBvziUAZTJsVOkPP7dtI+w4ETSzgxkim67SzE4lBd62axfXhVzg1Enu3tZ4WQ
	 UKT1IvwIwi1aFCgkjdKanKy3ugSFB5vpIMu3UDwT1pAcpDOd0aLK63SLIzY6uNCAG3
	 ejnU1HcO7lh/KrWdyzIqJ2E/ntlyRIb5A6W7bdYsIaPAHopAjCugeQY001uCcDIn/U
	 Bwpyx/pDTq0yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAAAC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171732812276.4950.2353467042158823053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a322d58cdb1c1ab840ec8111a8afd8ba9f658c7a577e14a0aec9ccfd0ac351
Date: Sun, 02 Jun 2024 11:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717328122
