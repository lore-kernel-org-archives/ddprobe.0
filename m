Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F7F1CA84
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746961794; cv=none; b=VBTOYnooDdGjDpHrrzhXwo4O9H2stqcnSu3HIAFozuEFu7bZ61as+OFMg37ig6/rOAhGPAg60D54jjzuR9b6ORG84Q2cco2GHGcZwjF/sTIdSl+MPuRcr33OxCjMTLBJm+FNLXo9qfDI8T1W65un3FlguY0K3KNlNALRUiuM66w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746961794; c=relaxed/simple;
	bh=MbCdpK5OgUMjr9V3i8kbZ7G0McsOsG9Pd6r4BJnYPCI=;
	h=To:Subject:From:Message-Id:Date; b=CAr4TjmZUe4dXDvstBbazP0AM5ENwCuk0G7MNaWB7LAIibruLVMfwNAVpKd+9NlTn3o0vxpjS5uelc8/e6+m+6XAwgDps6O9kK7WqrhEfYgPoDh4wTI6snxTvlfEKv8dveQ71NGIh8h5RinGK7cg/scHFpoW3MdIaKoxhppYdAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vn0dMndT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vn0dMndT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3071C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746961793;
	bh=MbCdpK5OgUMjr9V3i8kbZ7G0McsOsG9Pd6r4BJnYPCI=;
	h=To:Subject:From:Date:From;
	b=Vn0dMndT/JSIZ+qVi1FGhKd4qdF6qU3fd60hBBHpVI16MiMfGs9WUL3qIElkjaR26
	 ydtWjjM8LmdWDjGpd62xNtOKjzDTOtOgintAdvGZm8BhOKXgc5apjPFyj7gboFOnD6
	 +ZDhfmU25N82TE9QzBvoHVO2BCCoclscC66YaW10LSx//7aM4iZO8Ig4O+In6eF3u9
	 YmosO5GfECSJ95wtHqcCVNDhzHhyeeO7/8jAD+Nq/+4LNCHGie2QT1zaYI2+4s0T96
	 gaa4PqEg4KxZz8bWkA5YdGyO0A6w1CKyGgxtz6VuxxCupsoqvHx1jeqIVnI2m4nofH
	 pftmfEsYYInBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C02C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174696179357.1676.16828272289141346806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb6ee5ac6516c05cbfaa11bf0a008f383fe9f7de49971be6efb70999bcd80d6
Date: Sun, 11 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746961793
