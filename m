Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AF561A239A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775616334; cv=none; b=JhL135yhehpxWsKR8ZBYYwYzW7FUBQ1WZorKunPSUgXU9lr3D6hJmLLBop333Bc0SI49qr0XM4d+vTPTsjUtbmtAJG063aF6d+A4rORSB6McZqg7ExBw+mPh+LZAliQQ1/AGQmzt87AZ+Hl63ICFZeqPYD0nbdqKZBFDWoqXF/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775616334; c=relaxed/simple;
	bh=LE0j/FMykSG1HE0ZrJ0GIlfMjwdrTNyINS949lg9w0c=;
	h=To:Subject:From:Message-Id:Date; b=euO/zo50YrzxcoGFOqcnwCrPvE6Gyr7nW5CIAJr+6bnJ0W3JHvZatxJVrd1A2TGMyvwAcTybx+VRVlMYWewt6i0mblib5dCFNWB/e1QUypS9GeXE7aUdKb9PInQiA9WIF8mn6u8S1/c/tu4XH1zl0Zzt2zroEWLCnbgAF49ILr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxWY+iDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxWY+iDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 33363C116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775616334;
	bh=LE0j/FMykSG1HE0ZrJ0GIlfMjwdrTNyINS949lg9w0c=;
	h=To:Subject:From:Date:From;
	b=fxWY+iDFGTq7jac2q/oXzKnnwfReNXJNUeJFgI2BRCgV1gukH5D0pZwdNX0uF1Tn9
	 dHHj+MQsrk3qIf02CCrGRyb28sCVa1I0mjcjxSDl7DtRputBZ2g8IU76GsWtI4uAAk
	 9DPKxxh9cOwzaf1/MppvB88k7qwBiSDQWJqUOKPs8dVQdqZIdE3STs9reggGC2akdI
	 lKmgmlU4Pf60LRwupZ8s93xcI7CQl5EHAJthYhpjYuHIDJ9fen5it0mWGcnfwUTTM2
	 iuG5WekZ7Kvy6hubl1ed+Rgsl/Md6pnHUEDFn0BWfoeMfoEG90YMuR73QWHkvkFbBU
	 9z7ZzdjXnedSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6573FF513A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561633387.24650.12946648812744728429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157871a364485428f5276f60ccb4fbe218a310ac186652b22ada1e029efe64b7
Date: Wed, 08 Apr 2026 02:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775616333
