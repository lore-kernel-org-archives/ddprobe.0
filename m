Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B3731353A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762784994; cv=none; b=DWDKdezq+0sdXFJDKIJ21hHdGXgSFpqaIUY7lrKzqUcYVW0AjuibAuzP6WKaWEy8B+0PvHjIzTF2S55CSJbN4HgleF3vzrd3WytObl9LJSbaWoRXDxw7kDrPQsh5BpkCk1A83w+9mhFLmEJv4SFAIZ/dva6HwOCbc7DihudWqro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762784994; c=relaxed/simple;
	bh=DdYBeJRALJCtI5ne8takSIt9l7U9L5pGHBD0ivr20Yc=;
	h=To:Subject:From:Message-Id:Date; b=CbvUU0RE2kJQcbZmuxMcKRKDx4L8hKRqKXlA0hEhuZxBWgvUMXOCKiRSRgaA19m4iqJCvNvUOcq51422QtCISipMzTDZ4tXdVQg7tWz/XYjQLxmsy2ilKqt4tKtNgdzi7aA5oxRV7VSDTtV+XtkWFSdubSLZBTjNijj6+nr2NN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GoAp6/R3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GoAp6/R3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C983C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762784993;
	bh=DdYBeJRALJCtI5ne8takSIt9l7U9L5pGHBD0ivr20Yc=;
	h=To:Subject:From:Date:From;
	b=GoAp6/R3jsnhGYBX/TVuojLvc6o9iDT1dqfCzblVhmLyNsJQCbMZQmUXus6G5eeFC
	 VTlQwx9CXQH+Id6enoMu6zOv4PPR84HSJ+xiNk1NiOtkVIKq4kdtvHj/Svma+1X/jl
	 mBOCR3XCXEviBjkYdLh8JBbUZylAxI2nZAJWZ2dB9GnxR8RvdvIuv5gWvrY2fbMfTC
	 /imWtn6FAk6FXi/P3QBXjO3wzCZu9V4CqTCyDJ4C+Uf2xnkUEp/xr7Ekq4eLHpcOfl
	 qEJeb7Oe0dNx7tafzOE2adMJ83pS5cWjrMK2Imb60fPssqCamOhRWkPsgiFzm4fxU9
	 owgJ/1o4/+PGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91214CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278499358.31529.16722605377669835422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 436f8f78fd5ff9bebe49333a04f1b7cce9b20864371bd90194616a2ccf3aee77
Date: Mon, 10 Nov 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762784993
