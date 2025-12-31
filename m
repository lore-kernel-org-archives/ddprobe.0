Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343F9749C
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767215034; cv=none; b=hddVfL5nlS8JwDyXhULkD8NrYwly2U2qe/IB0dd3af/am5th8vamBE0/VzMuVl8Zy5qapO/MYTSDOY7nP2ZX9hQRjXCIz345sy21KDW7EjF6JLV/DwM1ab64guoV/kDtLKqx+/rFD9o1OXjteZz06979JEdY5tjTY2RNUBfK+fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767215034; c=relaxed/simple;
	bh=nczm0skwKJSagVFZiTj+lOqbNVmessdi5KW1IFZEai0=;
	h=To:Subject:From:Message-Id:Date; b=REN9laHE2zwJNfgtnBTTYicUKUGSxOczdKN1Ehl4ut6/tt7t+6DpYZFRsNsLMZzf+S+LAIT+QIywEAfoIUxrS8WhULRy53z88L33KyAXA1q1YYyp3hYKxsru2myxQpVVsdr++G92732gz7w6C+m63vIi7Cy+pMIloLWd6TrJNuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsNQ+vRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsNQ+vRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A12C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767215033;
	bh=nczm0skwKJSagVFZiTj+lOqbNVmessdi5KW1IFZEai0=;
	h=To:Subject:From:Date:From;
	b=NsNQ+vRWFjxSXm7/DJolbJhU8eSnojBvY6lgb34OjUytko1ob1wTcaKNJ1XIxbxtE
	 at1K8/WMh9/KNqf5rT33wfYV7VZTvXSc2CCcL2bS8Vm5X2MO9lsTOkXYjbR4O1wGO3
	 ax7zdxZ24xtMYsHOrg8K+cN8l5+lB738u0tAfmM97IYa8dKrPpQTk3E+KXtWMHVwy/
	 qm/ETDYmVao4lzstbWZ5yVQAReaEQtDJTqUSr6zHOWkb4EMXjJ6iji6EcyYXLYOblW
	 HRoqlwtM+urxQATh/ntHuJxoo7KCLhtS3SW+ZdEedtnEvreHPt2o83SkWTJA36GFa5
	 V0H31B3n2b6gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96894EE6441
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721503358.10833.3294283593629297488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85cf7f6bcda19493ef999e5fcb00e30b774d93d0fe2b1f3da6f8b299e80c57b
Date: Wed, 31 Dec 2025 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767215033
