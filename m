Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2265CDF1
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738665355; cv=none; b=PrchP40JeqOgKJ0cQaBPoIrfH3DVtf4kVJJk3s3UvkwhRqDm9594i30OwV/kV4CLNHotDSk3b80Ko3fuhL0rIL7/GJRgPZCweg5/Nt69HcSQL0wWeyoIIzw4vOizkKI+A6P3mxfu4dCcfcoD6VGaZKejnxotj/OAUgW2y7owx6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738665355; c=relaxed/simple;
	bh=J++FhtX6F16dtgnoBNayMKM1+pbDTN4j+OJbpwarfkU=;
	h=To:Subject:From:Message-Id:Date; b=QzB3kFQVSeQzNiV2kC9jL8eXdiyrQ3sBxMeul9e+Syp0IT0+5pic8SiP1lS5UXgVeH/zNJ14Y8/JfuY5JXXAD6mkq8w8G168PriXXdHYtA8CtyW29M496O4KVnp7dSThzeZ0QS2ZFgNEaxikmXnrkarPjsMjUH++0aOYJb3WYPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlMwTiZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlMwTiZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD505C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738665353;
	bh=J++FhtX6F16dtgnoBNayMKM1+pbDTN4j+OJbpwarfkU=;
	h=To:Subject:From:Date:From;
	b=NlMwTiZVS1L0gXAGcWdkYkD+odljVid3WpvHOgrqFZE/EfXfxFOl0Tuf7gv9smzIf
	 zcYpD6Ipdh2oPwIuel080plERjF8o/KyhrF5kHjowgodzVk3OKGQLjxpQJ+eKvIjgQ
	 ee+OsayG9dFUuWJZ64TDhIxixgoIRRS57bpPMtWsvW1w/Al2mh098BcOMbrtAB8f6X
	 0SZWjmRm3fa4YQ+5r4nHETiiZUfh8dJTcWpdpLX2emiADxoCIchAZd6qeQoVJfUv2Q
	 QomJRCKMyaI9mllv/VeO76Kqg/ozoKT/W8yIUaVmquE/r2SPYuyhfpXQtsNC2QAPn6
	 yS8wwCFHVYpoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A8FC02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173866535361.4440.12403204701078689704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe43e9b9ba53cb35e699dab6b4bd4bafe684e03628d7365b87ae7667782107d8
Date: Tue, 04 Feb 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738665353
