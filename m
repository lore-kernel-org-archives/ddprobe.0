Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29758A47
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722917754; cv=none; b=IGyMIIsA6PSLwF3Fc3Dvn96PkeZG6S8rijGKmjPq7KjeSua5qwuAPAaW4OMG24xNKNFfsNfA3E4DF6g7LbP+DzPkLMrOcBJYFvwOdIk4rHwGzIKn8Q18lKR/JP1bDZQdb5PS5nQM7TKsLVbwAWg/ttkMbiZGml3svyUBh5Jqfvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722917754; c=relaxed/simple;
	bh=38mlyVex3qDKzTxDdLtkoUPtOyRP3pkXkmAjre1qj/E=;
	h=To:Subject:From:Message-Id:Date; b=Lw1s8IPiVRV222gopSNKsCTnPKWO7EwnXFzCA+V1mlRLp9j3nyT7DYgo5gNgmZoAVzRZHw2WTwRN3EWTQ768OGW0TWHQL28c1sDTNW4b9SdQxg5pfeCmUnppkrnsWFciPzq78yBalfSQpbBH8ZKChFwWUo8N9FVjj7ynvNnbdRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kksu6MlG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kksu6MlG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC9CC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722917753;
	bh=38mlyVex3qDKzTxDdLtkoUPtOyRP3pkXkmAjre1qj/E=;
	h=To:Subject:From:Date:From;
	b=kksu6MlGkb4XSG/rtpQTmpEVj9G+aMG/wAG0QVSSqHNScOUh1/HTeJrzIjJT+WK/9
	 J47OO/5SxjVhlP98LtMQ3bvjBWPRD3KzSJcyLUuY4+JO97Pynx2fau0IxwxTtOy9Fw
	 pyB5wfeoQB0z+6YT5WfqKVl0hJYLV0TZ68NmL5AlEzR5VcyO7QcHuub3M/eKYxWVEf
	 zKHS3M0K/883T6ptc5hfCknfxLEztDJt1MJ9U40w+IPfwviwSMvpqAdrP0znTpBATu
	 H+PMPUm8ESBvsPni/7qfWcAolMUjxl+snz3JC4vTZqWEM0CnYMLGXLdxK7DVvBU+b1
	 F/ssM2icMxXcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F88AC3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172291775362.17694.9442227694178469761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f05f2f1bf2f0110579d1ef6c54bb0ff61d00b17b9a0dda46354df133e18c0d
Date: Tue, 06 Aug 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722917753
