Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2679B60B8A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758408594; cv=none; b=sCOOJYIBbja9pohDAmTvnUJKN0SZilvZ+F14Ylo7sFozQydodFTx4Q5mdFFl15X7fq0GzEjoVC+gLBMizKTghAlSgTVBKt3TK2g1N6geXkVxSbkl51N5xw4jb456J3+s3fIVMHZRSV+Z/uHcfuIyuPvHVuG3qAj0tYfPWkTHkJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758408594; c=relaxed/simple;
	bh=dM9pTQzMS9jpaH2M7hu10cnk1FT3YNV0MT46iw0j4m8=;
	h=To:Subject:From:Message-Id:Date; b=cI7kTyx6iq5Nz39Q70vyzwsHItuGdkefVkOmfzo9KaUaJiodo6gHNEnbvMApF377lrqWIjZjY4TA61p2Y1PHWS0abc9SKawPQiIN6O3Cv5pDQoVn13y3FXTyDPM/LUHfXSvTCRUsbqLS5mWGfIAjObFKlR90j+UttkMXTmiuGmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ui7ACxBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ui7ACxBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6416C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758408593;
	bh=dM9pTQzMS9jpaH2M7hu10cnk1FT3YNV0MT46iw0j4m8=;
	h=To:Subject:From:Date:From;
	b=Ui7ACxBjyITu+LPCsUeEzaV7nY9Up+mv/OnvUsjiF3uysJPt0PEAAMAbNWTkkeTGq
	 LU6aPoO5OftfxNLmzywJ4IhN1X9KsmfE+5G0LSpHu7KcWNbMK4iRb19qjcvwRhHe6l
	 r0ggmbh9xb8KVOtKD+ADy60MJ3ciiiJ4NUcmnaLjezjKGwSIxByRGiM8/ly9GDaPJX
	 LG5RaTPWqCvlP8lL9YVau43dnC1CjEMs0tRLI4/0dv5a4g1oA4HucBS0OKAxYK0wQu
	 otwXKZUQjRVnacrQ945lP1F7toSh5GeSC7OdQiXv67TBVX7SxaWy2N4Ngm8JqRCBIj
	 iJZpat+ABk+wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9116ECAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840859357.28627.1669467559111845614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23c3e08c520c0572926f36c690da916adbc366c3e4cc898dc393774cdb1cb506
Date: Sat, 20 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758408593
