Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9787F38D3EA
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782239194; cv=none; b=hHVJR+X8LCqqtiLfEqmEQsZNE7SdoQsB9K2jRVaWzQGcbi3tUCHSd7UUVximifDDeSRDY7D68pnKi3J9ZxjB8BtfPFJskdkKhG27toSoQflB6TpuNYhxPdB208MdkeHXAODjPVzpye9fKbT/HVrvvqjhbI04E7hkJzzuz9LWx6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782239194; c=relaxed/simple;
	bh=zioJlcLTI8HtKpZcPv2FWtwng91eFPn7QWbEIskBDXc=;
	h=To:Subject:From:Message-Id:Date; b=QWQvpJTcHBAOwvUqtRaGe68JnSKZYS/9zQ9aY2hKxrO/gcFB6fFrHe4hfcFm+FCPq99TjvtbOXFxeSrTG9ZDC/MjUxvBC8wFRXoq93DqzTcmOLdvBWkwprT0Krclojw/gZW9ehPQMIQo/kpeQtGXbTN40Ioo3q5k5xfD5NM/NvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JElDJSPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JElDJSPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8924C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782239193;
	bh=zioJlcLTI8HtKpZcPv2FWtwng91eFPn7QWbEIskBDXc=;
	h=To:Subject:From:Date:From;
	b=JElDJSPBG6xesQ4EosOvmTKH0yh+Zk58E0zisDN4AMpH41+mk4Jr04W8RAQMF5Tp5
	 YL0Cz4cPVyaZqkk7mzV35ar6e6HnphfASXgO9TKJmxnJ7DCa0/KV+ltmq2YppxWhhO
	 IidIjoVvhYW370DlCDsCc8WrnCmmqm3SKzKnyhs7phDTlU6QxpNr+qBTOAgxTbe6hT
	 vuyVrnP82Si8/5iP3T7bC3zPws41IfFq/b2g27my05dg9oVL5RR94nHnjkGN79VAa/
	 BQlDG+TQMwGzlVTDoE+ERqLNPiU7p7lmlOqFrgM4RpGhCJOa42NEvRPsjSvjONdUfM
	 GRo04Ln7d6tPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3197CD98F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223919372.12679.12822045129701013117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6835d35f8db99a0ddab291e368ded665249ee13be07b3c7dee53df203699007
Date: Tue, 23 Jun 2026 18:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782239193
