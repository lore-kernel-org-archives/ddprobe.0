Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A0915E81
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725143754; cv=none; b=h61ARvWoWLcjj4EJUwyOksapgtR29ZtTaZ1ZIsbA/gC6T/y55bvYTVwjaky9XqAEtZoYERHYCoJ1xLD9sEryHDT3kvLuxrtRW7YyHqArR/2cDFchAyaerJ3MggSQel5mEb1YlIClgkFCYP+IZxilE3RUfYBLlpQYOxGhCeIt45s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725143754; c=relaxed/simple;
	bh=REGplZnKJC3DlTr77bFs/cA8FMms0goQfHpuVOvGA4k=;
	h=To:Subject:From:Message-Id:Date; b=PcmBLhFyzXXint+GAMMZ/BPiPRgXliJU6TPdstVuLjFCjbFa91GNsgsv+oMqxfT6kEM59kneQZ/g2yW3ENnJEycINWHbUbCUH4oUSlWfKBe+EGhC6iHkke1r9de1fu6X8PjqXZ+K1f4Bqv6FAQoDydbsxRmIFznNQI1qONyFWPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AK4DvYdx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AK4DvYdx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA75C4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725143753;
	bh=REGplZnKJC3DlTr77bFs/cA8FMms0goQfHpuVOvGA4k=;
	h=To:Subject:From:Date:From;
	b=AK4DvYdxyd71wrog6+CPmkKURXOa0v7HmNDLTmUXKbWA3c5tVBAJs/OWan1tG520U
	 SM1bwOLgHghfcSaKPVST7wGVqlUkEq1O5yDXWFJf73EOE6hFfCOfTmuS2sa3gU7t8P
	 SpQNrPoY7qJfgzJhUXmGzHf/+AFJuo15aI/gPDBfsr7C1n2ZlJdo8HxXcy+hIo9DG8
	 L6wJg1mqlPqFjK6yN1oWS7lHl8W+XWsrKocWeFK6kKBCOs0blCMP8Nq/Ke4o/tCyYW
	 vykC00QASEoIUhy9q3fZ2zKUMbblW8ZTm0sA1s7MrEhVxEDwMwEmLqUAz0CIXjVdla
	 hpNNoBz94rwGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DF9CD13DF
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172514375361.11010.3376989932661011847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9183fcbb41a9b233611efefc2e022fdba771c9b3590360218f378f3a4d35b418
Date: Sat, 31 Aug 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725143753
