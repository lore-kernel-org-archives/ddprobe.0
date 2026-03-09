Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E07629D26E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773080094; cv=none; b=DeFFA6XIIEptd7XtiAm6PwDqdfCRCTgYh9wcsWAU77z/BpCdMxED4ibYHu5pejERqiroCNbRjZwQGlukEpIlIjWfgLUdueb7rz/rIJ28FvWbzUlJJw1H/E1b44+zJlxtPeSt5cABmJtPNqBrzpCzn38j0pz6JZlGRlNQicpqi+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773080094; c=relaxed/simple;
	bh=lyKoYaFcnQL0mLmdeAlshVMjSvR+uwtMkQ34Ex3zj5w=;
	h=To:Subject:From:Message-Id:Date; b=fUw7K8nltFPMel2MLCvzLna9by7DKHCI8iefKwiEor+73R2lOZkaJWXyHcJYM7svuK+OZ2JB+v4OdBX8buW86nVTTxWo6jD76FZPONHtH1J6Lz5fpnklFaEDqz74CJF4C70T3ssrvK0sBKWfwNFhrgwALPerrSUMOKxoakYyciE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+1E85H5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+1E85H5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B8AC2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773080093;
	bh=lyKoYaFcnQL0mLmdeAlshVMjSvR+uwtMkQ34Ex3zj5w=;
	h=To:Subject:From:Date:From;
	b=d+1E85H5MWkZhBVhW+01+5+iO9H7uuB2w0HoD6LY/uRShGadGRVGBvp0lcsF/EZH8
	 GvlzxZ4ZrhVUrDPGxOyh7D63fLf/dVb4BKzwV86sNMZVL+N1I9qcjYYf8r7pPWGqNe
	 AU6N6vtiuEZ/ywLcxi0j3MpwUZ2XRBVb/txaGlEBSm+dKu+bnn+RVxwyrdheletS8O
	 QAheFOfEsOC/iNOMtJzSMgrH9wbJpNNLCMqJbkKlbyaZrjElzGvTlvoAYBjoONHevX
	 0j9jh7GHJ+jblsj+K03chOxv0TScnAydulRZVv+cC6/14RSukybB5yCucMjTo2QSCd
	 rQ7nT918AuC8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD4FCA16A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308009357.21771.17790140591913256645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dafb2fdd5977f607e89a7b3784354a5cb09e0a664398521c12748ecfd615b4a
Date: Mon, 09 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773080093
