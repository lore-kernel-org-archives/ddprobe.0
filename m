Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A242638AF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754580594; cv=none; b=GM5VFVSkiL7MGrj4jQ2hXDrSxthxLWIkH0+qZcSFebaAvZr+NrWvuXYXmaOvtf8uyPuz764M+5LyjdQ489F51hDHdqy6IGRYi4u5cmEn+vdibhGRublink3Fba45TrTCfaw4P5YPJjOd4WRV0FkBO/Fa2KyX6kD5B+RDe9D++4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754580594; c=relaxed/simple;
	bh=4Csd9Jj+mXk7uHEBDs1N75WMkIYAjw2p89xjNsBN+OM=;
	h=To:Subject:From:Message-Id:Date; b=dqiKorv5CNpYg3ONQlCIXHoROJIPXiktNEAQuKkeBrUCZR7ojiMOE+mgdk5vDQdZW9wXbrf5i1NUND22aqCQSmB0lmxyqObAeGK1yOyjgFmEYXesgk+BLreFX729h0uY7+INDM9wIPyzw2nXtJEbhuCmOzYDJUU4Vkuga3hSG9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jtf91Xzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jtf91Xzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2142C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754580593;
	bh=4Csd9Jj+mXk7uHEBDs1N75WMkIYAjw2p89xjNsBN+OM=;
	h=To:Subject:From:Date:From;
	b=Jtf91XzjnA0A3aL4jGzqN6Ek6Fhgumlf0ltm3lLFYOAJy4Ea/Im2lM7pg/pFOhnOh
	 gcqRpjifE5Za/DWgmYoPyw8JRQI4uAHD4q/a23nPS3Fo2jBM21raFjWWQHiGClX1Mb
	 ew75pNhYQKM5njjj1Xga+EEsatwXtws/Usx5OBnOlcInwAsw4ai0LrezTAWgzpXmkM
	 IkdvQPK+oblQTP+Z0EXwE9vs3CbNd1qVtawmq1A/9lwmZTeL5dVo53vZlltk9IOiP3
	 eHAQOs4Ac4z5ZejDtNb+7Qrvf4Ng4v+nVV5YqXqIywMqutMkUOs+8bwLVBEaeqHk/9
	 v3/p3sU2f4SNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90513C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175458059358.20629.3553906335951052551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607f5365bcdcc1d7fd4d755289e1d4e8d532b0106b3561cfc9e100911f0557fc
Date: Thu, 07 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754580593
