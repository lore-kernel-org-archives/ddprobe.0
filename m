Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4185A625
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777800454; cv=none; b=JhYJGTLPCnfCMofcGt1ctu6YkVQBrj4HQENrh2Gc3TqvxcqdDfNnV81zRAmG5+WJnwgx5j2Xae4LisJyUIpEj5WfYjXJAydoP0bBxQxOceGF69sf0MalCa64GXYto4wMIw9MsMcqFrjbDY/31hmC61d7ZhuVXv3JsL7E3kLTyaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777800454; c=relaxed/simple;
	bh=WWkwH25ijxCGhZj8+27aqqcUEGoWFcRIF+bY/whs8S0=;
	h=To:Subject:From:Message-Id:Date; b=oAcJyqiyUCRVkfJtZAsRHapywXUlGHgJJ0uwJCV2DZY3fi6b+JhiN+03SvGegp6e/hzYBOHUid2TADArfzczwTqQeJ/ng8CeZczLjOT2jKe98fYb6fot0kPpW5lH8qW5iRw7TBAENMnX4xLdHHNH9KKnoVPo5u8RCJJ5tQaTfOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjCFTyU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjCFTyU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED1EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777800453;
	bh=WWkwH25ijxCGhZj8+27aqqcUEGoWFcRIF+bY/whs8S0=;
	h=To:Subject:From:Date:From;
	b=TjCFTyU6xFA7qCra/+C6q7AdqwT2KRcGOjRkoEvw10em+sWHWYuhnfNVvy0k0KOBj
	 5UKbZ4tCVlUurB54HvCKmx1FgdWCy8iA4Czbg+UCHIJtkuKzId3qiCiElvA/fyCOj9
	 id4DcuLsZtQDRsANkl55tLi/dQg69m/A5ue5WkKto8Avbq3rgXfURXOY1ZOlDSzVsj
	 vFUKyOR4VA7Hhl0N+jrrNJX+9/RjPhDeTVRqXf0pI1hNO73iGVSKf9t42p5r1b9y56
	 h85lKiuDtrGNtPbUaiQ6AwINZ+PM6UsuT2R5sEAN8Rbgalnwt7YSJeR2rnzRqF9Zi9
	 6CYHmtv7wbByg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07B0FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177780045369.24747.18173749282662517200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de12a86f6385562f0ba0ba4499a88efe9edf928e298ed28e930ea35dba527367
Date: Sun, 03 May 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777800453
