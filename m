Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D56C28F4
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726886754; cv=none; b=ElO3xXwFG2mp16aWtkuDF+WmeZAXet2yTEvqtKv5PZAq/cqa2TH9JLKxUujtAFkpYuUn5tgQ0AVSwW3kRTY7+DjoCXcJ5E8J+oNAQ51EezLa4vNGtPqj3XsBL3vHpbxnZdVKLfkAr02ymcxlMwODwtnHGEoJPFU47/89tfKc4gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726886754; c=relaxed/simple;
	bh=HQ1derLa0mjQaOz/pvuqXVgy8PQW4b3Of/2aSEfStAw=;
	h=To:Subject:From:Message-Id:Date; b=a51/wzzXRFrYEfAl8qX78z8ciubiWiAp5wkdufnVwgk3BufRyGGNIcd+RmJmqGUrdIZ1U1hKR6GLPQZnsMqizszWz6xIYQPjJ2SDWy2GQtHljsPGyGQdPH75lmbXkqHTAm9tCbPJCSlqmwy9lEP7p6nZ3JZULh+SNWO5uCYa3m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJDxXzJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJDxXzJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD16C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726886753;
	bh=HQ1derLa0mjQaOz/pvuqXVgy8PQW4b3Of/2aSEfStAw=;
	h=To:Subject:From:Date:From;
	b=AJDxXzJhb2ElC07NJqqVGG/cSLMsJtUVV7yQhHuc0/xTOGC9oyRnZWM04vlXdMd8J
	 m57wX6TBa+yElUGj2Zs61PSYMyqZn1/WMVUD9wlvtlLfs73ep362zdUqgCO45UTRFF
	 Qh9ZKS2J8wi+ICgn/vUNc2k2U31yQ3nzsAW+d/L/LagusGwayXLDTxOkjv3k/suMS7
	 QpuoUhxzp1TWoYuVefF6giMoyj0A3kPqrpIBgsMmbkQdYjYasqau/XLrF6qGwBHCND
	 Pwlwu4PF3dp/ugn2ZdIvlUFyZS1KzBqtJRAzf9Uj85rflJ/5aApQGjuZcVVJc/m3fm
	 0uleObViHnZQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B91CF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172688675359.7276.10422892110274542970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17c2ba8b74d5df2d6bf3a8f12245683eda39caf833e51f6b6916d3a6d8cca19
Date: Sat, 21 Sep 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726886753
