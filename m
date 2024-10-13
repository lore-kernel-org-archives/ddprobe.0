Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E66012C54D
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728813354; cv=none; b=VI4xFYcL7uUy8f+7ksVnyzgN8MbOf4U/I7rn4VFs9PKhBtMWViqX8dNy1t7giJIKRVnNStgcjSHOIB24mgOacJTrJPyMCNhlQrjRH71Qe8pGUAqB8nh/dKkzlTIivpcAst+GUX5J/o6wpItsIfIbU/ooHFvtqPjMFH7blHnfT8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728813354; c=relaxed/simple;
	bh=qk8k+D5xT5s2789u3gyvN8A78Cm8jDi7WKg7EmKOWts=;
	h=To:Subject:From:Message-Id:Date; b=urAtoFykthx+2F+zZiQTrz+kRmFA/QwunQi8h94Kz3XTHhbtswVjM+P/S/7MmVqn3bSWeabNpq5GnFCBRDI92nuxl6xJMF78+hu52jLCQIElxmjILBdDaR/AfmFhuXlRC56a+wwznce/55Ij/YregKZGD6pYFinfPisuUilvFx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWqvGri9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWqvGri9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF794C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728813353;
	bh=qk8k+D5xT5s2789u3gyvN8A78Cm8jDi7WKg7EmKOWts=;
	h=To:Subject:From:Date:From;
	b=TWqvGri9mgju6HK1ySWj51O5rot22rFwFInUK+BkFOWEJM1H8nU7XPbZqJc38a7Ex
	 g8KjPyWmI+Fk7c0A1pl/f/Rlumz1FFb8PdqiLUR141FF0cYJsKRtxk9O9jzDMkQQiA
	 tStUUwk+1J++LU0kBTVbs8x9md30HHfolvcBAR/h4C9kIofI/hoATJ+iJBcmXSnIZL
	 YzEosNUAgdpHdiYrOB99p1xpuDiL2SOQr/76ko0p1/Hzcg6hvJIq0/jzmnTAoZaODz
	 FIcAwmQSOurYtNEC/E11Ewrqp/XBogqVe41Q6q6uWJiO5ntZZMGkjiHRFo5qKwZTt/
	 9f7vQvpay3QzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FCECF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172881335358.2956.16168124695142891610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b914452fa1e0cadf3c51ba19dc46e1caebd3fa2735b773869ad2502480e711
Date: Sun, 13 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728813353
