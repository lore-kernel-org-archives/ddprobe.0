Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1972C352C4E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774604694; cv=none; b=Z9PBnx76gGTL4ak6ZbJcpKYZ9rfP+Qx386AiwkJB6FUtKoRcobr76MCtbHJAfqmnMXxTahJMbnUWyGK8meoxkZCWr0nzgfqi8HmqaqcUnnh4JUizGTWFEM1Fr19bt4wWr711OPyGTRFEfQB62Qt+cEPM4FNHEoZ/0KAlhFt2oP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774604694; c=relaxed/simple;
	bh=HEDxT6E5k32k9Kbe9lja4VcpgLMwKENLJytHJlKxJjE=;
	h=To:Subject:From:Message-Id:Date; b=Ow6bSqSgLmjQee8UTGE0n3ZEmr1oU4QnLbkvbER4t0dWE/rojgjx4pJ9Mpdb26G/4rIR9701q+lxPaiOjlVZUhy/0mnlcBYGN8iwHcX6I1vTqcr5EWOtPBaIAN1oeiY1q2t1IsxIkOE5xzcqtKqdgk2v5PUL6JzlOLUxoG5vW2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/nn4pvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/nn4pvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7D1C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774604693;
	bh=HEDxT6E5k32k9Kbe9lja4VcpgLMwKENLJytHJlKxJjE=;
	h=To:Subject:From:Date:From;
	b=h/nn4pvM7lS+XIdYInN9TkyWOfXtBjvyzKsuykbTk9ip+SyOl2KACTaZ7zoSoQovS
	 md4qVN3J54GX5KsZr6i1o4W4otCRsvK2+Hq6ovOlQMEFSsGgwK+in5wRpvESG1gnsu
	 gmaOlhGE3/1mq5SnyCMFV3SEXHLAzQTTzBQuiVBpZD1+b6TyL3NDtq2/Y11YvEMnxz
	 T+iUkDyKu27WjnF4ePTSU+48MBCI0hB0kBTmy04tPn/Uf1W36VtCm00jXOknaMPLZ5
	 WwlcDKkd9V71FLz28UEZOREwbBp8kWrRoVnXEpifUFj9sUO2DNQcdvuKR4Fb0+rjjK
	 FeYON+jAdDRMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9170010ED641
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177460469358.17648.15276470222100195947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34471d5a893ad7699945ef3f72146f46b7e5f06d938d1c7b6c61bc3d0e8b44ad
Date: Fri, 27 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774604693
