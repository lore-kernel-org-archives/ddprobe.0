Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440D93126B3
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756918794; cv=none; b=LOO7JXtY27COOmm5eaKt+uDb8Fqs1qrLsFJEcGf/x4jF9R+dGoJh+D3Oi9r91y2TlamCb3dy2AtzFbQ+i/DSyib5IRkH5zgcjI+Z5RFa85ug7kAlP8o6c4YbdRVp4M0guYNwr8GW/6UVHrcIZjoBj8YyRZn61WsMJLYojJudvSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756918794; c=relaxed/simple;
	bh=fQT2N/2qWgSEQebUJNE6H99hiQ95gwmY5CDNvf29820=;
	h=To:Subject:From:Message-Id:Date; b=uwNtYEtEFL2RFTFqRG443uf30SK6/y8p/KT9AeJ+uZoi+fmdONAl0DyGYX5oQOQMvdfMs/2ap4SumLurD523v1MMj/MARm8nfumZLaLH72qJ16peMMdBkddRqjjhR2zxZrLC34Xoi7iK9tUDbIIgWlIIMq4HuHjREoxDPONLDsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/jrhKFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/jrhKFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A093EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756918793;
	bh=fQT2N/2qWgSEQebUJNE6H99hiQ95gwmY5CDNvf29820=;
	h=To:Subject:From:Date:From;
	b=t/jrhKFsp881Dn2fIg0X0ObBAlbv50V1TpN62UZ7Fcq5fz6C5gNQlHJ1NTZCQorMS
	 El5Ui0Nb0WCimSQQsjelMlmLveahUAdhzMst+QPE+yYWK/iTudGF3O7q+aA6Vu3Kxz
	 WnzIcEqRNOdozugX9qzzSHEICFj/+sHWnOECMVOQgvm3/ZIWgBS6ktiDt02lARRhtx
	 M/zBIc5Xc0nJVKb35LaCHqAnuS/zJpffPgOmV+gc1N8HCLDrGJPgCwSxFi+VjsOCBK
	 +w9LM+6M0hdA0hYQ913U8lAFLvlVSIVJSdEMHygWgj6q14FujOyXVnlgvDtlVDckNX
	 Py+W23JORlOaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F54BCA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691879357.16406.2150763467499326050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c086642ef1904ed3fcf4d0569a62ac65681e37398cdbe530eaa018e89d0c5d8
Date: Wed, 03 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756918793
