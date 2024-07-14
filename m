Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7613033DD
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 05:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720936223; cv=none; b=dt/5tcUWCQCbSRBl6OAo52bZzB4XKSjAQg/HVYwtfL38nOeHcy+RAPmWnoF8MLbdvypRfcHHxTEbn/7yUp+OOX20DFnm4Ow14WHa5QU9uDxR/e+Iwh5yblue5BUhbU66wuT20nAnQATBSIenUm4fxRXw86D+XXHueFcX+7G3GCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720936223; c=relaxed/simple;
	bh=ixFUh5rMZlQhf6XlURaNC3I3sRpz5hudVAoxtTC1VMI=;
	h=To:Subject:From:Message-Id:Date; b=DCrbCYbZKohd5zsCcmxfWHdXeWtjnf0YCh5/OsoayHE6DC3FmaWmzIunyh4FsJu8vqytxpK2TGysZfigWNkC2KP6RD+JvAk2ra739gIYPnDGXckuQqi5lqTjciDt6zNB3AMbyOeaeTz6oGV6F9X+z7cDKEtQrcILp6EWye28YI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpekCrsG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpekCrsG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA14C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 05:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720936222;
	bh=ixFUh5rMZlQhf6XlURaNC3I3sRpz5hudVAoxtTC1VMI=;
	h=To:Subject:From:Date:From;
	b=XpekCrsGxxVmW5nZO1ki1irsm0eYiFOMX5cY2k0urquWsaRlDVqNp/dkdP6ehu7ZX
	 5FCXm85GPOP3Cn0JZ8UeEfCgB2aXwXMED+5YI046+vdwzbBZzdfir+klE1TSR5xW66
	 dwvmf0BOzczRCxZ2YGzhmu//3YNAGfHEXMAOFKQdsvfvdS1kWIIbsTCTaB9zA5M/We
	 n/C7cY+FBzWF42QKSBw2dQlJwVEpr9NYDSB+Sk17Vh8bjjDz06nURP0TaOk3DcibS4
	 Xjzaz0wXiLFZgt/QpZHR1v4I7RYii5sLhazPeegoHZ6YUiom9whFk/x2RGhI1XlQIJ
	 iXgEL+qdB1pdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E0BC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 05:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172093622277.14530.2720319180801320526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3deda0f3d78a948668f079628da89ea2791a3bb207a643a5765187088aa1810e
Date: Sun, 14 Jul 2024 05:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720936222
