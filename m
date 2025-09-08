Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324B31CA81
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757296794; cv=none; b=aJm4PYVOS2+rDP3jtaJhIuxCEC2q/gf0VJRcAmcTYZAgOJjN+YoFokg7vObHPR5/PoVN1Tm0zWAwgcKh6SSSj/o9QsjVj7vN665EHlshkZXSAh/l4D5EU99PoQ+mNPtyrFjVxFEEe4ofld4ZFmUWxWx7NYidhtzfWTmvcgtpLCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757296794; c=relaxed/simple;
	bh=RZTa1/0gK3ebHvhASSMqlzCHrrqFZ/df61uMpi1dCEo=;
	h=To:Subject:From:Message-Id:Date; b=cQZhE+iqIkIEsKnvUBlt3/6A07TIXQ45JN2rSVirxixVwSaNki2zj/RXqdispSec7wSnSbIJ6wf2OMVj2STvevigr841Aik5m4d5tVvhJtWYqhtvV9yu1fwjmylvT0qHA8i6dBalrLJ8n0i5d9VX9EOuu6jmgH2l1YWdenM+jJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApnpYOg/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApnpYOg/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A9EC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757296793;
	bh=RZTa1/0gK3ebHvhASSMqlzCHrrqFZ/df61uMpi1dCEo=;
	h=To:Subject:From:Date:From;
	b=ApnpYOg/2vX5/0Z8MTtZeS8RR5ZVwcFrsf3AgejSxrX38p7G3bizSUWF6tjXylaI8
	 T8fhWp14uCZwpA9VfUbEBisPSE7km8bzThYhA+xhOs3US8rzBt4BWBeVmujKePH0QL
	 MwgvZEXkBXi7m6pmNZ8pTn8u2dK+o3k9AcvHHJgsZsq5t87AViY4vDfrUl2aQwDHlp
	 2iOPleKbyGNMmzJzXxEGpVtCI5LYWa3yRZPDqWpxR3vLaNyryr9U36xhuXf+M/Oq39
	 ux7bRzMQ6RDNoRTGlTzrmdGoXDrstPkghmpIYRFeFSMO5nF7zcmK3VAN2d1wggmW4M
	 X8kZsmAGdMV8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957F2CA101F
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729679358.6464.10058095010321778693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e64588d4b33547da0ed7f78e7349ae6429eb84b326559a307989af9b8d2dd2
Date: Mon, 08 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757296793
