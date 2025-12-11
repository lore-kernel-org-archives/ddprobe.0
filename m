Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166A71EB19B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765470774; cv=none; b=UerspprWNdfyKZx3W7SNzGDRtQuBUbiTxoVBNnnzdcl9CYfth3CF2PqO9NXEHLAoygDA1mwTR4xBAo3v/K/0eRNvRYXeR5Q4tngzKyk8im63JQDCo3KRcGAOWM+iCfexXKeTQJv8SYqTS6TSp2uUU2IjHqFbg5hB8oGZioVxGLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765470774; c=relaxed/simple;
	bh=dcsGU9ihMZh02CH8nohJaophObGZpP5kIWXsbq5rfhA=;
	h=To:Subject:From:Message-Id:Date; b=bTOeEAf9tK5hQhSDM0KivufvFs53KPgxiocr7+9MAoaaD1oScQVht4WZOlNw0OAH1yUeGd5Wog1dViAQOCNGtAmXMXXbAPiGvD+1Joh6/HuAsB2aH4tYbwkEgLtMANcINWEYNQfN/qg83ULrNLwp3xA1CtVH2tWhwhE1TpTGeXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwOgsBSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwOgsBSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36A7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765470773;
	bh=dcsGU9ihMZh02CH8nohJaophObGZpP5kIWXsbq5rfhA=;
	h=To:Subject:From:Date:From;
	b=BwOgsBSxi0o0oepVqOD7A8qrLpIVA1tiyHtLQJ8X6Mf0+PN59xwkCSsCU6mEypeXC
	 IiGeuyfxUFiFHuJVb+boyaYxgDkKor80cNnYr2pr8vmX8+ZTYp+H81TwExVICAhTrS
	 ayNdpzjhBtkj9n38FUUd1Uj7Pf6SdNAixFlEzsxQ6wtmtw1WiKlCERaicdN8gf1i+F
	 M1d55rTa95N2lpwYZVAx36ZYMgnhQKsXM/FNgMrMNFbJPIyT9TEzmVBGa1lihVBYKJ
	 hO1n8HG9YnNBw1PazaMqLBcuY32JtKNq9Ev38NI3JP5ALTu5v00kYPhX7911VgVtrF
	 IdkF4RCjlWmJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B10D41D69
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547077360.1330.751213125510873864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d046563bff22cc4db03a6b6fe6b215feb8174cf370f4ddfcd22c993bd86e1bc5
Date: Thu, 11 Dec 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765470773
