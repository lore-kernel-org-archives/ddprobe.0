Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525EB2D7BF
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735634154; cv=none; b=JE3D2Csfbhp0zgVNF0iqfqdukDHRwnzpGUV9Cu6m44WAj65KVYPRAHuwjjciuDkzheGt8jJkdEMeHMb+Fhx13phqtkpj8tNLwngOH2sPe+OkanqeNKkB0D2zcQQKjlfacvvA3cQfy1wnYjRcZqOP3e6I2Vu8vuP+qjnqJAL1Xrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735634154; c=relaxed/simple;
	bh=5VB+VozY6N/92w1Z2CSTNJtteNF+20q473gRgABysyc=;
	h=To:Subject:From:Message-Id:Date; b=fCD49uK3Bu87szK+F/2p3s/yjB0AcmowhE+P94528+YulkHMURnKrxm9aJInyiydw2bAC4mGMxPkTy69kyFfCqZzQX+3PqUq3uw12GOSizOKXturgfLO1cB1DkRB9mHV1npFKMg7n64h07dTBfvHZeUZq55UcGfjdR9mPfDbfpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtmMLjfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtmMLjfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8F9C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735634153;
	bh=5VB+VozY6N/92w1Z2CSTNJtteNF+20q473gRgABysyc=;
	h=To:Subject:From:Date:From;
	b=dtmMLjfzYKy0Kk+9GiUeaIcg1JeEcAFMksZXgV05ke8RLGl0KQbZxxAvA+eFyhkxd
	 wDb//jju/h45HvwyTVyIrTM/W3Xlsbf5QTRqZ3fmlPXgbGyongW14r87CIQIfLe9no
	 ii6x3x942wm4jDXEicgBxDfmI8zItnAcMAUxsdhyu2wqqHJFzvHHtJbFbwCQI0/UXd
	 dznR7I5DEbqYqoXCe0gdADJodvBvu5vo/Qv3NmOdMZxNzxTyhXoOnYZmzX8polWysc
	 pm1RuqAWNBvOfqACzz/yDpmLD0GiG8yqbVth3JAxljXqKa3Yki2lybaWQtlDwsdqZx
	 qe6lhnLVc+09Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A431E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173563415359.11733.8228236013163649142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a46d8a2d6ded4003f48aa708f69ef6a675fbca1c4115e445bf2efcf0426034
Date: Tue, 31 Dec 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735634153
