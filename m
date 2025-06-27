Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2285F29DB6E
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751043594; cv=none; b=Y4gvMOjujOqixDK0ct5gAUDTleBsgWQ2W3xyZSIXaleoPt3eZfyV01QT58XhPlaDZvpqa/zRQ5tA/Jbx1VFTSGr/fpOs3PcQVVCQXtEHLNZ8mWjKDBCQrFsteO1QhcM1EK7sP8oAkQ3zcbzwbXgZk3au1Z1Brae+AhmMbTNfgNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751043594; c=relaxed/simple;
	bh=Vdy2UJ58smOyJI2jpaDDB6OKuVGy+iDuAMVx9Q4QET0=;
	h=To:Subject:From:Message-Id:Date; b=t555AbeDmsI2f3XNvU798imN9pVTcyXB26liYtPeLiPHG6gv38k0L1YceQj16a0cKZYmyS4h7gCzVW6iLPdV6+xOtVw40RFd+UH0FQ3hlzIH4sCbzJuoJrCnj186Y0JqZ+EGsX6KTt9raEGxyxwYceDjlk9x1ccCNI6scgrO5ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7fWxcZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7fWxcZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF4FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751043593;
	bh=Vdy2UJ58smOyJI2jpaDDB6OKuVGy+iDuAMVx9Q4QET0=;
	h=To:Subject:From:Date:From;
	b=X7fWxcZBj5OBVLMyo2YWOpniHtx2xdtjC4KuhZigHiJreE+ubUXqU2CSNitr+JLTY
	 1DXx3KWU/4fZdboZEs2iiODZxGBzzRGJI4REqBPSlvgMXXVuY+MV2vWdzCGZ2YK8z/
	 HGRfffJi5sy+NwN1GWK693Sk5yxHSQJ3NXF3t+vJtVg45vBDNsfllUpq3wXujcf9CN
	 OErJHO2OItgpM+zqj7TJMU0UNAgQ8apm65lNn4Fz5FwsaPCc04S0c+XDcHoeaZuGIU
	 m5erdINLgjhjT5RhdBb16SuyLEzIFy7HzpcFCQQeJ7RKNWez4koS7+mJrv44Fv+AEC
	 rj/3fiXi8jR4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DEDC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175104359358.10511.6007111865058868491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df3cf86640b2f4ab249a509081a6058e3f86a16a962a328620415f319a381e2b
Date: Fri, 27 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751043593
