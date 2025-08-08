Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99C825C813
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754653793; cv=none; b=icEAhSV1/YSs24YA+46TdWWfYv8YN9XGkLDAPt10HWcZRtoa97MeERkSGVAlff0B6eRYvXpAtHuMfbZmslt760ZCspessmDEn91ZGFW4exeW6plqp7+dJuKXxLHrg3czEW6+LsJw25bPNbL+GinzP6BSEPmyQtjagzzekpSUfD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754653793; c=relaxed/simple;
	bh=RjSmoEADwUbtK6lQ5z9GfKvAO4UDDxvsSxGyRBdsF9I=;
	h=To:Subject:From:Message-Id:Date; b=Tbrbd6UUmn/RfICWglfAnEhrr+ufCYgJN5Z3ueai7wgdUzQx1TlY8THCtj0ewO6ex6ejIq1Y2OAbOy7Tjq168jNodJd4KeaFvLHh2LbFfX61dHmCc7eStHJnEd0Lfl7AV5hW2C9JadmE4yk42jVTJcOnS8ELBcBCgVEwIQ3yhkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyTGrr72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyTGrr72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B462C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754653793;
	bh=RjSmoEADwUbtK6lQ5z9GfKvAO4UDDxvsSxGyRBdsF9I=;
	h=To:Subject:From:Date:From;
	b=KyTGrr72ZUldu+F+wkrORFk4xIAl8KGdRUvF4V2I6phJKjD7TDV8FTFmA+F4tavbr
	 KA+dMl0c3plGRPSfEsEk62R+yjiRWyUSm6x5Vj2CQuYlNgqhBXoDrURfIww6qEv5Rs
	 BW3BxLdj9awR8o6j70eJLlFj8Q5hmJQMRvhXa8Pk8dzCDFuRxiP1wkC0lZNyrnIo3C
	 CzWlGxYDDd2gWLnsvIc2C5j8dlnAQpLbc86raDNKONanz6hVKD62X/WF4RHFcc49iX
	 WjoUn371+hGaFqjnmxD5A2D4eRYFI8RapCVUWUAdZfOLMn3GCanUYndHSeRiu/xgfi
	 gyWi8fyJUiohw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E18FC87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465379357.23571.632885113734208159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6500427a38e5b417148187a0ab33b0c3e250d8f3f41f3b0e6154f8ca76fe1a43
Date: Fri, 08 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754653793
