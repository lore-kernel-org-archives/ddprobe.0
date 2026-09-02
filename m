Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5657F3ED5AC
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788338434; cv=none; b=ozxBlz+mN5oAisfGWHh4WnrewW7AvIhoIIWektPSdxkS5HmT3DUG1JcCudqrJqasiLmhiCh4t+zJdi59Dgf8phGZfJV51CNOoVfOUJFArJ+v4SWNoJ1B6qSh3dtflGUu/6ck9hsTFq9KS+VUNFiB7E6QSJXWf0vNTaZhGS4uFJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788338434; c=relaxed/simple;
	bh=r4QRqyC7Vr0fIliEbwbhv6jlX/U1mIv2weSMekRr5JM=;
	h=To:Subject:From:Message-Id:Date; b=VE4PtIYR4grWXtmHq36Cr6UTHNQJBH1U1Z9TUBWxhxjzhG6WDF7u2hY80uei7SNOK0kgLFoeAi5T+C38UEoc8Mqyo1jGh/3zJ578SwFv6aEyVHv8h3EYTKKCQoCSNoTnthD4/n1qGUcWB/uDUG272HzSV65thLSpY3vD1VpHdDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jauuI74p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jauuI74p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDECC2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788338433;
	bh=r4QRqyC7Vr0fIliEbwbhv6jlX/U1mIv2weSMekRr5JM=;
	h=To:Subject:From:Date:From;
	b=jauuI74pqACXHJ1ozS6KL7L6gRpru01V7Wdw5Du4iSZw2XYU++HkUTGmTiygWbo32
	 vs1aeRsMPRYKFfEp8tcFc/V4pBcmWGb77ffRCee6PE/GSdkXol95fuDL44mpktj8Yl
	 zPBSmZXZKSVPmvNMen87bXolJdBOTLbEx9O6N/jSQlGHFM3QFGmknmW5tPFmaXdkJn
	 3qoxSx0pQDS1iB6GXHoTUb6QOm/VEMaRMZrgbiJWmsz7MDPTTxF9jjjBm/9pRuwkZI
	 H+lUitYWC/eWgJ9NK2TdLbAZwwzqxLypY5MqAA2xCL/+xPckhw8adszTAygE/Xo6sw
	 f19J0/JeqW7sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DE8C624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833843368.8072.3038478455691877098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241c296582a14cbfdb77de88d2af1bd3ba133f10ad3e44b6426aa0d3c9a63428
Date: Wed, 02 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788338433
