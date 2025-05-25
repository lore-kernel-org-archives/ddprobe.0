Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAA94414
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748156994; cv=none; b=fVv4P/oGEpzsrtOoQGWIn878bN+7cbFagxnSRyRlV9US3Mn0cn+xIknIst5JKaTeu3a+M8vgDx+9KDB9QzcBlx9GqGwBdWe6Y/gkRduus8n2HQ+Szj8H9iNrcbZ95yDAQLjA0aMMElp9KFv+Z5ddKDgtPMAKiELqP/fZoivuOy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748156994; c=relaxed/simple;
	bh=lSdjtPyf4pG9z9CqD62johMcunnPxXPul7qCy/k256E=;
	h=To:Subject:From:Message-Id:Date; b=lwufN5NMq6ddcOX2k+Iw+VC2vfDAH3V3e3kI1PUsgDaFXWGgYGSpHdcFliyKvFf96+x+GNc4X33yjvOFVBli+QBTxzWOrAg+Q3h2cnoNUtHk0FSo6jqxgM3rF+eiGKxTYfEeM5pu8QxLNB9vzUzsgDj289Cn5iIfvVxJuEcyEbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sd6ROK+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sd6ROK+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5F2C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748156993;
	bh=lSdjtPyf4pG9z9CqD62johMcunnPxXPul7qCy/k256E=;
	h=To:Subject:From:Date:From;
	b=Sd6ROK+VTDrHjBspQy6ecSyAdixZluYnnyhEMfK3sD056pcLf797qq3ZmIDUzLPE6
	 3eFUbzyeDFp/JrcS5KjWj86w+PQ8zALk3fr73BoU5MYkHZ8+XDOXoAyUksNLSwkvQ4
	 hHv4zAnv71qs1G4BWT494PO/8s5dluooRwwdw0cSgocOyc9gzPVF0YDDDMfFdHMyrX
	 wuwNIZauio1qgMOIMazZ5+PHMUVelwceWt0HnRgDvId1PhREAgOTHBg8QZT1CCn+9n
	 6Afm7qvSSV+LfTaF0VBDW0FYQNG0TQwVIOmvgEJ4e21uTKjuvlql/ZrJAcQcYsTp30
	 dAKZCrrTErrCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7E3C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174815699357.16355.9558993466074160131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bdb09dcc986d317cba410b2edc01dec0b6fe9aa4f50fbea1317ad1e350131ed
Date: Sun, 25 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748156993
