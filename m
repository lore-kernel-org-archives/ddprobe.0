Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE67389DED
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772525694; cv=none; b=Ib8GjytyTxoTN6h95zEpup7u5yuVrLw5DGc8B9+h8nhew52qgpnq97sZPhISoJ0h5JuTBT1CzYyvKieEjZy5myRz5eqmDI3GZBYdi93C24MgTMtlDAIKS1g9bR9JzGJHGI/27Q/ABzNWezaSye43Mvsyh89wF4Ul5mHq822FM78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772525694; c=relaxed/simple;
	bh=VqGvSqJJpxrYS8ozQZ6dDKFnOVfwgnrfozdcQFolP5I=;
	h=To:Subject:From:Message-Id:Date; b=HjecLx5ht4l+nAE+rDVsXKV5pNig2+DvQbxiTmSdrq14EUiNY5nDFBr7N6g3FX2m4CRKgS7/Z1j8+XxPDAukDSU1JS6HCpGa94H8J0LufGGKQ0f9IzFXrz5UWdzSVZLWH6PW+P7CejD3bO9oSqDLuvgDYLc2frqwptLdgwOmBKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4PO72k6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4PO72k6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B149AC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772525693;
	bh=VqGvSqJJpxrYS8ozQZ6dDKFnOVfwgnrfozdcQFolP5I=;
	h=To:Subject:From:Date:From;
	b=h4PO72k6wFZMmmf+d89fd3ORQ837X123xXHjuG9Ghg5yB68ZfYshENYCU/dchEaau
	 TSvv6RmHZXowI0nCr9okcw1ZqBUlNuVmeofuDw0AFfYWJ4/ttb98zpnL8a1IQ1YeR/
	 XLwQ+PbtUXpwp3t+WQ5vlViBNhKZQ72/ISSIGc3g0jzU+PWhd2amFtkMdJCURo+qTP
	 kOpvppsMf72cR4Dv1S19O8Z+3MlxXeNCyrvIK/Sp3VW/ajlKa8J7pH+egG7GPDOgdX
	 wgRAJk794rTTrTKCQ1fc0hFuTT2bG6gsWto5schaFbjmiSl9teMXTr7TWxoW9tZfIi
	 bbvEoi+uuofiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD39E67A95
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252569363.14498.7497555999613060511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8201b769596d75385932cc89a9bb1235e809b08d87603e59816ed953774949
Date: Tue, 03 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772525693
