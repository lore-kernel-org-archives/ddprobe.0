Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B881EF1A
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 21:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713217763; cv=none; b=Sh25NLJZ/M63kFnXAa3CvIFOgKOAN3na0F4lHY1YEc3deoOr5wU1WaX+WVWM9e1uaZ2Vac+gD8LqeuKuE2F9p6P3m60mX0wucbiTS/g0ShuIZ4hLxjwnoed3+UWQqaiD3/OgoDXvzzui/V5oDUNjAfU9vzx0kXWcK7Lw2fO+YoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713217763; c=relaxed/simple;
	bh=N6eS3K6C66mamugiqWW9j2t08fon0+TfXMsIzZ/OADA=;
	h=To:Subject:From:Message-Id:Date; b=m/msdbAPrgB+87DzG1DjNNRCv3CXnWtLoPn0H+Riu9M4HUWhyblF4jScEFOHJk3hHZJu8Uaa/ogYptY0xXRFVrXVdcVEzChlrOITL/JP0QQFrYjs+nIiwOc+eL6/aidaSRPxgl304lMGMEpYODYN0EFyIXAdNxlwEThzUX6RA2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfOHPCh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfOHPCh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DB1C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 21:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713217762;
	bh=N6eS3K6C66mamugiqWW9j2t08fon0+TfXMsIzZ/OADA=;
	h=To:Subject:From:Date:From;
	b=TfOHPCh37xcW51eY24LFN1SzAdd77j2CDzhxNqaWtFDvHDC8lVa8uJKeKauuDq70S
	 eDZA0P0iArgodA/izABRX41c4SUaDUIZiSdGqplnQh32soH4pN5OcDqbx19KP/I0sw
	 DI9/ReR8DiRwb2/89W0h619tvm0dNzhyOtLGBPawU4B5p7KuJvWeitE9Z0cf8BSbFy
	 cs3iunr7LraV8PHqWKsjQuzExcLdTgc+9pJhiH6+ygIY8GzOxiq4cmYaPHgxspX4p7
	 Al775VGmRtY7Jh8TtDdG8xd956nf7qd2yB9cil87LdGAeEQDCf6MXeapzjIGS9935/
	 KW4Dcu+GpnPIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAEAC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 21:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171321776276.30331.16921046137733539732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d320f23e4b956d126077f8a9f33f8f462740e51e97d451239dc6f22db3999b50
Date: Mon, 15 Apr 2024 21:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713217762
