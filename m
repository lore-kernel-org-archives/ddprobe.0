Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCE92AE76
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791101434; cv=none; b=ah5GQqJv7GVzgJKptQOkugHmVNa9PxIaOCjL3WmKpVTX2w8eGjWHlzI0RbHSw7g7KRgZgogR3FKlkq5N6V8hfUf4b+eFRW7i9bRrDlKBm/trWYAwznd8G/4H86ypx7V9ntGK0wGjMalW2NanAhTaWnoprfXckMJ+ouW9loSHwOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791101434; c=relaxed/simple;
	bh=0t50DnTZ5dE32z+e4sbR+scW4NXttyVJ1BfNPKQTOKM=;
	h=To:Subject:From:Message-Id:Date; b=NU83A2Jr4upskI53gEj41BZ4voKjX77WGIqEUxgdmSmSoDFyqjx+zEjnQcQl/QQX80EICwSSUmdPRehBpM1klgQzU9jbGz5/5HbQXy6mwzSvkwq59/YDNGix7fotQuaM7cDWL4meLkzfhBcuL5WZ1qgvu/QglMWDlLApJ/Cm4E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kELJ2v0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kELJ2v0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0894C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791101433;
	bh=0t50DnTZ5dE32z+e4sbR+scW4NXttyVJ1BfNPKQTOKM=;
	h=To:Subject:From:Date:From;
	b=kELJ2v0gV+gBvAEZYxvc98q5pSIINs/t+z0RO0p/f1NESiWnB8ZFcmX91nowVyZJO
	 WCt1Y94yIVpYoagfSN/C8E4bwuL26Fi80UEMnfih+BzjwCMXm6DS/YIMpsw3K855bM
	 pH38di2D/US0+fQ+/55ytZvhiDKPyJjcl0p5na0W5q+A+KZqfl3yJxeif4SJHEBIpo
	 5OncZxhUjsO9T60M18eJE90hllPr01L+SMa4qGA35JdB/mLEkqiQclzrbIQ5CsJgKx
	 eA/qznnOBo7J9CD2MPSxibx/2WDbq+15tTmTjblQCOxMpVK6e1BZqE+q4dxvFF909w
	 nb0OMCoCIeXLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB816CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110143369.11212.9020125299155180816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f071a74609a099726a98de49c37d1a22156e584068d2dc79e5457a699adca16b
Date: Sun, 04 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791101433
