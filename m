Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDF11FBE83
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748020194; cv=none; b=R/UOCNqcALKemGwLn1M4Q3jy6ujvBblPAGxJ27F859gxPnoGvJUKGRJeNEIuddCOavme/Rs3VjhidggySSmMuOAG720RLS1KkUHOE6Dd4xyhWONjk+O6c2mhilQE2gIu5JDx0grnvWVY+3tgXQEF3xLR8XWgEbBt3YeTJA/EwqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748020194; c=relaxed/simple;
	bh=Ej6m9gKPjJjt0S6n2/mhMPA6gUst7Wi5xiy78Q7dmfs=;
	h=To:Subject:From:Message-Id:Date; b=U2/lK6VyL5oukriL9zM27k1qxyd4A6V4PGFNbyxp1/HkbG/GJXADTxlAxRQfvlSP9jY1gzCjwdvdcKepF/ypjCUXeselSB8FHaFliByxur6DWGL4LM20YRap+0SHrPKfQoiybTxR93pZ13nwxqiDJXadepbaA4mTYmyPLQqXY8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouadHWow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouadHWow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6C5C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748020193;
	bh=Ej6m9gKPjJjt0S6n2/mhMPA6gUst7Wi5xiy78Q7dmfs=;
	h=To:Subject:From:Date:From;
	b=ouadHWowufSajRYUHoBqoMgS/yvPEdLVUQd26Rm6A5DIb7CEAb/xTR7RLJCRrXCVv
	 ixDcc2VFnh5f/cFgU3EVtsJyvQlI5l92NAv167Tg7ZR15EPeoVMMNnvfMRmWY6iESO
	 knxEvy+BvXmVA/ucqixDrS4qPhDmwyJ0kTo2W4jyhFLSUEz77y8aWT7TEYbRObj/AW
	 2f6H7JMaCQw+Ns96EHcnsJxs48EMw0CSv8zdydGvDpPOWTmjtUAGm6gOy9w2otLn33
	 zwxCM1AosTKc4Dc99torwpJ59sbtfIgY6YwQVzQZC25p6U4eG4jkAMIsOb7masEykJ
	 NKpOsqRh8nfDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB48C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174802019358.16599.7210449536680408141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c5088a98d5d670228e3540050ef85b302810c9d2219ad946c15874d9b128b5
Date: Fri, 23 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748020193
